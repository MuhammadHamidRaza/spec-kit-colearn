# 🌱 Spec-Kit-CoLearn

> **Stop just coding. Start understanding.**
>
> Build with AI as your senior architect co-partner — and learn every single thing along the way.

> **Why just get code when you can understand everything?**

---

## ⚡ Install Now

```bash
# From PyPI
pip install spec-kit-colearn

# From npm
npm install -g @muhammad-hamid-raza/spec-kit-colearn

# Or with uv
uv tool install spec-kit-colearn
```

```bash
# Initialize a project
spec-kit-colearn init my-project

# Or in current directory
spec-kit-colearn init .
```

**Works with:** Claude Code, Codex, Gemini CLI, Qwen CLI, Cursor, Windsurf, GitHub Copilot, Amazon Q, and any AI coding tool.

---

## 🤔 Why Spec-Kit-CoLearn?

### The Problem with AI Coding Today

You ask AI to build something → It writes code → You ship it → You have no idea how it works.

**Sound familiar?**

```
❌ OLD WAY - AI Coding
────────────────────────────────
You: "Build me a login system"
AI:  [writes 50 files]
You: "Thanks"
You:  Now what did I just build? Why did it use JWT and not sessions?
      What about that refresh token thing?
      How does OAuth actually work?
      I don't know. I just know it works. Maybe.
      3 months later: "Who wrote this? Oh wait, that was me."
```

```
✅ NEW WAY - Spec-Kit-CoLearn
────────────────────────────────
You: "Build me a login system"
AI:  "Let me ask you some questions first..."

    "What auth approach would you prefer?
     A) Simple sessions - easy, but limited
     B) JWT tokens - scalable, stateless (recommended)
     C) Third-party service like Auth0 - fast, but expensive

     Before we decide, let me explain JWT:
     JWT is like a concert wristband. You show your ID once...
     [full explanation with examples]

AI:  "Here are 3 edge cases you might not have considered:
      1. User enumeration - attackers discovering valid emails
      2. Session fixation - hijacked sessions
      3. Timing attacks - password guessing via response time"

AI:  [creates spec.md] → [creates plan.md] → [creates tasks.md]
You: "spec approved" → "plan approved" → "tasks approved"
AI:  [Mode 2: Coding] → [runs tests] → [feature complete]

AI:  "Running /sp.learn - here's what you learned today:
      - JWT (JSON Web Token) - stateless authentication
      - OAuth 2.0 - third-party login protocol
      - Session fixation - session hijacking attack
      - Timing attack - response-time based password guessing
      - httpOnly cookies - XSS protection"

You: "I understand exactly what I just built."
```

### The Difference

| Without Spec-Kit-CoLearn | With Spec-Kit-CoLearn |
|------------------------|----------------------|
| AI writes code you don't understand | AI teaches you while building |
| "It works, I guess?" | "I know exactly how it works" |
| Learn nothing | Learn everything |
| AI makes decisions | You make decisions, AI explains |
| Fear when things break | Confidence because you understand |
| Dependent on AI | You grow with AI |
| Vague specs = broken features | Deep discovery = right first time |
| One-shot coding | Sequential learning that compounds |

---

## 🎓 What You'll Learn

Every feature you build teaches you something new:

| Feature | What You Learn |
|---------|---------------|
| Login System | JWT, OAuth, Sessions, httpOnly cookies, XSS |
| File Upload | Cloud storage, pre-signed URLs, MIME validation |
| Database | ACID, Indexes, ORM, Sharding, Replication |
| API Design | REST, GraphQL, Rate limiting, CORS |
| Security | OWASP Top 10, encryption, CSRF, SQL injection |
| Deployment | Docker, CI/CD, Cloud, Load balancing |

**After 6 months with Spec-Kit-CoLearn:**
- You understand architecture, not just syntax
- You can make informed decisions, not just follow tutorials
- You teach AI your domain, AI teaches you engineering
- You grow from user → developer → architect

---

## 🚀 Quick Start

### Step 1: Install (Already done above ↑)

### Step 2: Initialize

```bash
spec-kit-colearn init my-awesome-app
cd my-awesome-app
```

### Step 3: Activate AI as Senior Architect

Open Claude Code, Gemini CLI, or any AI tool and paste:

```
You are now operating in two modes for this session.

MODE 1 — SENIOR ARCHITECT:
- Think before code
- Ask questions first
- Present options with trade-offs
- Teach me concepts I don't know
- Create spec → plan → tasks
- NO CODE until I approve all phases

MODE 2 — CODING WORKER:
- Activates only after "tasks approved"
- Execute tasks one by one
- Run tests after each task
- Write code that matches spec exactly

Confirm by saying: "Senior Architect Mode activated."
```

