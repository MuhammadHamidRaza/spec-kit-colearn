#!/usr/bin/env bash
set -euo pipefail

# create-github-release.sh
# Create a GitHub release with all template zip files
# Usage: create-github-release.sh <version>

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi

VERSION="$1"

# Remove 'v' prefix from version for release title
VERSION_NO_V=${VERSION#v}

gh release create "$VERSION" \
  .genreleases/spec-kit-colearn-template-copilot-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-copilot-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-claude-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-claude-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-gemini-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-gemini-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-cursor-agent-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-cursor-agent-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-opencode-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-opencode-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-qwen-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-qwen-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-windsurf-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-windsurf-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-codex-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-codex-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-kilocode-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-kilocode-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-auggie-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-auggie-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-roo-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-roo-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-codebuddy-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-codebuddy-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-qoder-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-qoder-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-amp-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-amp-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-shai-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-shai-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-q-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-q-ps-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-bob-sh-"$VERSION".zip \
  .genreleases/spec-kit-colearn-template-bob-ps-"$VERSION".zip \
  --title "Spec-Kit-CoLearn Templates - $VERSION_NO_V" \
  --notes-file release_notes.md
