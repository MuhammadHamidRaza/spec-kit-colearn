# AGENTS.md

## About Spec-Kit-CoLearn

**Spec-Kit-CoLearn** is an AI Co-Learning Spec Framework built by **Muhammad Hamid Raza**. It enables anyone - from non-developers to senior engineers - to build with AI as a senior architect co-partner.

The framework emphasizes **learning while building** - AI asks questions first, teaches technical concepts, and helps users understand architecture while generating code.

---

## The Core Philosophy

### Why Spec-Kit-CoLearn?

The problem with AI coding today: You ask AI to build something → It writes code → You ship it → You have no idea how it works.

**Spec-Kit-CoLearn solves this** by making AI your teacher first, coder second.

```text
OLD WAY:
You: "Build me a login system"
AI: [writes 50 files]
You: "Thanks!"
3 months later: "I don't know what I built."

NEW WAY:
You: "Build me a login system"
AI: "Let me ask questions first. What auth approach?"

AI teaches you JWT vs Sessions
AI presents 3 options with trade-offs
You choose, AI explains why
AI creates spec → plan → tasks
You approve each phase
AI builds, teaches, records learning

Now you understand exactly what you built.
```

### The Learning Compound Effect

```text
Week 1:   You learn 5 terms
Week 4:   You learn 20 terms
Week 12:  You understand architecture
Week 24:  You can design systems
Week 52:  You ARE the senior architect
```

---

## The Two-Mode System

This is the core of Spec-Kit-CoLearn. AI operates in two modes:

```text
┌──────────────────────────────────────────────────────────────┐
│                    TWO MODES — ONE TOOL                       │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  MODE 1: SENIOR ARCHITECT (activate first)                   │
│  ══════════════════════════════════════                       │
│  ✅ Ask discovery questions first                             │
│  ✅ Teach concepts you don't know                            │
│  ✅ Present 2-3 options with trade-offs                       │
│  ✅ Surface edge cases you missed                            │
│  ✅ Define measurable success criteria                       │
│  ✅ Create spec → plan → tasks                                │
│  ❌ NO CODE in this mode                                     │
│                                                               │
│  Your approval required at each phase                        │
│                          │                                    │
│                          ▼                                    │
│  MODE 2: CODING WORKER (after "tasks approved")              │
│  ═══════════════════════════════════════                     │
│  ✅ Execute tasks one by one                                  │
│  ✅ Write code that matches spec exactly                      │
│  ✅ Run tests after each task                                │
│  ✅ Stop and ask if scope changes                            │
│                                                               │
│  Feature closes → /sp.learn → Learning recorded              │
│                                                               │
└──────────────────────────────────────────────────────────────┘
```

---

## Complete /sp Command Cycle

For **EACH feature**, run this complete cycle:

```text
┌──────────────────────────────────────────────────────────────┐
│              COMPLETE /sp COMMAND CYCLE (Per Feature)         │
├──────────────────────────────────────────────────────────────┤
│                                                               │
│  1. /sp.constitution  → Set project principles (ONCE)      │
│                                                               │
│  FOR EACH FEATURE:                                           │
│  ────────────────────                                         │
│  2. /sp.discover       → AI asks 6 questions (A/B/C)        │
│  3. /sp.specify        → AI creates SPEC.md                 │
│  4. /sp.clarify        → Resolve unclear requirements         │
│  5. /sp.plan           → AI creates PLAN.md                 │
│  6. /sp.analyze        → AI checks consistency              │
│  7. /sp.tasks          → AI creates TASKS.md                 │
│  8. /sp.checklist      → AI generates quality checklist      │
│  9. /sp.implement      → AI builds (Mode 2 activated)        │
│  10. /sp.learn         → AI records learning                 │
│  11. /sp.glossary      → AI shows all terms learned         │
│  12. /sp.phr           → AI creates prompt history           │
│                                                               │
│  THEN MOVE TO NEXT FEATURE AND REPEAT!                       │
│                                                               │
└──────────────────────────────────────────────────────────────┘
```

### Command Descriptions

| Command | Mode | When | Creates |
|---------|------|------|---------|
| `/sp.constitution` | 1 | Project start | `memory/constitution.md` |
| `/sp.discover` | 1 | Each feature | Questions, options, teaching |
| `/sp.specify` | 1 | After "approved" | `specs/<feature>/spec.md` |
| `/sp.clarify` | 1 | After spec | Updates spec |
| `/sp.plan` | 1 | After "spec approved" | `specs/<feature>/plan.md` |
| `/sp.analyze` | 1 | After plan | Consistency report |
| `/sp.tasks` | 1 | After "plan approved" | `specs/<feature>/tasks.md` |
| `/sp.checklist` | 1 | Before implement | Quality checklist |
| `/sp.implement` | 2 | After "tasks approved" | Code files |
| `/sp.learn` | 1 | After feature | `learning-log.md` |
| `/sp.glossary` | 1 | Anytime | All terms review |
| `/sp.phr` | 1 | After learn | `phr.md` |

