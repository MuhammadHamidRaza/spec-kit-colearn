#!/usr/bin/env pwsh
# Update agent context files with information from plan.md
#
# This script maintains AI agent context files by parsing feature specifications
# and updating agent-specific configuration files with project information.
#
# MAIN FUNCTIONS:
# 1. Environment Validation
#    - Verifies git repository structure and branch information
#    - Checks for required plan.md files and templates
#    - Validates file permissions and accessibility
#
# 2. Plan Data Extraction
#    - Parses plan.md files to extract project metadata
#    - Identifies language/version, frameworks, databases, and project types
#    - Handles missing or incomplete specification data gracefully
#
# 3. Agent File Management
#    - Creates new agent context files from templates when needed
#    - Updates existing agent files with new project information
#    - Preserves manual additions and custom configurations
#    - Supports multiple AI agent formats and directory structures
#
# 4. Content Generation
#    - Generates language-specific build/test commands
#    - Creates appropriate project directory structures
#    - Updates technology stacks and recent changes sections
#    - Maintains consistent formatting and timestamps
#
# 5. Multi-Agent Support
#    - Handles agent-specific file paths and naming conventions
#    - Supports: Claude, Gemini, Copilot, Cursor, Qwen, opencode, Codex, Windsurf, Kilo Code, Auggie CLI, Roo Code, CodeBuddy CLI, Qoder CLI, Amp, SHAI, or Amazon Q Developer CLI
#    - Can update single agents or all existing agent files
#    - Creates default Claude file if no agent files exist
#
# Usage: ./update-agent-context.ps1 [-AgentType <agent_type>]
# Agent types: claude|gemini|copilot|cursor-agent|qwen|opencode|codex|windsurf|kilocode|auggie|roo|codebuddy|shai|q|bob|qoder
# Leave empty to update all existing agent files

[CmdletBinding()]
param(
    [string]$AgentType = "",
    [switch]$Help
)

$ErrorActionPreference = 'Stop'

# Show help if requested
if ($Help) {
    Write-Output "Usage: ./update-agent-context.ps1 [-AgentType <agent_type>] [-Help]"
    Write-Output ""
    Write-Output "Agent types: claude|gemini|copilot|cursor-agent|qwen|opencode|codex|windsurf|kilocode|auggie|roo|codebuddy|shai|q|bob|qoder"
    Write-Output "Leave empty to update all existing agent files"
    exit 0
}

# Load common functions
. "$PSScriptRoot/common.ps1"

# Get all paths and variables from common functions
$paths = Get-FeaturePathsEnv

#==============================================================================
# Configuration and Global Variables
#==============================================================================

# Agent-specific file paths
$agentFiles = @{
    'claude'       = @{ path = "CLAUDE.md"; name = "Claude Code" }
    'gemini'       = @{ path = "GEMINI.md"; name = "Gemini CLI" }
    'copilot'      = @{ path = ".github/agents/copilot-instructions.md"; name = "GitHub Copilot" }
    'cursor-agent' = @{ path = ".cursor/rules/specify-rules.mdc"; name = "Cursor IDE" }
    'qwen'         = @{ path = "QWEN.md"; name = "Qwen Code" }
    'opencode'     = @{ path = "AGENTS.md"; name = "opencode" }
    'codex'        = @{ path = "AGENTS.md"; name = "Codex CLI" }
    'windsurf'     = @{ path = ".windsurf/rules/specify-rules.md"; name = "Windsurf" }
    'kilocode'     = @{ path = ".kilocode/rules/specify-rules.md"; name = "Kilo Code" }
    'auggie'       = @{ path = ".augment/rules/specify-rules.md"; name = "Auggie CLI" }
    'roo'          = @{ path = ".roo/rules/specify-rules.md"; name = "Roo Code" }
    'codebuddy'    = @{ path = "CODEBUDDY.md"; name = "CodeBuddy CLI" }
    'qoder'        = @{ path = "QODER.md"; name = "Qoder CLI" }
    'amp'          = @{ path = "AGENTS.md"; name = "Amp" }
    'shai'         = @{ path = "SHAI.md"; name = "SHAI" }
    'q'            = @{ path = "AGENTS.md"; name = "Amazon Q Developer CLI" }
    'bob'          = @{ path = "AGENTS.md"; name = "IBM Bob" }
}

