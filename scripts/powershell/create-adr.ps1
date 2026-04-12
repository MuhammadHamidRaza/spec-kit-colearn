#!/usr/bin/env pwsh
# Create a new Architecture Decision Record deterministically
#
# This script ONLY:
#   1. Creates the correct directory structure (history/adr/)
#   2. Copies the template with {{PLACEHOLDERS}} intact
#   3. Returns metadata (id, path) for AI to fill in
#
# The calling AI agent is responsible for filling {{PLACEHOLDERS}}
#
# Usage:
#   scripts/powershell/create-adr.ps1 -Title "Use WebSockets for Real-time Chat" [-Json]

[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Title,

    [switch]$Json,

    [switch]$Help
)

$ErrorActionPreference = 'Stop'

# Show help if requested
if ($Help) {
    Write-Output "Usage: ./create-adr.ps1 -Title <title> [-Json] [-Help]"
    Write-Output ""
    Write-Output "Required:"
    Write-Output "  -Title <text>       Title for the ADR (used for filename)"
    Write-Output ""
    Write-Output "Optional:"
    Write-Output "  -Json               Output JSON with id and path"
    Write-Output "  -Help               Show this help message"
    Write-Output ""
    Write-Output "Output:"
    Write-Output "  Creates ADR file with template placeholders ({{ID}}, {{TITLE}}, etc.)"
    Write-Output "  AI agent must fill these placeholders after creation"
    Write-Output ""
    Write-Output "Examples:"
    Write-Output "  ./create-adr.ps1 -Title 'Use WebSockets for Real-time Chat' -Json"
    Write-Output "  ./create-adr.ps1 -Title 'Adopt PostgreSQL for Primary Database'"
    exit 0
}

# Validate title parameter
if ([string]::IsNullOrWhiteSpace($Title)) {
    Write-Error "Error: -Title is required and cannot be empty" -ErrorAction Stop
    exit 1
}

# Load common functions
. "$PSScriptRoot/common.ps1"

# Get repository root
$repoRoot = Get-RepoRoot

# Setup ADR directory
$adrDir = Join-Path $repoRoot "history/adr"
New-Item -ItemType Directory -Path $adrDir -Force | Out-Null

# Check for template (try both locations)
$template = ""
$templatePath1 = Join-Path $repoRoot ".specify/templates/adr-template.md"
$templatePath2 = Join-Path $repoRoot "templates/adr-template.md"

if (Test-Path $templatePath1) {
    $template = $templatePath1
} elseif (Test-Path $templatePath2) {
    $template = $templatePath2
} else {
    Write-Error "Error: ADR template not found at .specify/templates/ or templates/" -ErrorAction Stop
    exit 1
}

# Generate next ID
function Get-NextAdrId {
    $maxId = 0

    if (Test-Path $adrDir) {
        Get-ChildItem -Path $adrDir -Filter "????-*.md" | ForEach-Object {
            $baseName = $_.BaseName
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

# Slugify the title (convert to lowercase, replace non-alphanumeric with hyphens)
function ConvertTo-Slug {
    param([string]$InputString)

    $slug = $InputString.ToLower()
    $slug = $slug -replace '[^a-z0-9]+', '-'
    $slug = $slug -replace '-{2,}', '-'
    $slug = $slug -trim '-'

    return $slug
}

# Generate ID and filename
$id = Get-NextAdrId
$slug = ConvertTo-Slug -InputString $Title
$outFile = Join-Path $adrDir "${id}-${slug}.md"

# Copy the template (AI will fill placeholders)
Copy-Item -Path $template -Destination $outFile -Force

# Get absolute path
$absPath = (Resolve-Path $outFile).Path

# Output results
if ($Json) {
    $result = [PSCustomObject]@{
        id = $id
        path = $absPath
        template = (Split-Path $template -Leaf)
    }
    $result | ConvertTo-Json -Compress
} else {
    Write-Output "✅ ADR template copied → $absPath"
    Write-Output "Note: AI agent should now fill in {{PLACEHOLDERS}}"
}