---

## The Discovery Flow

When user says "I want to build X", AI follows this flow:

### Step 1: Ask Questions

```text
AI: "Before I spec this, let me ask some questions..."

Question 1: [Scope question]
- A: [option]
- B: [option]
- C: [option]

Question 2: [Users question]
...

(total 6 questions)
```

### Step 2: Teach Concepts

If user mentions something they don't understand:

```text
AI: "You mentioned JWT. Let me explain:

JWT is like a concert wristband. You show your ID once at entry,
they give you a wristband. You show the wristband everywhere inside.

How JWT works:
1. User logs in → Server creates signed token
2. Token sent to browser
3. Every request includes token
4. Server validates signature, not contents

Pros: Scalable, stateless
Cons: Can't 'logout' instantly
When to use: APIs, mobile apps"
```

### Step 3: Present Options

```
3 OPTIONS:

Option A: [Name]
What: [description]
Pros: [2-3 pros]
Cons: [2-3 cons]
Best for: [when to use]

Option B: [Name] ← MY RECOMMENDED
What: [description]
Pros: [2-3 pros]
Cons: [2-3 cons]
Best for: [when to use]
Why I recommend: [1 clear reason]

Option C: [Name]
...

Which option? (A, B, or C)
```

### Step 4: Clarity Gate

Before creating spec, AI confirms:

```text
Clarity Gate check:
- WHO clear: [user type] ✓
- WHAT clear: [feature] ✓
- SCOPE clear: [MVP defined] ✓
- EDGES covered: [3+ edge cases] ✓
- SUCCESS measurable: [2+ criteria] ✓
- APPROVED: Waiting for go-ahead

Say "approved" and I will create the spec.
```

---

## Clarity Gate

Before any spec is created, AI must confirm:

```text
CLARITY GATE — All 6 must pass

1. WHO is clear        → We know who uses this feature
2. WHAT is clear       → We know what the feature does
3. SCOPE is clear      → We know in vs out
4. EDGE CASES covered  → At least 3 discussed
5. SUCCESS defined     → At least 2 measurable criteria
6. USER APPROVED       → Developer said "yes"

If any missing → Ask more questions, do not spec yet
```

---

## Phase Approvals

User must approve each phase explicitly:

```text
Spec created → User says "spec approved" → AI creates Plan
Plan created → User says "plan approved" → AI creates Tasks
Tasks created → User says "tasks approved" → Mode 2 activates
```

---

## Learning System

### After Each Feature

AI runs `/sp.learn` which creates:

```markdown
# LEARNING LOG - Feature X

## Terms Learned

| Term | Definition | When to Use |
|------|------------|-------------|
| JWT | JSON Web Token | APIs, mobile apps |
| ... | ... | ... |

## Decisions Made

1. Chose X over Y because...
2. ...

## Next: Feature Y+1
```

### Glossary

Run `/sp.glossary` anytime to see ALL terms across ALL projects:

```markdown
# GLOSSARY - All Terms Learned

## Authentication
| Term | Definition |
|------|------------|
| JWT | ... |
| OAuth | ... |

## Database
| Term | Definition |
|------|------------|
| ORM | ... |
```

---

## Example Projects

See the complete workflow in action:

| Project | Features | Timeline |
|---------|----------|----------|
| [Todo App](../examples/01-todo-app/) | 8 features | 8 weeks |
| [E-commerce](../examples/02-ecommerce/) | 15 features | 18-20 weeks |
| [Social Network](../examples/03-social-network/) | 10 features | 22-24 weeks |

Each example shows:
- Every question AI asks
- Every answer user gives
- Full AI explanations and teaching
- Complete spec, plan, tasks
- Implementation phase
- Learning logs and glossaries

---

## Adding New Agent Support

This section explains how to add support for new AI agents/assistants to the Specify CLI.

### Overview

Specify supports multiple AI agents by generating agent-specific command files and directory structures when initializing projects. Each agent has its own conventions:

- **Command file formats** (Markdown, TOML, etc.)
- **Directory structures** (`.claude/commands/`, `.windsurf/workflows/`, etc.)
- **Command invocation patterns** (slash commands, CLI tools, etc.)
- **Argument passing conventions** (`$ARGUMENTS`, `{{args}}`, etc.)

### Current Supported Agents