# Template file (check both possible locations)
$templatePath1 = Join-Path $paths.REPO_ROOT ".specify/templates/agent-file-template.md"
$templatePath2 = Join-Path $paths.REPO_ROOT "templates/agent-file-template.md"

if (Test-Path $templatePath1) {
    $templateFile = $templatePath1
} elseif (Test-Path $templatePath2) {
    $templateFile = $templatePath2
} else {
    $templateFile = ""
}

#==============================================================================
# Utility Functions
#==============================================================================

function Write-LogInfo {
    param([string]$Message)
    Write-Output "INFO: $Message"
}

function Write-LogSuccess {
    param([string]$Message)
    Write-Output "✓ $Message"
}

function Write-LogError {
    param([string]$Message)
    Write-Error $Message -ErrorAction Continue
}

function Write-LogWarning {
    param([string]$Message)
    Write-Warning $Message
}

#==============================================================================
# Validation Functions
#==============================================================================

function Test-Environment {
    # Check if we have a current branch/feature (git or non-git)
    if ([string]::IsNullOrWhiteSpace($paths.CURRENT_BRANCH)) {
        Write-LogError "Unable to determine current feature"
        if ($paths.HAS_GIT) {
            Write-LogInfo "Make sure you're on a feature branch"
        } else {
            Write-LogInfo "Set SPECIFY_FEATURE environment variable or create a feature first"
        }
        exit 1
    }

    # Check if plan.md exists
    if (-not (Test-Path $paths.IMPL_PLAN)) {
        Write-LogError "No plan.md found at $($paths.IMPL_PLAN)"
        Write-LogInfo "Make sure you're working on a feature with a corresponding spec directory"
        if (-not $paths.HAS_GIT) {
            Write-LogInfo "Use: `$env:SPECIFY_FEATURE='your-feature-name' or create a new feature first"
        }
        exit 1
    }

    # Check if template exists (needed for new files)
    if ([string]::IsNullOrWhiteSpace($templateFile)) {
        Write-LogWarning "Template file not found at .specify/templates/ or templates/"
        Write-LogWarning "Creating new agent files will fail"
    } else {
        Write-LogInfo "Using template: $templateFile"
    }
}

#==============================================================================
# Plan Parsing Functions
#==============================================================================

function Extract-PlanField {
    param(
        [string]$FieldPattern,
        [string]$PlanFile
    )

    try {
        $content = Get-Content -Path $PlanFile -Raw
        $pattern = "^\*\*${FieldPattern}\*\*: (.+)$"
        
        if ($content -match $pattern) {
            $value = $matches[1].Trim()
            # Filter out NEEDS CLARIFICATION and N/A
            if ($value -ne "NEEDS CLARIFICATION" -and $value -ne "N/A") {
                return $value
            }
        }
    } catch {
        # Field not found, return empty
    }
    
    return ""
}

function Parse-PlanData {
    param([string]$PlanFile)

    if (-not (Test-Path $PlanFile)) {
        Write-LogError "Plan file not found: $PlanFile"
        return $null
    }

    Write-LogInfo "Parsing plan data from $PlanFile"

    $planData = @{
        Lang = Extract-PlanField -FieldPattern "Language/Version" -PlanFile $PlanFile
        Framework = Extract-PlanField -FieldPattern "Primary Dependencies" -PlanFile $PlanFile
        DB = Extract-PlanField -FieldPattern "Storage" -PlanFile $PlanFile
        ProjectType = Extract-PlanField -FieldPattern "Project Type" -PlanFile $PlanFile
    }

    # Log what we found
    if ($planData.Lang) { Write-LogInfo "Found language: $($planData.Lang)" }
    else { Write-LogWarning "No language information found in plan" }

    if ($planData.Framework) { Write-LogInfo "Found framework: $($planData.Framework)" }
    
    if ($planData.DB) { Write-LogInfo "Found database: $($planData.DB)" }
    
    if ($planData.ProjectType) { Write-LogInfo "Found project type: $($planData.ProjectType)" }

    return $planData
}