AI responds: **"Senior Architect Mode activated. Ready for your feature request."**

### Step 4: Request Your Feature

```
You: "I want a todo app"

AI:  "Let me ask some questions to design this properly..."

    [Discovery Mode with questions]
    [Teaching Mode - explains options]
    [Edge cases surfaced]
    [Options presented with trade-offs]
    [Success criteria defined]

You: "B (recommended)"
AI:  [creates SPEC.md]
You: "spec approved"
AI:  [creates PLAN.md]
You: "plan approved"
AI:  [creates TASKS.md]
You: "tasks approved"
AI:  [MODE 2: implements feature]
AI:  [runs /sp.learn - generates learning log]

You now understand exactly what you built.
```

---

## 📚 Complete Command Reference

### The /sp Command Cycle (For Every Feature)

```
/sp.constitution  →  Define project principles (once)
/sp.discover       →  AI asks questions (auto-triggered)
/sp.specify        →  Create specification
/sp.clarify        →  Resolve unclear requirements
/sp.plan           →  Create implementation plan
/sp.analyze        →  Check consistency
/sp.tasks          →  Generate task list
/sp.checklist      →  Quality checklist
/sp.implement      →  CODE (Mode 2 activated)
/sp.learn          →  Record learning
/sp.glossary       →  Review all terms learned
/sp.phr            →  Prompt history record
```

### Your Role

| Phase | You Say | AI Does |
|-------|---------|---------|
| Discovery | Answer questions | Asks questions, teaches, presents options |
| Specification | "spec approved" | Creates spec.md |
| Planning | "plan approved" | Creates plan.md |
| Tasks | "tasks approved" | Creates tasks.md |
| Implementation | Validate output | Writes code, runs tests |
| Learning | Review | Creates learning log |

---

## 🎯 Full Example: Todo App

### Feature 1: Add Tasks

**User:** "I want to add tasks to my todo list"

**AI (Mode 1 - Senior Architect):**
> "Before I spec this, let me understand your needs:
>
> **Scope Questions:**
> 1. Should tasks persist after closing browser?
> 2. Should tasks sync across devices?
> 3. Any priority or deadline features for MVP?
>
> **You mentioned "todo list"** - let me explain your options:
>
> | Option | Storage | Sync | Complexity |
> |--------|---------|------|------------|
> | A) LocalStorage | Browser only | No | Minimal |
> | B) IndexedDB | Browser only, more space | No | Medium |
> | C) Backend API | Server storage | Yes | High |
>
> **Recommendation: Option A** - Perfect for personal use, no server needed.
>
> **Edge cases to consider:**
> 1. Empty task submission → Need validation
> 2. Very long task text → UI should handle gracefully
> 3. Duplicate tasks → Allow or prevent?
>
> Quick question: Do you need tasks to sync across devices?"

**User:** "Just for me. No sync. Keep it simple."

**AI:**
> "Clarity Gate check:
> - WHO: You, personal use ✓
> - WHAT: Add tasks to todo list ✓
> - SCOPE: MVP = add, view, delete tasks ✓
> - EDGES: Empty text, duplicates ✓
> - SUCCESS: Add task < 1 second ✓
>
> All gates pass. Creating SPEC.md..."

**User:** "spec approved"

**AI:** [Creates plan.md]

**User:** "plan approved"

**AI:** [Creates tasks.md]

**User:** "tasks approved"

**AI:** **Mode 2 activated - implementing...**

> Task 1: Create task input component
> Task 2: Add task to LocalStorage
> Task 3: Display tasks from storage
> Task 4: Delete task functionality
> [runs tests after each]

**AI:** "Feature complete. Running /sp.learn..."

### Learning Log Generated

```markdown
# Learning Log: Add Tasks Feature

## Terms Learned

| Term | Definition | When to Use |
|------|------------|-------------|
| LocalStorage | Browser's persistent storage | Small data, personal use |
| CRUD | Create, Read, Update, Delete | All data operations |
| DOM | Document Object Model | Manipulating HTML elements |
| Event Listener | Code that waits for user actions | Click, submit, input events |

## What You Built

A todo app with task persistence using LocalStorage.
Tasks survive browser refresh and closing.

## Key Decisions

1. Chose LocalStorage over backend → Simpler, no server needed
2. No sync → Works for personal use
3. MVP scope → Add, view, delete only

## Next Features to Learn

- Task editing (Update in CRUD)
- Priority levels (new data model)
- Due dates (date handling)
- Categories (filtering)
```

---

