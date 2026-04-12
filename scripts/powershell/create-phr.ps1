#!/usr/bin/env pwsh
# Create Prompt History Record (PHR) - Spec Kit Native
#
# Deterministic PHR location strategy:
# 1. Constitution stage:
#    → history/prompts/constitution/
#    → stage: constitution
#    → naming: 0001-title.constitution.prompt.md
#
# 2. Feature stages (spec-specific work):
#    → history/prompts/<spec-name>/
#    → stages: spec, plan, tasks, red, green, refactor, explainer, misc
#    → naming: 0001-title.spec.prompt.md
#
# 3. General stage (catch-all):
#    → history/prompts/general/
#    → stage: general
#    → naming: 0001-title.general.prompt.md
#
# This script ONLY:
#   1. Creates the correct directory structure
#   2. Copies the template with {{PLACEHOLDERS}} intact
#   3. Returns metadata (id, path, context) for AI to fill in
#
# The calling AI agent is responsible for filling {{PLACEHOLDERS}}
#
# Usage:
#   scripts/powershell/create-phr.ps1 `
#     -Title "Setup authentication" `
#     -Stage architect `
#     [-Feature 001-auth] `
#     [-Json]

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Title,

    [Parameter(Mandatory = $true)]
    [string]$Stage,

    [string]$Feature = "",
    [switch]$Json,
    [switch]$Help
)

$ErrorActionPreference = 'Stop'

# Show help if requested
if ($Help) {
    Write-Output "Usage: ./create-phr.ps1 -Title <title> -Stage <stage> [-Feature <feature>] [-Json] [-Help]"
    Write-Output ""
    Write-Output "Required:"
    Write-Output "  -Title <text>       Title for the PHR (used for filename)"
    Write-Output "  -Stage <stage>      constitution|spec|plan|tasks|red|green|refactor|explainer|misc|general"
    Write-Output ""
    Write-Output "Optional:"
    Write-Output "  -Feature <slug>     Feature slug (e.g., 001-auth). Auto-detected from branch if omitted."
    Write-Output "  -Json               Output JSON with id, path, and context"
    Write-Output "  -Help               Show this help message"
    Write-Output ""
    Write-Output "Location Rules (all under history/prompts/):"
    Write-Output "  - constitution → history/prompts/constitution/"
    Write-Output "  - spec, plan, tasks, red, green, refactor, explainer, misc → history/prompts/<branch-name>/"
    Write-Output "  - general → history/prompts/general/ (catch-all for non-feature work)"
    Write-Output ""
    Write-Output "Output:"
    Write-Output "  Creates PHR file with template placeholders ({{ID}}, {{TITLE}}, etc.)"
    Write-Output "  AI agent must fill these placeholders after creation"
    Write-Output ""
    Write-Output "Examples:"
    Write-Output "  # Early-phase constitution work (no feature exists)"
    Write-Output "  ./create-phr.ps1 -Title 'Define quality standards' -Stage constitution -Json"
    Write-Output ""
    Write-Output "  # Feature-specific implementation work"
    Write-Output "  ./create-phr.ps1 -Title 'Implement login' -Stage green -Feature 001-auth -Json"
    exit 0
}

# Load common functions
. "$PSScriptRoot/common.ps1"

# Validation
if ([string]::IsNullOrWhiteSpace($Title)) {
    Write-Error "Error: -Title is required" -ErrorAction Stop
    exit 1
}

if ([string]::IsNullOrWhiteSpace($Stage)) {
    Write-Error "Error: -Stage is required" -ErrorAction Stop
    exit 1
}

# Get repository root
$repoRoot = Get-RepoRoot
$specsDir = Join-Path $repoRoot "specs"

# Check for template (try both locations)
$templatePath = ""
$templatePath1 = Join-Path $repoRoot ".specify/templates/phr-template.prompt.md"
$templatePath2 = Join-Path $repoRoot "templates/phr-template.prompt.md"

if (Test-Path $templatePath1) {
    $templatePath = $templatePath1
} elseif (Test-Path $templatePath2) {
    $templatePath = $templatePath2
} else {
    Write-Error "Error: PHR template not found at .specify/templates/ or templates/" -ErrorAction Stop
    exit 1
}

# Helper function: Slugify
function ConvertTo-Slug {
    param([string]$InputString)

    $slug = $InputString.ToLower()
    $slug = $slug -replace '[^a-z0-9]+', '-'
    $slug = $slug -replace '-{2,}', '-'
    $slug = $slug -trim '-'

    return $slug
}

# Helper function: Get next ID
function Get-NextPhrId {
    param([string]$PromptsDir)

    $maxId = 0

    if (Test-Path $PromptsDir) {
        Get-ChildItem -Path $PromptsDir -Filter "????-*.prompt.md" | ForEach-Object {
            $baseName = $_.BaseName
            # Extract the first part before the first hyphen
            if ($baseName -match '^(\d{4})') {
                $num = [int]$matches[1]
                if ($num -gt $maxId) {
                    $maxId = $num
                }
            }
        }
    }

    return "{0:D4}" -f ($maxId + 1)
}

# Deterministic location logic based on STAGE
# New structure: all prompts go under history/prompts/ with subdirectories:
# - constitution/ for constitution prompts
# - <spec-name>/ for spec-specific prompts
# - general/ for general/catch-all prompts