function Format-TechnologyStack {
    param(
        [string]$Lang,
        [string]$Framework
    )

    $parts = @()
    
    if ($Lang -and $Lang -ne "NEEDS CLARIFICATION") {
        $parts += $Lang
    }
    
    if ($Framework -and $Framework -ne "NEEDS CLARIFICATION" -and $Framework -ne "N/A") {
        $parts += $Framework
    }

    if ($parts.Count -eq 0) {
        return ""
    } elseif ($parts.Count -eq 1) {
        return $parts[0]
    } else {
        return ($parts -join " + ")
    }
}

#==============================================================================
# Template and Content Generation Functions
#==============================================================================

function Get-ProjectStructure {
    param([string]$ProjectType)

    if ($ProjectType -match "web") {
        return "backend/`nfrontend/`ntests/"
    } else {
        return "src/`ntests/"
    }
}

function Get-CommandsForLanguage {
    param([string]$Lang)

    if ($Lang -match "Python") {
        return "cd src && pytest && ruff check ."
    } elseif ($Lang -match "Rust") {
        return "cargo test && cargo clippy"
    } elseif ($Lang -match "JavaScript" -or $Lang -match "TypeScript") {
        return "npm test && npm run lint"
    } else {
        return "# Add commands for $Lang"
    }
}

function Get-LanguageConventions {
    param([string]$Lang)
    return "$Lang`: Follow standard conventions"
}

#==============================================================================
# Agent File Management Functions
#==============================================================================

function Update-ExistingAgentFile {
    param(
        [string]$TargetFile,
        [string]$CurrentDate,
        [hashtable]$PlanData
    )

    Write-LogInfo "Updating existing agent context file..."

    $content = Get-Content -Path $TargetFile -Raw
    $techStack = Format-TechnologyStack -Lang $PlanData.Lang -Framework $PlanData.Framework
    
    # Check if sections exist
    $hasActiveTechnologies = $content -match "^## Active Technologies"
    $hasRecentChanges = $content -match "^## Recent Changes"

    # Update timestamp if exists
    if ($content -match "(\*\*Last updated\*\*:.*)(\d{4}-\d{2}-\d{2})") {
        $content = $content -replace '\d{4}-\d{2}-\d{2}', $CurrentDate
    }

    # Add technology if not already present
    if ($techStack -and $content -notmatch [regex]::Escape($techStack)) {
        $newTechEntry = "- $techStack ($($paths.CURRENT_BRANCH))"
        
        if ($hasActiveTechnologies) {
            # Add after ## Active Technologies heading
            $content = $content -replace '(## Active Technologies\r?\n)', "`$1$newTechEntry`n"
        } else {
            # Add new section at end
            $content += "`n## Active Technologies`n$newTechEntry"
        }
    }

    # Add database if not already present
    if ($PlanData.DB -and $content -notmatch [regex]::Escape($PlanData.DB)) {
        $newDbEntry = "- $($PlanData.DB) ($($paths.CURRENT_BRANCH))"
        
        if ($hasActiveTechnologies) {
            $content = $content -replace '(## Active Technologies\r?\n)', "`$1$newDbEntry`n"
        } else {
            $content += "`n## Active Technologies`n$newDbEntry"
        }
    }

    # Add recent change entry
    if ($techStack) {
        $changeEntry = "- $($paths.CURRENT_BRANCH): Added $techStack"
    } elseif ($PlanData.DB) {
        $changeEntry = "- $($paths.CURRENT_BRANCH): Added $($PlanData.DB)"
    } else {
        $changeEntry = ""
    }

    if ($changeEntry) {
        if ($hasRecentChanges) {
            # Add after ## Recent Changes heading
            $content = $content -replace '(## Recent Changes\r?\n)', "`$1$changeEntry`n"
        } else {
            $content += "`n## Recent Changes`n$changeEntry"
        }
    }

    # Write back to file
    $content | Out-File -FilePath $TargetFile -Encoding UTF8
}

