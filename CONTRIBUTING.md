# Contributing to Spec-Kit-CoLearn

Hi there! We're thrilled that you'd like to contribute to Spec-Kit-CoLearn. This is the enhanced fork of GitHub's Spec Kit, focused on Spec-Driven Development for multi-agent AI systems.


Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

## 🚀 Quick Start for Command Contributions

Spec-Kit-CoLearn uses a **test-first contribution model** where you develop and validate commands in your own projects before contributing them to the core repository.

```bash
# 1. Create and test your command locally
spec-kit-colearn init my-test-project --ai claude
cd my-test-project
# Develop your command in .specify/templates/commands/
# Test thoroughly with /sp.your-command

# 2. Contribute to the core repository
git clone https://github.com/muhammadhamidraza/spec-kit-colearn.git
# Copy your tested files and submit a PR
```

## 📖 Detailed Contribution Guide

For comprehensive instructions, see our:
- **[Technical Implementation Guide](docs-plus/CONTRIBUTING_GUIDE.md)** - Complete workflow and technical details
- **[Quick Reference](README.md#-quick-reference)** - Common command patterns and examples

## 🔧 Prerequisites for Development

These are one-time installations required to test your changes locally:

1. Install [Python 3.11+](https://www.python.org/downloads/)
2. Install [uv](https://docs.astral.sh/uv/) for package management
3. Install [Git](https://git-scm.com/downloads)
4. Have an [AI coding agent available](README.md#-supported-ai-agents)

### Development Environment Setup

<details>
<summary><b>💡 Hint if you're using <code>VSCode</code> or <code>GitHub Codespaces</code> as your IDE</b></summary>

<br>

Provided you have [Docker](https://docker.com) installed on your machine, you can leverage [Dev Containers](https://containers.dev) through this [VSCode extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers), to easily set up your development environment, with aforementioned tools already installed and configured, thanks to the `.devcontainer/devcontainer.json` file (located at the root of the project).

To do so, simply:

- Checkout the repo
- Open it with VSCode
- Open the [Command Palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette) and select "Dev Containers: Open Folder in Container..."

On [GitHub Codespaces](https://github.com/features/codespaces) it's even simpler, as it leverages the `.devcontainer/devcontainer.json` automatically upon opening the codespace.

</details>

## 🎯 Types of Contributions

> [!NOTE]
> If your pull request introduces a large change that materially impacts the work of the CLI or the rest of the repository (e.g., you're introducing new templates, arguments, or otherwise major changes), make sure that it was **discussed and agreed upon** by the project maintainers. Pull requests with large changes that did not have a prior conversation and agreement will be closed.

We welcome several types of contributions:

### 1. New Slash Commands (Most Common)
Create new workflow commands like `/sp.deploy`, `/sp.test`, `/sp.docs`

### 2. Template Improvements
Enhance existing templates for better functionality

### 3. Script Automation
Add shell scripts for complex workflows (Bash/PowerShell)

### 4. Documentation and Guides
Improve project documentation and methodology guides

### 5. Bug Fixes and Performance
Fix issues and optimize existing functionality

## 🔄 Contribution Workflow

### For Slash Commands (Primary Contribution Type)

#### Step 1: Local Development
```bash
# Create test project
spec-kit-colearn init test-command --ai claude
cd test-command

# Create your command template
# Edit: .specify/templates/commands/your-command.md
# Create supporting scripts if needed
# Test: /sp.your-command test-arguments
```

#### Step 2: Technical Implementation
Spec-Kit-CoLearn uses the **Thin Scripts + AI Content Generation** pattern:

- **Scripts**: Create directory structure, copy templates with placeholders, return JSON metadata
- **AI**: Fill placeholders with generated content based on context and requirements

You can also test package generation locally:

```bash
# Generate the local packages
./.github/workflows/scripts/create-release-packages.sh v1.0.0

# Copy to test project
cp -r .genreleases/sdd-copilot-package-sh/. <path-to-test-project>/
```

#### Step 3: Cross-Agent Testing
```bash
# Test with multiple agents if possible
spec-kit-colearn init test-gemini --ai gemini
# Test command: /sp.your-command

spec-kit-colearn init test-copilot --ai copilot
# Test command: /sp.your-command
```

#### Step 4: Submit to Core Repository
```bash
# Clone main repository
git clone https://github.com/muhammadhamidraza/spec-kit-colearn.git
cd spec-kit-colearn

# Copy your tested files
cp ../test-command/.specify/templates/commands/your-command.md templates/commands/
cp ../test-command/.specify/scripts/bash/your-script.sh scripts/bash/  # if exists
cp ../test-command/.specify/scripts/powershell/your-script.ps1 scripts/powershell/  # if exists

# Submit PR
git checkout -b feature/your-command
git add .
git commit -m "Add /sp.your-command for [purpose]"
git push origin feature/your-command
# Submit Pull Request
```

## 🧪 Testing Your Contributions

### Local Testing Workflow

```bash
# 1. Test script directly
bash scripts/bash/your-script.sh --json
# Expected: JSON output with path/status

# 2. Test template creation
ls -la .specify/your-artifact.md
# Expected: File with {{PLACEHOLDERS}} intact

# 3. Test command in agent
/sp.your-command "test input"
# Expected: Filled placeholders, working command

# 4. Build validation
./.github/workflows/scripts/create-release-packages.sh v1.0.0-test
```

### Required Test Scenarios

- [ ] Command works with no arguments
- [ ] Command works with single and multiple arguments
- [ ] Command handles special characters in arguments
- [ ] Integration testing with SDD workflow (`/sp.specify` → `/sp.plan` → `/sp.tasks` → `/sp.implement` → `/sp.your-command`)
- [ ] Cross-platform testing (macOS/Linux/Windows) if possible

## 📋 Pull Request Guidelines

### PR Requirements

- [ ] **Local testing completed** - Command works in real project scenarios
- [ ] **Cross-agent compatibility** - Tested with multiple AI agents if possible
- [ ] **Documentation updated** - README.md, CHANGELOG.md updated if needed
- [ ] **AI assistance disclosed** - Any AI usage must be disclosed (see below)
- [ ] **Scripts executable** - `chmod +x scripts/bash/your-script.sh`

### Large Changes Notice

> [!NOTE]
> If your pull request introduces a large change that materially impacts the work of the CLI or repository (e.g., new templates, major workflow changes), ensure it was **discussed and agreed upon** by project maintainers beforehand.

### Increasing PR Acceptance

- Follow the project's coding conventions and style guidelines
- Include comprehensive testing scenarios
- Update documentation for user-facing features
- Keep changes focused and atomic
- Write clear commit messages following conventional format
- Test with the Spec-Driven Development workflow to ensure compatibility

## 🤖 AI Assistance Disclosure

> [!IMPORTANT]
> If you are using **any kind of AI assistance** to contribute to Spec-Kit-CoLearn, it **must be disclosed** in the pull request.

We welcome and encourage AI-enhanced contributions! However, transparency is required:

**Examples of disclosure:**
- "This command template was refined with ChatGPT assistance"
- "Shell scripts were generated by Claude Code"
- "No AI assistance used - fully manual creation"

**What requires disclosure:**
- Code generation assistance
- Template refinement with AI
- Documentation improvements with AI
- Any substantial AI contribution

**What doesn't require disclosure:**
- Trivial spacing or typo fixes
- Small grammatical corrections

Failure to disclose AI assistance is disrespectful to maintainers and may result in PR closure or contribution restrictions.

## 🔍 Development Workflow

When working on Spec-Kit-CoLearn:

1. **Test changes locally** using `spec-kit-colearn init` and your preferred AI agent
2. **Verify templates** work correctly in the `templates/` directory
3. **Test script functionality** in the `scripts/` directory
4. **Ensure memory files** (`memory/constitution.md`) are updated for major process changes

### Local Package Testing

```bash
# Test your templates locally without full release
./.github/workflows/scripts/create-release-packages.sh v1.0.0-test

# Copy the relevant package to your test project
cp -r .genreleases/sdd-claude-package-sh/. <path-to-test-project>/

# Open and test the agent in your test project
```

## 📊 What We're Looking For

### Successful Contributions Include:
- **Clear AI use disclosure** with transparency about extent of assistance
- **Human understanding and testing** - you've personally validated the changes
- **Clear rationale** - explanation of why the change is needed and how it fits Spec-Kit-CoLearn goals
- **Concrete evidence** - test cases, scenarios, or examples demonstrating improvement
- **Your own analysis** - thoughts on end-to-end developer experience

### What We'll Close:
- Untested changes submitted without verification
- Generic suggestions not addressing specific Spec-Kit-CoLearn needs
- Bulk submissions showing no human review or understanding

### Guidelines for Success:
Demonstrate that you understand and have validated your proposed changes. If a maintainer can easily tell that a contribution was generated entirely by AI without human input or testing, it needs more work before submission.

## 📚 Resources and References

### Development Resources
- [Spec-Driven Development Methodology](./spec-driven.md) - Core methodology
- [Technical Implementation Guide](./docs-plus/CONTRIBUTING_GUIDE.md) - Comprehensive technical guide
- [Supported AI Agents](README.md#-supported-ai-agents) - Agent compatibility
- [Existing Commands](templates/commands/) - Reference examples and patterns
- [Script Examples](scripts/) - Automation patterns

### Community Resources
- [How to Contribute to Open Source](https://opensource.guide/how-to-contribute/)
- [Using Pull Requests](https://help.github.com/articles/about-pull-requests/)
- [GitHub Help](https://help.github.com)

## 🤝 Community Guidelines

### Code of Conduct
We are committed to providing a welcoming and inclusive environment. Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md).

### Communication Channels
- **GitHub Issues**: Bug reports and feature requests
- **Pull Requests**: Contributions and discussions
- **GitHub Discussions**: General questions and ideas

### Getting Help
- **Documentation**: [Spec-Driven Development](spec-driven.md), [Agent guides](README.md)
- **Community**: [GitHub Discussions](https://github.com/muhammadhamidraza/spec-kit-colearn/discussions)
- **Issues**: [Create an issue](https://github.com/muhammadhamidraza/spec-kit-colearn/issues/new) for bugs or questions

---

## 🎉 Thank You for Contributing!

Your contributions help make Spec-Driven Development accessible to developers worldwide. Whether you're adding new commands, improving templates, fixing bugs, or enhancing documentation - every contribution makes Spec-Kit-CoLearn better for the entire community.

For questions or help getting started, please [open an issue](https://github.com/muhammadhamidraza/spec-kit-colearn/issues/new) or start a [discussion](https://github.com/muhammadhamidraza/spec-kit-colearn/discussions).