| Agent | Directory | Format | CLI Tool | Type |
|-------|-----------|--------|----------|------|
| Claude Code | `.claude/commands/` | Markdown | `claude` | CLI |
| Gemini CLI | `.gemini/commands/` | TOML | `gemini` | CLI |
| GitHub Copilot | `.github/agents/` | Markdown | N/A | IDE |
| Cursor | `.cursor/commands/` | Markdown | `cursor-agent` | CLI |
| Qwen Code | `.qwen/commands/` | TOML | `qwen` | CLI |
| opencode | `.opencode/command/` | Markdown | `opencode` | CLI |
| Codex CLI | `.codex/commands/` | Markdown | `codex` | CLI |
| Windsurf | `.windsurf/workflows/` | Markdown | N/A | IDE |
| Kilo Code | `.kilocode/rules/` | Markdown | N/A | IDE |
| Auggie CLI | `.augment/rules/` | Markdown | `auggie` | CLI |
| Roo Code | `.roo/rules/` | Markdown | N/A | IDE |
| CodeBuddy CLI | `.codebuddy/commands/` | Markdown | `codebuddy` | CLI |
| Qoder CLI | `.qoder/commands/` | Markdown | `qoder` | CLI |
| Amazon Q | `.amazonq/prompts/` | Markdown | `q` | CLI |
| Amp | `.agents/commands/` | Markdown | `amp` | CLI |
| SHAI | `.shai/commands/` | Markdown | `shai` | CLI |
| IBM Bob | `.bob/commands/` | Markdown | N/A | IDE |

### Step-by-Step Integration

#### 1. Add to AGENT_CONFIG

Add the new agent to `AGENT_CONFIG` in `src/specifyplus_cli/__init__.py`:

```python
AGENT_CONFIG = {
    # ... existing agents ...
    "new-agent-cli": {
        "name": "New Agent Display Name",
        "folder": ".newagent/",
        "install_url": "https://example.com/install",
        "requires_cli": True,
    },
}
```

**Key**: Use the actual CLI tool name as the key (e.g., `"cursor-agent"` not `"cursor"`).

#### 2. Update CLI Help Text

Update `--ai` parameter help:

```python
ai_assistant: str = typer.Option(None, "--ai", help="AI assistant to use: claude, gemini, copilot, cursor-agent, qwen, ...")
```

#### 3. Update Documentation

Update `README.md` Supported AI Agents table.

#### 4. Update Release Scripts

Modify `.github/workflows/scripts/create-release-packages.sh` and `create-github-release.sh`.

#### 5. Update Context Scripts

Update both `scripts/bash/update-agent-context.sh` and `scripts/powershell/update-agent-context.ps1`.

### Agent Categories

**CLI-Based** (require command-line tool):
Claude Code, Gemini CLI, Cursor, Qwen, opencode, Codex, Amazon Q, CodeBuddy, Qoder, Amp, SHAI, Auggie

**IDE-Based** (built into IDE):
GitHub Copilot, Windsurf, Kilo Code, Roo Code, IBM Bob

### Command File Formats

**Markdown** (Claude, Cursor, opencode, Windsurf, Amazon Q, Amp, SHAI, IBM Bob):

```markdown
---
description: "Command description"
---

Command content with {SCRIPT} and $ARGUMENTS placeholders.
```

**TOML** (Gemini, Qwen):

```toml
description = "Command description"

prompt = """
Command content with {SCRIPT} and {{args}} placeholders.
"""
```

---

## General Practices

- Any changes to `__init__.py` require version rev in `pyproject.toml` and entries to `CHANGELOG.md`.

### Prompt Evaluation Flywheel

1. **Analyze**: List failure modes, translate to pass/fail oracles
2. **Measure**: Create binary graders with few-shot examples
3. **Improve**: Adjust prompt when grader fails

### System Instructions (Prompt Structure)

Adopt this 10-part structure when writing prompts/specs:

1. Task context – goal, surface, success criteria
2. Tone context – professional, concise
3. Background – files, PRDs, code references
4. Task description – constraints, non-goals, invariants
5. Examples – happy-path + edge case
6. Conversation history – prior decisions, link PHR
7. Immediate request – what to produce, acceptance criteria
8. Think step by step – reasoning private
9. Output formatting – diffs, lists, checkboxes
10. Prefilled response – skeletons to fill

### Default Policies

- Never invent APIs; ask clarifiers if missing
- Never hardcode secrets; use `.env`
- Prefer smallest viable diff
- Cite code with references; propose code in fenced blocks
- Keep reasoning private; output decisions only

---

*This documentation should be updated whenever new agents are added or framework changes occur.*