function Create-NewAgentFile {
    param(
        [string]$TargetFile,
        [hashtable]$PlanData,
        [string]$ProjectName,
        [string]$CurrentDate
    )

    Write-LogInfo "Creating new agent context file from template..."

    if ([string]::IsNullOrWhiteSpace($templateFile)) {
        Write-LogError "Template file not found at .specify/templates/ or templates/"
        return $false
    }

    # Read template
    $content = Get-Content -Path $templateFile -Raw

    # Prepare replacement values
    $techStack = Format-TechnologyStack -Lang $PlanData.Lang -Framework $PlanData.Framework
    $projectStructure = Get-ProjectStructure -ProjectType $PlanData.ProjectType
    $commands = Get-CommandsForLanguage -Lang $PlanData.Lang
    $conventions = Get-LanguageConventions -Lang $PlanData.Lang

    # Build tech stack string
    if ($PlanData.Lang -and $PlanData.Framework) {
        $techStackEntry = "- $($PlanData.Lang) + $($PlanData.Framework) ($($paths.CURRENT_BRANCH))"
        $recentChange = "- $($paths.CURRENT_BRANCH): Added $($PlanData.Lang) + $($PlanData.Framework)"
    } elseif ($PlanData.Lang) {
        $techStackEntry = "- $($PlanData.Lang) ($($paths.CURRENT_BRANCH))"
        $recentChange = "- $($paths.CURRENT_BRANCH): Added $($PlanData.Lang)"
    } elseif ($PlanData.Framework) {
        $techStackEntry = "- $($PlanData.Framework) ($($paths.CURRENT_BRANCH))"
        $recentChange = "- $($paths.CURRENT_BRANCH): Added $($PlanData.Framework)"
    } else {
        $techStackEntry = "- ($($paths.CURRENT_BRANCH))"
        $recentChange = "- $($paths.CURRENT_BRANCH): Added"
    }

    # Perform substitutions
    $replacements = @{
        '\[PROJECT NAME\]' = $ProjectName
        '\[DATE\]' = $CurrentDate
        '\[EXTRACTED FROM ALL PLAN\.MD FILES\]' = $techStackEntry
        '\[ACTUAL STRUCTURE FROM PLANS\]' = $projectStructure
        '\[ONLY COMMANDS FOR ACTIVE TECHNOLOGIES\]' = $commands
        '\[LANGUAGE-SPECIFIC, ONLY FOR LANGUAGES IN USE\]' = $conventions
        '\[LAST 3 FEATURES AND WHAT THEY ADDED\]' = $recentChange
    }

    foreach ($pattern in $replacements.Keys) {
        $content = $content -replace $pattern, $replacements[$pattern]
    }

    # Write to target file
    $content | Out-File -FilePath $TargetFile -Encoding UTF8
    
    return $true
}

function Update-AgentFile {
    param(
        [string]$TargetFile,
        [string]$AgentName,
        [hashtable]$PlanData
    )

    if ([string]::IsNullOrWhiteSpace($TargetFile) -or [string]::IsNullOrWhiteSpace($AgentName)) {
        Write-LogError "Update-AgentFile requires targetFile and agentName parameters"
        return $false
    }

    Write-LogInfo "Updating $agentName context file: $TargetFile"

    $projectName = Split-Path $paths.REPO_ROOT -Leaf
    $currentDate = Get-Date -Format "yyyy-MM-dd"

    # Create directory if it doesn't exist
    $targetDir = Split-Path $TargetFile -Parent
    if (-not (Test-Path $targetDir)) {
        New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
    }

    if (-not (Test-Path $TargetFile)) {
        # Create new file from template
        if (Create-NewAgentFile -TargetFile $TargetFile -PlanData $PlanData -ProjectName $projectName -CurrentDate $currentDate) {
            Write-LogSuccess "Created new $agentName context file"
            return $true
        } else {
            Write-LogError "Failed to create new agent file"
            return $false
        }
    } else {
        # Update existing file
        Update-ExistingAgentFile -TargetFile $TargetFile -CurrentDate $currentDate -PlanData $PlanData
        Write-LogSuccess "Updated existing $agentName context file"
        return $true
    }
}