## 🏗️ Architecture Overview

### The Two-Mode System

```
┌─────────────────────────────────────────────────────────────┐
│                    SPEC-KIT-COLEARN                         │
├─────────────────────────────────────────────────────────────┤
│                                                              │
│  MODE 1: SENIOR ARCHITECT (before any code)                 │
│  ════════════════════════════════════                        │
│  ✅ Ask discovery questions                                   │
│  ✅ Teach concepts you don't know                            │
│  ✅ Present 2-3 options with trade-offs                       │
│  ✅ Surface edge cases you missed                            │
│  ✅ Define measurable success criteria                       │
│  ✅ Create spec → plan → tasks                                │
│  ❌ NO CODE in this mode                                     │
│                                                              │
│  Your approval required at each phase                        │
│                         │                                    │
│                         ▼                                    │
│  MODE 2: CODING WORKER (after "tasks approved")              │
│  ════════════════════════════════════                        │
│  ✅ Execute tasks one by one                                  │
│  ✅ Write code that matches spec exactly                      │
│  ✅ Run tests after each task                                │
│  ✅ Stop and ask if scope changes needed                     │
│  ❌ Never change scope without asking                        │
│                                                              │
│  Feature closes → /sp.learn → Learning recorded              │
│                                                              │
└─────────────────────────────────────────────────────────────┘
```

### Why This Order Matters

```
WRONG:  Code → Test → Break → Rewrite → Waste 2 weeks
RIGHT:  Discover → Spec → Plan → Tasks → Code → Right first time
```

A senior developer never types code first. They ask questions, design, review, THEN code. This framework makes your AI behave the same way.

---

## 💡 For Everyone

| Who You Are | What You Get |
|-------------|-------------|
| **Non-developer** | AI guides you, you learn while building |
| **Junior developer** | AI teaches architecture before code |
| **Mid-level developer** | AI presents options with trade-offs |
| **Senior developer** | AI handles execution, you focus on decisions |

---

## 📖 Example Projects

See the complete workflow in action:

- 📁 `examples/01-todo-app/` - Todo app (8 features, full AI conversation)
- 📁 `examples/02-ecommerce/` - E-commerce site (15 features)
- 📁 `examples/03-social-network/` - Social network (10 features)

Each example shows:
- Every question AI asks
- Every answer you give
- Full AI explanations
- Complete spec, plan, tasks
- Implementation phase
- Learning logs and glossaries

---

## 🎓 The Learning Compound Effect

```
Week 1:   You learn 5 terms
Week 4:   You learn 20 terms
Week 12:  You understand architecture
Week 24:  You can design systems
Week 52:  You ARE the senior architect
```

**Every feature builds on the last.** You don't just ship code — you ship understanding.

---

## 🔧 Supported AI Tools

| Agent | Type | Status |
|-------|------|--------|
| Claude Code | CLI | ✅ Full Support |
| Codex CLI | CLI | ✅ Full Support |
| Gemini CLI | CLI | ✅ Full Support |
| Qwen Code | CLI | ✅ Full Support |
| GitHub Copilot | IDE | ✅ Full Support |
| Cursor | IDE | ✅ Full Support |
| Windsurf | IDE | ✅ Full Support |
| Amazon Q | CLI | ✅ Full Support |
| opencode | CLI | ✅ Full Support |
| And more... | | |

---

## 📦 What's Included

- **CLI Tool** - Project initialization
- **Slash Commands** - `/sp.*` commands for AI agents
- **Templates** - Spec, plan, tasks templates
- **Learning System** - Learning logs, glossaries, PHRs
- **Examples** - 3 complete projects with full AI conversations

---

## 📖 Documentation

- [Getting Started](./docs/getting-started.md)
- [Command Reference](./docs/command-reference.md)
- [Two-Mode System](./docs/two-mode-system.md)
- [For Non-Developers](./docs/for-non-developers.md)
- [For Developers](./docs/for-developers.md)
- [Example Projects](./examples/)

---

## 🤝 Contributing

Contributions welcome! Read [CONTRIBUTING.md](./CONTRIBUTING.md).

---

## 📄 License

MIT License - see [LICENSE](./LICENSE).

---

## 🔗 Links

- **GitHub:** https://github.com/MuhammadHamidRaza/spec-kit-colearn
- **PyPI:** https://pypi.org/project/spec-kit-colearn/
- **npm:** https://www.npmjs.com/package/@muhammad-hamid-raza/spec-kit-colearn
- **Author:** Muhammad Hamid Raza

---

<div align="center">

**Stop just coding. Start understanding.**

🌟 Star us on GitHub if this helps you learn!

</div>
