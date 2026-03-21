# Example Projects - Full AI Co-Partner Conversations

This folder contains **complete production-ready examples** showing how Spec-Kit-CoLearn works as an AI co-partner.

## Quick Start

```bash
# Install
pip install spec-kit-colearn

# Or with npm
npm install -g @muhammad-hamid-raza/spec-kit-colearn

# Initialize project
spec-kit-colearn init my-project
cd my-project
```

---

## Example Projects

| Example | Description | Timeline |
|---------|-------------|----------|
| [01-todo-app](./01-todo-app/README.md) | Personal productivity app | 3-4 weeks |
| [02-ecommerce](./02-ecommerce/README.md) | Full ecommerce store | 18-20 weeks |
| [03-social-network](./03-social-network/README.md) | Social network platform | 22-24 weeks |

---

## How These Examples Work

Each example shows the **FULL AI conversation** where:
1. **User says WHAT they want** (vague is fine!)
2. **AI asks questions as co-partner**
3. **User answers** (simple A/B/C/D)
4. **AI creates specs, plans, tasks**
5. **AI builds everything in Mode 2**

---

## All /sp Commands

| Command | When | What It Does |
|---------|------|--------------|
| `/sp.discover` | FIRST for each feature | AI asks questions to understand vision |
| `/sp.specify` | After discover | AI creates detailed specification |
| `/sp.plan` | After specify | AI creates implementation plan |
| `/sp.tasks` | After plan | AI creates detailed task list |
| `/sp.implement` | After tasks | **Mode 2**: AI writes all the code |
| `/sp.learn` | After implement | AI records what was learned |
| `/sp.glossary` | Anytime | AI shows all terms learned |

---

## The Key Pattern: USER → AI → USER → AI

```
USER: "I want to build an ecommerce website"

AI: "Great! Let me ask questions to understand your vision..."

AI: "Question 1: What TYPE of ecommerce?"
    - A: Single brand store
    - B: Marketplace
    - C: Multi-vendor

USER: "A"

AI: "Question 2: What products will you sell?"
    ...

USER: "B"

AI: "Based on your answers, here are 3 options..."

USER: "A (recommended)"

AI: "Creating your specification..."

USER: "spec approved"

AI: "Creating implementation plan..."

USER: "plan approved"

AI: "Generating tasks..."

USER: "tasks approved"

AI: "🔨 MODE 2 ACTIVATED - Building your ecommerce..."

[AI builds everything]

AI: "✅ Feature complete! Running /sp.learn..."
```

---

## Choose Your Starting Point

| If you want to... | Start with... |
|-------------------|---------------|
| Learn the workflow | [01-todo-app](./01-todo-app/README.md) - Simplest |
| Build something real | [02-ecommerce](./02-ecommerce/README.md) - Full featured |
| Complex app | [03-social-network](./03-social-network/README.md) - Advanced |