#==============================================================================
# Agent Selection and Processing
#==============================================================================

function Update-SpecificAgent {
    param([hashtable]$PlanData)

    if (-not $agentFiles.ContainsKey($AgentType)) {
        Write-LogError "Unknown agent type '$AgentType'"
        Write-LogError "Expected: $($agentFiles.Keys -join '|')"
        exit 1
    }

    $agentInfo = $agentFiles[$AgentType]
    $targetFile = Join-Path $paths.REPO_ROOT $agentInfo.path
    
    return Update-AgentFile -TargetFile $targetFile -AgentName $agentInfo.name -PlanData $PlanData
}

function Update-AllExistingAgents {
    param([hashtable]$PlanData)

    $foundAgent = $false

    foreach ($agentKey in $agentFiles.Keys) {
        $agentInfo = $agentFiles[$agentKey]
        $targetFile = Join-Path $paths.REPO_ROOT $agentInfo.path

        if (Test-Path $targetFile) {
            Update-AgentFile -TargetFile $targetFile -AgentName $agentInfo.name -PlanData $PlanData
            $foundAgent = $true
        }
    }

    # If no agent files exist, create a default Claude file
    if (-not $foundAgent) {
        Write-LogInfo "No existing agent files found, creating default Claude file..."
        $claudeInfo = $agentFiles['claude']
        $targetFile = Join-Path $paths.REPO_ROOT $claudeInfo.path
        Update-AgentFile -TargetFile $targetFile -AgentName $claudeInfo.name -PlanData $PlanData
    }
}

function Print-Summary {
    param([hashtable]$PlanData)

    Write-Output ""
    Write-LogInfo "Summary of changes:"

    if ($PlanData.Lang) {
        Write-Output "  - Added language: $($PlanData.Lang)"
    }

    if ($PlanData.Framework) {
        Write-Output "  - Added framework: $($PlanData.Framework)"
    }

    if ($PlanData.DB) {
        Write-Output "  - Added database: $($PlanData.DB)"
    }

    Write-Output ""
    Write-LogInfo "Usage: ./update-agent-context.ps1 [-AgentType $($agentFiles.Keys -join '|')]"
}

#==============================================================================
# Main Execution
#==============================================================================

function Main {
    # Validate environment before proceeding
    Test-Environment

    Write-LogInfo "=== Updating agent context files for feature $($paths.CURRENT_BRANCH) ==="

    # Parse the plan file to extract project information
    $planData = Parse-PlanData -PlanFile $paths.IMPL_PLAN
    
    if (-not $planData) {
        Write-LogError "Failed to parse plan data"
        exit 1
    }

    # Process based on agent type argument
    $success = $true

    if ([string]::IsNullOrWhiteSpace($AgentType)) {
        # No specific agent provided - update all existing agent files
        Write-LogInfo "No agent specified, updating all existing agent files..."
        $success = Update-AllExistingAgents -PlanData $planData
    } else {
        # Specific agent provided - update only that agent
        Write-LogInfo "Updating specific agent: $AgentType"
        $success = Update-SpecificAgent -PlanData $planData
    }

    # Print summary
    Print-Summary -PlanData $planData

    if ($success) {
        Write-LogSuccess "Agent context update completed successfully"
    } else {
        Write-LogError "Agent context update completed with errors"
        exit 1
    }
}

# Run main function
Main