$validStages = @()
$context = ""
$promptsDir = ""

switch ($Stage) {
    "constitution" {
        # Constitution prompts always go to history/prompts/constitution/
        $promptsDir = Join-Path $repoRoot "history/prompts/constitution"
        $validStages = @("constitution")
        $context = "constitution"
    }
    "spec" { $promptsDir = "FEATURE_REQUIRED" }
    "plan" { $promptsDir = "FEATURE_REQUIRED" }
    "tasks" { $promptsDir = "FEATURE_REQUIRED" }
    "red" { $promptsDir = "FEATURE_REQUIRED" }
    "green" { $promptsDir = "FEATURE_REQUIRED" }
    "refactor" { $promptsDir = "FEATURE_REQUIRED" }
    "explainer" { $promptsDir = "FEATURE_REQUIRED" }
    "misc" { $promptsDir = "FEATURE_REQUIRED" }
    "general" {
        # General stage: catch-all that goes to history/prompts/general/
        $promptsDir = Join-Path $repoRoot "history/prompts/general"
        $validStages = @("general")
        $context = "general"
    }
    default {
        Write-Error "Error: Unknown stage '$Stage'" -ErrorAction Stop
        exit 1
    }
}

# Handle feature-specific stages
if ($promptsDir -eq "FEATURE_REQUIRED") {
    # Feature-specific stages: require specs/ directory and feature context
    if (-not (Test-Path $specsDir)) {
        Write-Error "Error: Feature stage '$Stage' requires specs/ directory and a feature context. Run /sp.feature first to create a feature, then try again." -ErrorAction Stop
        exit 1
    }

    # Auto-detect feature if not specified
    if ([string]::IsNullOrWhiteSpace($Feature)) {
        # Try to get from SPECIFY_FEATURE environment variable
        if ($env:SPECIFY_FEATURE) {
            $Feature = $env:SPECIFY_FEATURE
        } else {
            # Try to match current branch
            $currentBranch = Get-CurrentBranch
            $hasGit = Test-HasGit

            if ($hasGit -and $currentBranch -and $currentBranch -notin @("main", "master")) {
                # Check if branch name matches a feature directory
                $branchFeaturePath = Join-Path $specsDir $currentBranch
                if (Test-Path $branchFeaturePath) {
                    $Feature = $currentBranch
                }
            }

            # If still no feature, find the highest numbered feature
            if ([string]::IsNullOrWhiteSpace($Feature)) {
                $maxNum = 0
                $latestFeature = ""

                Get-ChildItem -Path $specsDir -Directory | ForEach-Object {
                    if ($_.Name -match '^(\d{3})-') {
                        $num = [int]$matches[1]
                        if ($num -gt $maxNum) {
                            $maxNum = $num
                            $latestFeature = $_.Name
                        }
                    }
                }

                if ($latestFeature) {
                    $Feature = $latestFeature
                } else {
                    Write-Error "Error: No feature specified and no numbered features found in $specsDir. Please specify -Feature or create a feature directory first." -ErrorAction Stop
                    exit 1
                }
            }
        }
    }

    # Validate feature exists
    $featurePath = Join-Path $specsDir $Feature
    if (-not (Test-Path $featurePath)) {
        Write-Error "Error: Feature directory not found: $featurePath" -ErrorAction Stop
        Write-Output "Available features:"
        if (Test-Path $specsDir) {
            Get-ChildItem -Path $specsDir -Directory | Select-Object -First 5 | ForEach-Object {
                Write-Output "  - $($_.Name)"
            }
        }
        exit 1
    }

    # Feature prompts go to history/prompts/<branch-name>/ (same as specs/<branch-name>/)
    # This keeps naming consistent across branch, specs, and prompts directories
    $promptsDir = Join-Path $repoRoot "history/prompts/$Feature"
    $validStages = @("spec", "plan", "tasks", "red", "green", "refactor", "explainer", "misc")
    $context = "feature"
}

# Validate stage
if ($validStages -notcontains $Stage) {
    Write-Error "Error: Invalid stage '$Stage' for $context context. Valid stages for $context`: $($validStages -join ', ')" -ErrorAction Stop
    exit 1
}

# Ensure prompts directory exists
New-Item -ItemType Directory -Path $promptsDir -Force | Out-Null

# Get next ID and create filename
$phrId = Get-NextPhrId -PromptsDir $promptsDir
$titleSlug = ConvertTo-Slug -InputString $Title
$stageSlug = ConvertTo-Slug -InputString $Stage

# Create filename with stage extension
$outFileName = "${phrId}-${titleSlug}.${stageSlug}.prompt.md"
$outFile = Join-Path $promptsDir $outFileName

# Simply copy the template (AI will fill placeholders)
Copy-Item -Path $templatePath -Destination $outFile -Force

# Get absolute path
$absPath = (Resolve-Path $outFile).Path

# Output results
if ($Json) {
    $result = [PSCustomObject]@{
        id = $phrId
        path = $absPath
        context = $context
        stage = $Stage
        feature = if ($Feature) { $Feature } else { "none" }
        template = (Split-Path $templatePath -Leaf)
    }
    $result | ConvertTo-Json -Compress
} else {
    Write-Output "✅ PHR template copied → $absPath"
    Write-Output "Note: AI agent should now fill in {{PLACEHOLDERS}}"
}
