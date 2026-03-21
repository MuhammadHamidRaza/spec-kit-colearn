# Example Projects

This folder contains complete examples showing how to use Spec-Kit-CoLearn with all `/sp` commands.

## Available Examples

| Example | Description | Complexity |
|---------|-------------|------------|
| [user-authentication](./user-authentication/README.md) | Single auth feature | Beginner |
| [blog-website](./blog-website/README.md) | Single blog feature | Beginner |
| [ai-agent](./ai-agent/README.md) | Single AI agent feature | Intermediate |
| [ecommerce-full](./ecommerce-full/README.md) | **BIG PROJECT** - Multiple features, one at a time | Advanced |

## Which Example Should I Start With?

| If you are... | Start with... |
|--------------|---------------|
| New to Spec-Kit-CoLearn | [user-authentication](./user-authentication/README.md) |
| Building a blog | [blog-website](./blog-website/README.md) |
| Building an AI app | [ai-agent](./ai-agent/README.md) |
| Building a LARGE app with many features | **[ecommerce-full](./ecommerce-full/README.md)** |

## The Most Important Pattern: ONE Feature At A Time

The **ecommerce-full** example is the most important because it teaches:

> **Big projects = Many features. Build ONE feature completely → Move to next.**

See [ecommerce-full/README.md](./ecommerce-full/README.md) for the full pattern.

## How to Use These Examples

1. **Read the README** in each example folder
2. **Follow the /sp commands** in order from Step 1 to Step 11
3. **Apply to your project** - adapt the prompts to your needs
4. **Don't copy blindly** - every project is different

## All Available /sp Commands

| Command | Description | When to Use |
|---------|-------------|-------------|
| `/sp.constitution [principles]` | Create project governing principles | First, before anything |
| `/sp.specify [description]` | Define what to build | After constitution |
| `/sp.clarify [answers]` | Clarify underspecified areas | After specify |
| `/sp.plan [tech-stack]` | Create technical implementation plan | After clarify |
| `/sp.analyze` | Cross-artifact consistency check | After plan |
| `/sp.tasks` | Generate actionable task list | After analyze |
| `/sp.checklist [type]` | Generate quality checklist | After tasks |
| `/sp.implement` | Execute all tasks | After checklist |
| `/sp.learn` | Record learning after feature | After implement |
| `/sp.glossary` | Review all learned terms | Anytime |
| `/sp.phr` | Create prompt history record | After feature |
| `/sp.adr [title]` | Architecture decision record | When needed |

## Quick Start

```bash
# Install
pip install spec-kit-colearn

# Initialize your project
spec-kit-colearn init my-project
cd my-project

# Start with constitution
# /sp.constitution Create principles focused on...
```

## Example Flow

```
1. /sp.constitution → Establish project principles
2. /sp.specify → Define what to build
3. /sp.clarify → Answer discovery questions
4. /sp.plan → Choose technology stack
5. /sp.analyze → Check consistency
6. /sp.tasks → Generate task list
7. /sp.checklist → Validate quality
8. /sp.implement → Build the feature
9. /sp.learn → Record what you learned
10. /sp.glossary → Review all terms
11. /sp.phr → Create prompt history
```
