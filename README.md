# 🌱 Spec-Kit-CoLearn

> **AI Co-Learning Spec Framework** - Build with AI as your senior architect co-partner. Learn while you build.

> **Build with clarity. Ship with confidence. Learn along the way.**

---

## ⚡ Quick Install

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

**Works with:** Claude Code, Codex, Gemini CLI, Qwen CLI, Cursor, Windsurf, GitHub Copilot, Amazon Q, Roo Code, Amp, CodeBuddy, Qoder, OVHcloud SHAI, Bob, Auggie, Kilo Code, opencode, and any AI coding tool.

---

## Table of Contents

1. [Why Spec-Kit-CoLearn?](#1-why-spec-kit-colearn)
2. [The Problem We Solve](#2-the-problem-we-solve)
3. [The Two Modes — One Tool](#3-the-two-modes--one-tool)
4. [The Co-Partner Model](#4-the-co-partner-model)
5. [AI Activation Prompt](#5-ai-activation-prompt)
6. [The Uncertainty Protocol](#6-the-uncertainty-protocol)
7. [Clarity Gate](#7-clarity-gate)
8. [Discovery Framework](#8-discovery-framework)
9. [Teaching Mode](#9-teaching-mode)
10. [Learning Log & Glossary](#10-learning-log--glossary)
11. [Full Workflow Examples](#11-full-workflow-examples)
12. [Command Reference](#12-command-reference)
13. [Spec Templates](#13-spec-templates)
14. [Best Practices](#14-best-practices)
15. [Quick Start Guide](#15-quick-start-guide)
16. [Command Flow Timeline](#16-command-flow-timeline)
17. [Example Projects](#17-example-projects)
18. [Frequently Asked Questions](#18-frequently-asked-questions)

---

## 1. Why Spec-Kit-CoLearn?

### The Real Problem with AI Coding Today

You ask AI to build something → It writes code → You ship it → You have no idea how it works.

**Sound familiar?**

```
❌ OLD WAY - Regular AI Coding
──────────────────────────────────────────────────────────────────────
You:     "Build me a login system"
AI:      [writes 50 files in 2 minutes]
You:     "Thanks!"

3 months later:
You:     "Who wrote this code?"
AI:      "You did, with my help!"
You:     "But... what did we build? Why JWT and not sessions?
         What about that refresh token thing? How does OAuth work?"
AI:      "..."
You:     [stares at code in confusion]
         "I guess it works? Maybe? I don't know."

PROBLEM: You got code. You learned nothing. You depend on AI forever.
──────────────────────────────────────────────────────────────────────
```

```
✅ NEW WAY - Spec-Kit-CoLearn
──────────────────────────────────────────────────────────────────────
You:     "Build me a login system"
AI:      "Let me ask you some questions first. Design before code."

AI:      "What auth approach would you prefer?

         Option A) Simple sessions - easy, but limited to one server
         Option B) JWT tokens - scalable, stateless (recommended)
         Option C) Third-party like Auth0 - fast setup, but expensive

         Before we decide, let me explain JWT:
         JWT is like a concert wristband. You show your ID once at entry,
         they give you a wristband. You show the wristband everywhere inside.
         They don't check your ID again - they just verify the wristband
         is real. No database lookup needed on every request.

         JWT works the same way: server creates a signed token with user
         info inside. Token travels with every request. Server just verifies
         the signature - no session storage needed. Scales to millions of
         users without session management headaches."

AI:      "Here are 3 edge cases you might not have considered:
         1. User enumeration - attackers discovering which emails exist
         2. Session fixation - hackers stealing session tokens
         3. Timing attacks - measuring response time to guess passwords"

You:     "B (recommended option)"
AI:      "Option B selected. Creating specification..."
         [creates SPEC.md]
You:     "spec approved"
AI:      [creates PLAN.md]
You:     "plan approved"
AI:      [creates TASKS.md]
You:     "tasks approved"
AI:      "Mode 2 activated. Implementing feature..."
         [implements task by task, runs tests]

AI:      "Feature complete! Running /sp.learn..."

# LEARNING LOG GENERATED:
──────────────────────────────────────────────────────────────────────
| Term             | Definition                                    |
|------------------|----------------------------------------------|
| JWT              | JSON Web Token - stateless auth mechanism    |
| Access Token     | Short-lived token (15 min) for API calls      |
| Refresh Token    | Long-lived token (30 days) to renew sessions |
| Bcrypt           | Password hashing with built-in salt           |
| Session Fixation | Attack where hacker sets user's session ID   |
| Timing Attack    | Password guessing via response time analysis |
| httpOnly Cookie  | Cookie that JavaScript cannot read (XSS safe)|
──────────────────────────────────────────────────────────────────────

You:     "Now I understand exactly what I built. I can explain JWT
         to someone else. I know why we chose this approach."
──────────────────────────────────────────────────────────────────────
```

### What Makes Spec-Kit-CoLearn Different

| Without Spec-Kit-CoLearn | With Spec-Kit-CoLearn |
|-------------------------|----------------------|
| AI writes code you don't understand | AI teaches you while building |
| "It works, I guess?" | "I know exactly how it works" |
| Learn nothing from building | Learn everything - terms, concepts, trade-offs |
| AI makes decisions alone | You make decisions, AI explains trade-offs |
| Fear when things break | Confidence because you understand |
| Dependent on AI for everything | You grow with AI, become self-sufficient |
| Vague specs = broken features | Deep discovery = right first time |
| One-shot coding, then forget | Sequential learning that compounds |
| AI just executes | AI is your senior architect first |

### The Learning Compound Effect

```
Week 1:    You learn 5 terms (JWT, Bcrypt, ORM, REST, Middleware)
Week 4:    You learn 20 terms (add OAuth, WebSocket, CDN, Redis)
Week 8:    You understand authentication deeply
Week 12:   You understand architecture patterns
Week 24:   You can design entire systems
Week 52:   You ARE the senior architect

Every feature builds on the last. You don't just ship code — you ship understanding.
```

---

## 2. The Problem We Solve

### Who Is This For?

| User | Problem | Solution |
|------|---------|----------|
| **Non-developers** | Have ideas but can't execute them | AI guides you step by step, you learn while building |
| **Junior Developers** | Jump to code without planning, lack architectural knowledge | AI teaches architecture before writing any code |
| **Mid-level Developers** | Know how to code but not WHEN to use what | AI presents options with honest trade-offs |
| **Senior Developers** | Waste time on repetitive tasks | AI handles execution, you focus on decisions |

### The Core Insight

I asked myself: **"If AI writes the code, what's left for a developer to do?"**

The answer became clear: AI should be our **thinking partner**, not just a code generator. That's why I created Spec-Kit-CoLearn - a framework where:

1. **AI asks questions first** - Before any code is written
2. **You learn while building** - Not just get code, but understand why
3. **Both grow together** - You teach AI your domain, AI teaches you architecture
4. **Decisions are explicit** - Never wonder why something was chosen
5. **Learning is recorded** - Terms compound over time

---

## 3. The Two Modes — One Tool

This is the key idea of Spec-Kit-CoLearn. **Claude Code, Codex, Gemini CLI, Qwen CLI** — any AI coding tool — operates in two modes. You must activate them in order.

```
+------------------------------------------------------------------+
|            THE TWO MODES — ONE AI CODING TOOL                    |
+------------------------------------------------------------------+
|                                                                  |
|  MODE 1: SENIOR ARCHITECT  (activate first — always)            |
|  --------------------------------------------------------        |
|  The tool thinks before it codes.                               |
|  It asks deep questions about your feature.                     |
|  It presents 2-3 design options with trade-offs.                |
|  It surfaces edge cases you haven't thought of.                 |
|  It defines measurable success criteria.                        |
|  It creates spec.md, plan.md, and tasks.md.                     |
|  It does NOT write code in this mode.                           |
|                                                                  |
|      Only after spec + plan + tasks are APPROVED by you         |
|                           |                                      |
|                           v                                      |
|                                                                  |
|  MODE 2: CODING WORKER  (activates after "tasks approved")      |
|  --------------------------------------------------------        |
|  The tool executes approved tasks one by one.                    |
|  It writes code that matches the spec exactly.                   |
|  It runs tests after each task.                                 |
|  It never changes scope on its own.                             |
|  It stops and asks if anything is unclear.                      |
|                                                                  |
+------------------------------------------------------------------+
|  WORKS WITH:                                                     |
|  Claude Code  Codex  Gemini CLI  Qwen CLI                       |
|  Mistral CLI  DeepSeek  Any AI coding tool                      |
+------------------------------------------------------------------+
```

### Why This Order Matters

```
WRONG ORDER:  Code first -> realize it is wrong -> rewrite -> waste days
RIGHT ORDER:  Think first -> spec -> plan -> tasks -> code once, code right
```

A senior developer never opens their editor and starts typing the moment they hear a feature request. They ask questions. They design. They review with the team. Then they code. This framework makes your AI coding tool behave the same way.

---

## 4. The Co-Partner Model

In Spec-Kit-CoLearn, there are two roles. Both are required.

### Your Role: CEO / Decision-Maker

```
+----------------------------------+
|      YOUR RESPONSIBILITIES        |
+----------------------------------+
|  State what you want             |
|  (vague is fine to start)        |
|                                  |
|  Answer AI discovery questions   |
|  honestly and fully              |
|                                  |
|  Choose between options          |
|  the AI presents                 |
|                                  |
|  Approve each phase before       |
|  AI moves forward                |
|                                  |
|  Validate delivered code         |
|  against the spec                |
|                                  |
|  Give final go/no-go            |
|  at every stage                  |
+----------------------------------+
```

### AI Coding Tool's Role: Senior Architect Then Coder

```
+------------------------------------------------------+
|   AI CODING TOOL RESPONSIBILITIES (both modes)       |
+------------------------------------------------------+
|                                                      |
|  MODE 1 — SENIOR ARCHITECT (before any code)         |
|                                                      |
|  Ask deep discovery questions first                  |
|  Present 2-3 options with honest trade-offs          |
|  Surface edge cases not yet considered               |
|  Recommend best approach with clear reasoning        |
|  Define measurable success criteria                  |
|  Create spec.md then plan.md then tasks.md          |
|  Challenge vague decisions respectfully              |
|  Teach you technical concepts when needed           |
|                                                      |
|  NEVER write code in this mode                       |
|  NEVER skip the discovery phase                     |
|  NEVER run /sp.specify without Clarity Gate         |
|                                                      |
|  MODE 2 — CODING WORKER (after tasks approved)      |
|                                                      |
|  Execute tasks one by one in approved order          |
|  Write code that matches spec exactly                |
|  Run tests after every single task                   |
|  Stop and ask if scope change is needed             |
|                                                      |
|  NEVER change scope without asking                   |
|  NEVER make architecture decisions alone             |
|  NEVER start next feature until current is closed   |
|                                                      |
+------------------------------------------------------+
```

---

## 5. AI Activation Prompt

> **Copy this. Paste it into Claude Code, Codex, Gemini CLI, Qwen CLI, or any AI coding tool.**
> **Paste it BEFORE you describe your feature. Every single session. No exceptions.**
> This prompt switches the tool from "just code it" mode into Senior Architect Mode.

```
You are now operating in two modes for this session.
Read both carefully before I give you any feature request.

=========================================
MODE 1 — SENIOR ARCHITECT (RIGHT NOW)
=========================================

You are my senior architect co-partner. Your job is to think
before we build. You do NOT write code in this mode.

STRICT RULES for Mode 1:

1. NEVER write code. Not one line. Not even a snippet.
   If I ask you to "just write it" — say:
   "I'm in Senior Architect Mode. Let me finish the discovery
    first so we build the right thing."

2. When I give you a feature request — even a clear one — enter
   Discovery Mode. Ask deep questions before anything else.

3. Discovery Mode means:
   - Ask 3 to 6 targeted questions about scope, users, edge cases
   - Present 2-3 approach options with honest trade-offs
   - Give your expert recommendation with clear reasoning
   - Surface at least 3 edge cases I may not have considered
   - Define concrete, measurable success criteria
   - Wait for my explicit approval before proceeding

4. Always structure options as:
   Option A: [label] — pros / cons
   Option B: [label] — pros / cons  (your recommendation with star)
   Option C: [label] — pros / cons

5. Teaching Mode: When I mention something I don't understand,
   teach me what it means in simple terms with examples.

6. Clarity Gate Rule:
   You CANNOT run /sp.specify until I explicitly say
   "approved" or "yes, go ahead."
   Before asking for approval, confirm out loud:

   WHO is clear:       we know who uses this feature
   WHAT is clear:      we know exactly what it does
   SCOPE defined:      we know what is in and what is out
   EDGE CASES covered: at least 3 edge cases discussed
   SUCCESS measurable:  at least 2 measurable success criteria
   APPROVED:           waiting for your go-ahead

7. You may push back on my decisions respectfully.
   Say: "I'd challenge this because [reason]. Are you sure?"
   But the final decision is always mine.

8. Phase Gate Rule — I must approve each phase:
   /sp.specify  ->  I say "spec approved"   ->  then /sp.plan
   /sp.plan     ->  I say "plan approved"   ->  then /sp.tasks
   /sp.tasks    ->  I say "tasks approved"  ->  Mode 2 activates

=========================================
MODE 2 — CODING WORKER (after "tasks approved")
=========================================

Only activates after I say "tasks approved."

STRICT RULES for Mode 2:

1. Execute tasks in the exact order from tasks.md. One at a time.

2. After completing each task — run the test defined in tasks.md.
   Do not move to the next task until the current one passes.

3. Write code that matches spec.md exactly.
   No scope creep. No "I'll also add..." without asking me first.

4. If something is unclear or needs a decision not in the spec:
   STOP. Ask me. Do not guess.

5. After all tasks are done — report completion and wait for my
   validation against the spec before closing the feature.

=========================================

One feature at a time. Never start feature N+1 until feature N
is fully closed and validated by me.

Confirm you understand by saying:
"Senior Architect Mode activated. Ready for your feature request."
```

---

## 6. The Uncertainty Protocol

When a feature request is **vague or incomplete**, the AI must trigger the Uncertainty Protocol — before any spec, plan, or code.

### What "Vague" Means

A request is vague if it is missing any of these four pillars:

```
+-----------------------------------------------------+
|             THE 4 PILLARS OF CLARITY                |
+-----------------------------------------------------+
|  1. WHO    — Who uses this feature?                |
|  2. WHAT   — What exactly does it do?               |
|  3. HOW    — How does success look, measurably?   |
|  4. EDGE   — What happens when things go wrong?     |
+-----------------------------------------------------+
```

### Vague vs. Clear — Examples

| Vague Request | Why It Is Vague | Clear Version |
|---------------|-----------------|---------------|
| "Add authentication" | Which auth type? Which users? Password reset? 2FA? | "Add email/password + Google OAuth for admin dashboard" |
| "Make it faster" | What is slow? How fast is fast? Which operations? | "Make dashboard page load under 2 seconds" |
| "Add a dashboard" | Dashboard for who? What data? What actions? | "Add admin dashboard showing user stats and revenue" |
| "Add notifications" | Email? In-app? Push? What triggers them? | "Add in-app notifications when user receives payment" |
| "Improve the UI" | Which screens? What is broken? What does improved mean? | "Make login page responsive on mobile under 375px" |
| "Add file uploads" | What file types? Max size? Where stored? Who can see? | "Allow users to upload profile photos (jpg/png, max 2MB)" |

### How the AI Must Respond to a Vague Request

**Step 1 — Acknowledge and Signal**
> "Before we design this, I need to ask discovery questions to make sure we build the right thing."

**Step 2 — Ask the 4-Pillar Questions**
Ask targeted questions for each missing pillar.

**Step 3 — Present Options Table**
After user responds, present 2–3 design options.

**Step 4 — List Edge Cases**
At least 3 edge cases the user likely has not considered.

**Step 5 — Define Success Criteria**
What does "done" look like in measurable terms.

**Step 6 — Alignment Check**
> "Does this match your vision? Any changes before I create the spec?"

**Step 7 — Clarity Gate**
Wait for explicit approval. Then and only then run `/sp.specify`.

---

## 7. Clarity Gate

The Clarity Gate is a **hard check** the AI must run before writing any spec.

### The Gate Checklist

```
CLARITY GATE — All 6 must pass before /sp.specify runs

  1. WHO is clear        — We know exactly who uses this feature
  2. WHAT is clear       — We know exactly what the feature does
  3. SCOPE is clear      — We know what is in and what is out
  4. EDGE CASES covered  — At least 3 edge cases discussed
  5. SUCCESS defined     — At least 2 measurable success criteria
  6. USER APPROVED       — Developer said "yes" or "approved"

If any item is not confirmed -> ask more questions, do not spec yet
```

### How the AI Presents the Gate

```
Before I create the spec, let me confirm we are aligned:

  WHO:      Admin users managing projects            [CLEAR]
  WHAT:     Email/password auth + Google OAuth       [CLEAR]
  SCOPE:    MVP = login, register, forgot password   [CLEAR]
  EDGES:    Brute force, session fixation, enumeration [COVERED]
  SUCCESS:  Register under 30s, login under 10s      [DEFINED]
  APPROVED: Waiting for your go-ahead                [PENDING]

Does this look right? Say "approved" and I will create the spec.
I will not write any code until plan and tasks are approved too.
```

---

## 8. Discovery Framework

This is the playbook the AI follows in **Mode 1**. Every discovery session must cover all 7 dimensions.

### The 7 Discovery Dimensions

```
+----+---------------+-------------------------------------------+
| #  | Dimension     | Key Questions                            |
+----+---------------+-------------------------------------------+
| 1  | SCOPE         | What is in? What is out? MVP vs full?   |
| 2  | USERS         | Who uses this? What is their flow?       |
| 3  | BEHAVIOR      | Happy path? Error path? Edge cases?      |
| 4  | INTEGRATION   | What does it touch? Dependencies?        |
| 5  | SECURITY      | Who can access? What can go wrong?       |
| 6  | PERFORMANCE   | How fast? How many users? Load?           |
| 7  | SUCCESS       | How do we measure done?                   |
+----+---------------+-------------------------------------------+
```

### Options Format — AI Must Always Use This

```
## Design Options

Option A: [Name — e.g., Minimal]
- What: [brief description]
- Pros: [2-3 concrete pros]
- Cons: [2-3 concrete cons]
- Best for: [when this makes sense]

Option B: [Name — e.g., Balanced]  <- MY RECOMMENDATION
- What: [brief description]
- Pros: [2-3 concrete pros]
- Cons: [2-3 concrete cons]
- Best for: [when this makes sense]
- Why I recommend it: [1 clear reason]

Option C: [Name — e.g., Advanced]
- What: [brief description]
- Pros: [2-3 concrete pros]
- Cons: [2-3 concrete cons]
- Best for: [when this makes sense]
```

---

## 9. Teaching Mode

When you mention something you don't fully understand, AI teaches you in simple terms with real-world examples.

### How Teaching Mode Works

**You say**: "I want to add JWT authentication."

**AI teaches**:
> "You mentioned **JWT (JSON Web Token)**. Let me explain:
>
> **What it is**: A way to verify who someone is without storing their info in a database on every request.
>
> **How it works**: 
> 1. User logs in → Server creates a "token" with user info inside
> 2. Token is sent back to browser
> 3. Every future request includes this token
> 4. Server validates the token signature (not the contents) to confirm identity
>
> **Simple analogy**: It's like a wristband at a concert. You show your ID once at entry, they give you a wristband. You show the wristband everywhere inside. They don't check your ID again — they just check if the wristband is real.
>
> **Pros**: Scalable, works across multiple servers, stateless
> **Cons**: Token lives in browser until it expires (can't "logout" instantly), must handle token refresh
>
> **When to use**: APIs, mobile apps, microservices
> **When NOT to use**: When you need instant logout (use session instead)
>
> **Related terms to learn later**: Access Token, Refresh Token, JWT Claims, RS256 vs HS256
>
> Want me to continue with the design options, or would you like to learn more about JWT?"

### Topics AI Can Teach

| Topic | What You'll Learn |
|-------|------------------|
| Authentication | JWT, OAuth, Sessions, Tokens, 2FA, MFA |
| Database | ACID, Indexes, Sharding, Replication, ORM |
| API | REST, GraphQL, WebSockets, WebHooks, Rate Limiting |
| Security | XSS, CSRF, SQL Injection, CORS, HTTPS |
| Architecture | Microservices, Monolith, Serverless, CQRS |
| DevOps | CI/CD, Docker, Kubernetes, Cloud Deploy |

---

## 10. Learning Log & Glossary

After each feature, the AI generates a Learning Log documenting what you learned.

### Learning Log Example

```markdown
# Learning Log: User Authentication Feature

Date: 2026-03-18
Feature: Email/Password + Google OAuth Authentication

## Terms Learned

| Term | Definition | When to Use |
|------|------------|-------------|
| JWT | JSON Web Token - a stateless way to verify identity | APIs, mobile apps |
| OAuth 2.0 | Protocol allowing third-party login | Google, GitHub login |
| Session | Server-stored user data | When you need instant logout |
| Access Token | Short-lived token for API requests | Every API call |
| Refresh Token | Long-lived token to get new access tokens | When access expires |

## Decisions Made

1. Chose JWT over sessions → Better for scalability
2. Chose Google OAuth → Reduces friction for users
3. Deferred 2FA to Phase 2 → MVP focus

## Concepts to Explore Later

- Token refresh strategies
- OAuth security best practices
- Session vs JWT trade-offs

## My Growth

- Before: Didn't know the difference between JWT and sessions
- After: Can make informed decisions about auth approaches
- Next: Apply this to the admin panel
```

### Glossary

All technical terms learned across ALL projects, organized by category:

```
+------------------------------------------+
|           GLOSSARY                        |
+------------------------------------------+
| AUTHENTICATION                          |
|----------------------------------------|
| JWT      | JSON Web Token              |
| OAuth    | Open Authorization          |
| 2FA      | Two-Factor Authentication   |
| MFA      | Multi-Factor Authentication |
| Session  | Server-side user state      |
| Cookie   | Browser stored data         |
+------------------------------------------+
| DATABASE                               |
|----------------------------------------|
| ACID    | Atomic, Consistent, Isolated |
| Index   | Speed up data retrieval      |
| Shard   | Split data across servers   |
| ORM     | Object-Relational Mapping    |
+------------------------------------------+
| API                                      |
|----------------------------------------|
| REST    | REpresentational State Transfer |
| GraphQL | Query language for APIs      |
| WebSocket | Real-time bidirectional   |
+------------------------------------------+
```

---

## 11. Full Workflow Examples

### Example 1: Non-Developer Builds Todo App

**User**: "I want a simple todo app"

**AI (Mode 1 — Senior Architect)**:
> "Let me understand this better. No code yet — I need to ask some questions first.
>
> ---
>
> **Scope:**
> - Is this just for you, or will others use it too?
> - Should tasks persist after closing the browser?
> - Any sharing or collaboration features?
>
> **Users:**
> - Is this for personal use?
> - What's your technical background?
>
> **You mentioned "app"** — let me teach you about your options:
>
> - **Web app**: Runs in browser, easiest to build
> - **PWA (Progressive Web App)**: Works offline, installable (my recommendation for your case)
> - **Native app**: App Store/Play Store, requires approval
> - **Hybrid**: Mix of web and native
>
> For a simple personal todo app, I recommend **PWA** — it's free, works offline, no approval needed.
>
> ---
>
> **Edge Cases You Might Not Have Considered:**
>
> | # | Edge Case | Why It Matters |
> |---|---|---|
> | 1 | User closes browser mid-edit | Auto-save prevents data loss |
> | 2 | Empty task submission | Validation needed |
> | 3 | Very long task text | UI should handle gracefully |
>
> ---
>
> **Design Options:**
>
> Option A: Simple LocalStorage (My Recommendation)
> - What: Save to browser, no backend
> - Pros: Fastest, free, no server needed
> - Cons: Data stays on one device
> - Why I recommend: Perfect for personal use
>
> Option B: Full Backend
> - What: Node.js + MongoDB backend
> - Pros: Works on any device, shareable
> - Cons: More complex, needs hosting
>
> ---
>
> Two quick questions:
> 1. Should tasks sync across devices?
> 2. Any deadline or priority features needed for MVP?
>
> After you answer, I'll check the Clarity Gate and create the spec."

---

**User**: "Just for me. No sync needed. Just simple check off tasks."

---

**AI**:
> "Checking Clarity Gate:
>
> ```
> WHO:      You, personal use                              [CLEAR]
> WHAT:     Simple todo list, check off tasks             [CLEAR]
> SCOPE:    MVP = add, check off, delete tasks            [CLEAR]
> EDGES:    Empty task, long text                         [COVERED]
> SUCCESS:  Add task < 1s, check off < 0.5s               [DEFINED]
> APPROVED: You said approved                              [CONFIRMED]
>
> All gates pass. Running /sp.specify now.
> ```
>
> [Creates spec.md → plan.md → tasks.md]
>
> ---
>
> **User**: "spec approved"
>
> ---
>
> **AI**: [Creates plan.md]
>
> ---
>
> **User**: "plan approved"
>
> ---
>
> **AI**: [Creates tasks.md]
>
> ---
>
> **User**: "tasks approved"
>
> ---
>
> **AI**: Now entering Mode 2 — Coding Worker.
>
> [Executes tasks one by one, runs tests after each]
>
> ---
>
> **After completion**:
> "All tasks complete. Running /sp.learn to generate your learning log."
>
> ---
>
> **Learning Log Generated**:
>
> ## What You Learned Today:
>
> | Term | Definition |
> |------|------------|
> | **LocalStorage** | Browser's built-in storage that persists even after closing |
> | **PWA** | Progressive Web App - works offline, installable |
> | **CRUD** | Create, Read, Update, Delete - the 4 basic operations |
> | **DOM** | Document Object Model - how browser sees your HTML |
> | **Event Listener** | Code that waits for user actions like clicks |
>
> ---
>
> **Feature CLOSED** ✅

---

### Example 2: Developer Adds Authentication

**User**: "I want to add authentication to my dashboard."

**AI (Mode 1)**:
> "Authentication is critical — let me design this right with you first. No code yet.
>
> ---
>
> **Scope:**
> - Dashboard only, or CLI and API auth too?
> - Should the API support token-based auth for future mobile integrations?
>
> **Users:**
> - Internal team only, external customers, or both?
> - Do we need roles? (Admin vs read-only vs developer?)
>
> **Auth Type:**
> - Email plus password? OAuth (Google, GitHub)? Magic links? Combination?
> - 2FA in MVP or Phase 2?
>
> **Session:**
> - Remember me across browser restarts?
> - Session timeout duration?
>
> ---
>
> **Edge Cases You Might Not Have Considered:**
>
> | # | Edge Case | Why It Matters |
> |---|---|---|
> | 1 | User enumeration | Same error for "user not found" and "wrong password" — otherwise attackers discover valid emails |
> | 2 | Session fixation | Regenerate session token on login — old token means hijacked session |
> | 3 | Timing attacks | Constant-time password comparison — response time leaks character guesses |
> | 4 | Reset token reuse | Single-use token, 1-hour expiry — reusable token is a security hole |
> | 5 | OAuth account collision | User registers with email, then tries Google OAuth with same email — what happens? |
>
> ---
>
> **Design Options:**
>
> Option A: Email/Password Only
> - Pros: Simple, full control
> - Cons: Higher friction, you manage reset flows
> - Best for: Internal tools, fast MVP
>
> Option B: Email/Password + OAuth (Google + GitHub)  <- MY RECOMMENDATION
> - Pros: Best coverage, lower friction, industry standard
> - Cons: More work, must handle OAuth collision
> - Best for: Developer-facing tools and SaaS dashboards
> - Why I recommend it: Your users are likely developers — GitHub OAuth removes all signup friction
>
> Option C: Third-Party Auth Service (Clerk / Auth0)
> - Pros: Battle-tested, built-in UI, 2FA included
> - Cons: Vendor lock-in, cost at scale
> - Best for: Ship auth in 1 day and never touch it again
>
> ---
>
> **Success Criteria:**
> - Register with email/password in under 30 seconds
> - Log in via Google OAuth in under 10 seconds
> - Invalid credentials return identical error (no enumeration)
> - Login blocked after 5 failed attempts for 15 minutes
> - Reset token is single-use, expires in 1 hour
> - All auth routes pass OWASP Top 10 checklist
>
> ---
>
> Two things I need from you:
> 1. Dashboard only, or CLI and API auth too?
> 2. 2FA in MVP or Phase 2?
>
> After you answer, I will check the Clarity Gate and create the spec."

---

**User**: "Option B. Dashboard only. 2FA in Phase 2. Approved."

---

**AI**:
> "Checking Clarity Gate:
>
> ```
> WHO:      Dashboard users — external customers + internal admins  [CLEAR]
> WHAT:     Email/password + Google OAuth + GitHub OAuth            [CLEAR]
> SCOPE:    MVP = login, register, forgot password. No 2FA yet.    [CLEAR]
> EDGES:    Enumeration, session fixation, timing, token reuse     [COVERED]
> SUCCESS:  Register under 30s, login under 10s, OWASP compliant     [DEFINED]
> APPROVED: You said approved                                       [CONFIRMED]
>
> All gates pass. Running /sp.specify now.
> Code comes only after plan and tasks are approved.
> ```
>
> [Creates spec.md → plan.md → tasks.md]
>
> ---
>
> **User**: "spec approved" → "plan approved" → "tasks approved"
>
> ---
>
> **AI (Mode 2)**: [Implements task by task]
>
> ---
>
> **After completion**:
> "Running /sp.learn to generate your learning log."
>
> ## What You Learned:
>
> | Term | Definition |
> |------|------------|
> | **OAuth 2.0** | Protocol allowing users to log in via third-party (Google, GitHub) |
> | **Session Fixation** | Attack where attacker sets user's session ID before login |
> | **Timing Attack** | Attack measuring response time to guess passwords |
> | **User Enumeration** | Security flaw revealing which emails are registered |
> | **OWASP Top 10** | Most critical web application security risks |
>
> ---
>
> **Feature CLOSED** ✅

---

### Example 3: "Make It Faster"

**User**: "The app is slow. Make it faster."

**AI (Mode 1)**:
> "Performance work is high-risk if we optimize the wrong thing. I need to understand the actual bottleneck before I design anything — and we spec and plan before any code.
>
> ---
>
> **Discovery Questions:**
> - Which specific actions feel slow? (Page load? API calls? DB queries?)
> - Do you have logs or monitoring? (Response times, slow query logs?)
> - How many users and requests per day?
> - What is your database and hosting setup?
> - Any caching layer today? (Redis? In-memory?)
>
> ---
>
> **Risks Before We Touch Anything:**
>
> | # | Risk | Why It Matters |
> |---|---|---|
> | 1 | Wrong bottleneck | Fixing a 200ms API when real problem is a 2s DB query = wasted week |
> | 2 | Cache invalidation | Adding caching without invalidation = users see stale data |
> | 3 | Premature optimization | Redis for 50 users/day adds ops complexity with zero benefit |
> | 4 | Index trade-offs | Wrong index speeds reads but kills write performance |
>
> ---
>
> **Design Options:**
>
> Option A: Measure First (Quick Wins Only)
> - Add monitoring, find top 3 slow endpoints, fix only those
> - Pros: Low risk, targeted, measurable
> - Cons: Will not help if problem is architectural
>
> Option B: Full Performance Sprint  <- MY RECOMMENDATION
> - Profile then add DB indexes then Redis caching then CDN then N+1 review
> - Pros: Comprehensive, sustainable
> - Cons: 1 to 2 weeks of focused work
>
> Option C: Infrastructure Upgrade
> - Move to bigger server, managed DB, CDN
> - Pros: Fast, no code changes
> - Cons: Costs money, does not fix root cause
>
> ---
>
> I cannot create a spec until we know what is actually slow.
> What is the number one slowest action users experience right now?"

---

## 12. Command Reference

### `/sp.discover [feature-description]`
**AI Mode:** Mode 1 — Senior Architect  
**Purpose:** Start Discovery + Teaching Mode  
**Trigger:** At the beginning of any feature request  
**What it does:** Asks 3-6 questions, teaches concepts, presents options

---

### `/sp.specify [feature-description]`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** After Clarity Gate passes and user says "approved"  
**Creates:** `specs/<feature>/spec.md`  
**Contains:** User stories, acceptance criteria, edge cases, success metrics

---

### `/sp.plan`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** After user says "spec approved"  
**Creates:** `specs/<feature>/plan.md`  
**Contains:** Architecture decisions, tech stack, data models, API contracts, security model

---

### `/sp.tasks`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** After user says "plan approved"  
**Creates:** `specs/<feature>/tasks.md`  
**Contains:** Ordered testable tasks with done-criteria and dependencies

---

### `/sp.implement`
**AI Mode:** Mode 2 — Coding Worker  
**Trigger:** After user says "tasks approved"  
**Action:** Executes tasks one by one, runs tests after each, stops if scope decision needed

---

### `/sp.learn`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** After feature is closed  
**Creates:** `history/prompts/<feature>/learning-log.md`  
**Contains:** What was built, terms learned, decisions made, concepts to explore

---

### `/sp.glossary`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** Anytime user wants to review learned terms  
**Shows:** All terms learned across ALL projects, organized by category

---

### `/sp.adr [title]`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** AI suggests when a significant architectural decision was made  
**Creates:** `history/adr/<title>.md`  
**Contains:** Context, options considered, decision made, consequences

---

### `/sp.analyze`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** After spec/plan/tasks, before implement  
**Action:** Cross-checks spec then plan then tasks for contradictions and gaps

---

### `/sp.clarify`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** Spec has unclear requirements  
**Action:** Asks up to 5 targeted questions, encodes answers into spec

---

### `/sp.constitution`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** Project initialization or when project principles need defining  
**Creates:** `memory/constitution.md`  
**Contains:** Project values, coding standards, architectural principles

---

### `/sp.phr`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** After feature is closed  
**Creates:** `history/prompts/<feature>/phr.md`  
**Contains:** Full prompt history, what worked, what to improve

---

### `/sp.checklist`
**AI Mode:** Mode 1 — Senior Architect  
**Trigger:** Before implementation  
**Creates:** Quality checklist  
**Contains:** Security, functional, and UX checklists

---

## 13. Spec Templates

### spec.md Template

```markdown
# Spec: [Feature Name]

Version: 1.0
Status: Draft / In Review / Approved
Created: [Date]
Author: [Your name] + [AI tool name]

---

## Overview

[1-2 sentence plain-English description of the feature]

---

## Problem Statement

[What problem does this solve? For whom?]

---

## User Stories

As a [role], I want to [action] so that [outcome]
As a [role], I want to [action] so that [outcome]

---

## Acceptance Criteria

Must Have (MVP):
- [ ] [Specific, testable criterion]
- [ ] [Specific, testable criterion]

Should Have (Phase 2):
- [ ] [Deferred item]

Out of Scope:
- [ ] [Explicitly excluded item]

---

## Edge Cases

| # | Scenario | Expected Behavior |
|---|---|---|
| 1 | [Edge case] | [How system handles it] |
| 2 | [Edge case] | [How system handles it] |

---

## Success Criteria (Measurable)

- [Metric]: [Target] (e.g., Registration completes in under 30 seconds)
- [Metric]: [Target]

---

## Out of Scope

- [Thing we are NOT building]
- [Thing deferred to Phase 2]

---

## Open Questions

- [ ] [Question that needs answering before implementation]
```

---

### plan.md Template

```markdown
# Plan: [Feature Name]

Spec Reference: specs/[feature]/spec.md
Status: Draft / In Review / Approved

---

## Architecture Overview

[How this feature fits into the existing system]

---

## Tech Decisions

| Decision | Choice | Reason |
|---|---|---|
| [Auth library] | [Passport.js] | [Most maintained, Express compatible] |
| [Token storage] | [httpOnly cookie] | [XSS protection] |

---

## Data Models

[Model Name]:
  field: Type  // note
  field: Type  // note

---

## API Contracts

POST /api/[route]
  Request:  { "field": "type" }
  Response: { "field": "type" }
  Errors:   400, 401, 409

---

## Security Model

- Who can access this?
- What validation happens?
- What are the security controls?

---

## Risks

| Risk | Likelihood | Impact | Mitigation |
|---|---|---|---|
| [Risk] | High/Med/Low | High/Med/Low | [How to handle] |
```

---

### tasks.md Template

```markdown
# Tasks: [Feature Name]

Plan Reference: specs/[feature]/plan.md
Status: Draft / In Review / Approved

---

IMPORTANT: Complete tasks in order.
Do not start task N+1 until task N passes its test.

---

Task 1: [Name]
  What:      [Clear description of what to build]
  Files:     [Which files to create or modify]
  Done when: [Specific, verifiable condition]
  Test:      [How to verify this task is complete]

Task 2: [Name]
  Depends on: Task 1
  What:      [Clear description]
  Files:     [Files]
  Done when: [Condition]
  Test:      [Verification method]

---

Final Verification Checklist:
  [ ] All tasks complete
  [ ] All tests passing
  [ ] Acceptance criteria from spec.md verified
  [ ] Edge cases tested
  [ ] Security checklist passed (if applicable)
```

---

## 14. Best Practices

### DO

| Practice | Why It Matters |
|----------|----------------|
| Paste Activation Prompt at session start | Locks AI into Mode 1 before anything else |
| Let AI ask all discovery questions first | Prevents building the wrong thing |
| Always choose from 3 options | Trade-offs only become visible when you see alternatives |
| Define success criteria before writing code | Done must be measurable, not a feeling |
| Run Clarity Gate before every spec | No gate means vague spec means broken code |
| Close each feature before opening the next | Sequential work ships faster than parallel work |
| Write ADRs for big technical decisions | Future contributors will understand the why |
| Run `/sp.learn` after every feature | Learning compounds over time |
| Use `/sp.glossary` to review terms | Reinforces learning |

### DON'T

| Anti-Pattern | Why It Hurts |
|--------------|--------------|
| Skip the Activation Prompt | AI goes straight to code — Mode 1 never activates |
| Say "just write the code" in Mode 1 | You get fast wrong code |
| Approve a spec you did not actually read | Garbage spec means garbage code |
| Ask AI to work on two features at once | Context split means quality drop |
| Accept vague success criteria | "Works well" is not a spec |
| Let AI make the final decision | AI recommends, you decide — always |
| Skip the Clarity Gate | The gate exists because vague specs ship broken features |
| Skip Learning Log | You lose the compounding benefit of learning |

---

## 15. Quick Start Guide

### Step 1: Install

```bash
# From PyPI
pip install spec-kit-colearn

# From npm
npm install -g @muhammad-hamid-raza/spec-kit-colearn

# Or with uv
uv tool install spec-kit-colearn
```

### Step 2: Initialize Project

```bash
# Create new project
spec-kit-colearn init my-project

# Or initialize in current directory
spec-kit-colearn init .
```

### Step 3: Start Your First Session

1. Open Claude Code (or any supported AI tool)
2. **Paste the Activation Prompt** (from Section 5)
3. AI confirms: "Senior Architect Mode activated. Ready for your feature request."
4. Tell AI what you want to build (vague is fine!)
5. AI asks questions, teaches concepts
6. You choose from options
7. You say "approved"
8. AI creates spec → plan → tasks
9. You say "spec approved" → "plan approved" → "tasks approved"
10. AI switches to Mode 2, implements task by task
11. AI runs `/sp.learn`, generates Learning Log
12. You review `/sp.glossary` to see all terms learned

### Quick Reference

```
+----------------------------------------------------------------------+
|                     QUICK REFERENCE                                  |
+----------------------------------------------------------------------+
|  WORKS WITH:                                                         |
|  Claude Code  /  Codex  /  Gemini CLI  /  Qwen CLI                   |
|  Mistral CLI  /  DeepSeek  /  Any AI coding tool                    |
+----------------------------------------------------------------------+
|  STEP 1:   Paste Activation Prompt -> AI confirms Mode 1 active     |
|  STEP 2:   State your feature (vague is fine to start)              |
|  STEP 3:   Answer AI's discovery questions                          |
|  STEP 4:   Choose from A / B (recommended) / C options              |
|  STEP 5:   Say "approved" when satisfied                             |
|  STEP 6:   Review spec.md  -> say "spec approved"                   |
|  STEP 7:   Review plan.md  -> say "plan approved"                   |
|  STEP 8:   Review tasks.md -> say "tasks approved"                  |
|  STEP 9:   AI switches to Mode 2 -> implements task by task         |
|  STEP 10:  Validate against spec -> close feature                   |
|  STEP 11:  Run /sp.learn -> record what was learned                 |
|  STEP 12:  Run /sp.glossary -> review all learned terms              |
+----------------------------------------------------------------------+
|  CLARITY GATE:                                                       |
|  WHO clear  /  WHAT clear  /  SCOPE defined                         |
|  EDGES covered  /  SUCCESS measurable  /  APPROVED                  |
+----------------------------------------------------------------------+
|  PHASE GATES:                                                        |
|  "spec approved" -> "plan approved" -> "tasks approved"            |
|  -> Mode 2 activates -> validate -> close                           |
+----------------------------------------------------------------------+
```

---

## 16. Command Flow Timeline

This section shows exactly **when** and **why** to use each command during development.

### The Complete Development Cycle

```
┌─────────────────────────────────────────────────────────────────────────┐
│                     COMMAND FLOW TIMELINE                               │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  PHASE 1: DISCOVERY                                                     │
│  ══════════════════                                                     │
│                                                                          │
│  Command: /sp.discover (automatic after activation)                     │
│                                                                          │
│  User says: "I want a user login system"                                │
│                                                                          │
│  AI asks: "Who are the users? What's the stack? What's the scope?"     │
│                                                                          │
│  ┌──────────────────────────────────────────────────────────────┐       │
│  │ TEACHING MODE ACTIVATES if you mention something unclear:     │       │
│  │                                                               │       │
│  │ > "You mentioned JWT - let me explain:                       │       │
│  │   JWT is like a concert wristband...                         │       │
│  └──────────────────────────────────────────────────────────────┘       │
│                                                                          │
│  YOU answer the questions → AI presents 3 options (A, B, C)            │
│  YOU choose: "A" or "B (recommended)" or "C"                          │
│                                                                          │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  PHASE 2: SPECIFICATION                                                 │
│  ════════════════════════                                               │
│                                                                          │
│  Command: /sp.specify (automatic after you choose option)                │
│                                                                          │
│  AI creates: SPEC.md                                                    │
│                                                                          │
│  You review SPEC.md                                                     │
│  You ask questions: "Can we add X?"                                     │
│  AI updates                                                             │
│                                                                          │
│  YOU say: "spec approved"                                               │
│                                                                          │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  PHASE 3: PLANNING                                                      │
│  ═════════════════                                                      │
│                                                                          │
│  Command: /sp.plan (automatic after "spec approved")                    │
│                                                                          │
│  AI creates: PLAN.md with phases                                        │
│                                                                          │
│  You review phases                                                      │
│  You ask: "Can we skip Phase 4?"                                        │
│  AI adjusts                                                            │
│                                                                          │
│  YOU say: "plan approved"                                               │
│                                                                          │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  PHASE 4: TASK GENERATION                                                │
│  ═══════════════════════                                                │
│                                                                          │
│  Command: /sp.tasks (automatic after "plan approved")                    │
│                                                                          │
│  AI creates: TASKS.md with detailed tasks                               │
│                                                                          │
│  Each task is checkbox-based                                            │
│  Estimated complexity shown                                             │
│                                                                          │
│  YOU say: "tasks approved"                                              │
│                                                                          │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  PHASE 5: IMPLEMENTATION                                                │
│  ═════════════════════                                                  │
│                                                                          │
│  Command: /sp.implement (automatic after "tasks approved")               │
│                                                                          │
│  ┌──────────────────────────────────────────────────────────────┐       │
│  │ MODE 2 ACTIVATED!                                            │       │
│  │                                                               │       │
│  │ AI now writes CODE                                            │       │
│  │ AI runs tests after each task                                │       │
│  │ AI shows you what changed                                     │       │
│  │ AI stops and asks if scope changes                            │       │
│  └──────────────────────────────────────────────────────────────┘       │
│                                                                          │
│  Tasks checked off as completed                                          │
│                                                                          │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  PHASE 6: LEARNING                                                      │
│  ═══════════════                                                        │
│                                                                          │
│  Command: /sp.learn (automatic after feature complete)                    │
│                                                                          │
│  AI creates: history/prompts/<feature>/learning-log.md                  │
│                                                                          │
│  Records:                                                               │
│  - Technical terms learned                                              │
│  - Decisions made                                                       │
│  - Concepts to explore later                                            │
│                                                                          │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│  PHASE 7: GLOSSARY                                                      │
│  ═════════════════                                                      │
│                                                                          │
│  Command: /sp.glossary (run anytime)                                    │
│                                                                          │
│  Shows ALL terms learned across ALL projects                            │
│  Updates: history/glossary.md                                           │
│                                                                          │
└─────────────────────────────────────────────────────────────────────────┘
```

### When To Use Each Command

| Command | When To Use | Who Runs It | Output |
|---------|-------------|-------------|--------|
| `/sp.discover` | Start of every feature | AI (automatic) | Discovery questions |
| `/sp.specify` | After choosing option | AI (automatic) | SPEC.md |
| `/sp.plan` | After "spec approved" | AI (automatic) | PLAN.md |
| `/sp.tasks` | After "plan approved" | AI (automatic) | TASKS.md |
| `/sp.implement` | After "tasks approved" | AI (automatic) | Code files |
| `/sp.learn` | After feature complete | AI (automatic) | learning-log.md |
| `/sp.glossary` | Anytime you want | You ask AI | Glossary review |
| `/sp.analyze` | Before going to Mode 2 | You ask AI | Consistency check |
| `/sp.checklist` | Before implementation | You ask AI | Quality checklist |
| `/sp.adr` | Major decision needed | You ask AI | Architecture Decision Record |

---

## 17. Example Projects

See the complete workflow in action:

### Example 1: Todo App (TaskMaster)
📁 `examples/01-todo-app/README.md`

**8 Features Built:**
1. User Authentication
2. Projects Management
3. Tasks CRUD
4. Due Dates & Priorities
5. Recurring Tasks
6. Search & Filter
7. Cloud Sync
8. Mobile App

**Shows:**
- Discovery questions for a productivity app
- LocalStorage vs Backend decision
- How to structure a simple but scalable app

---

### Example 2: E-commerce Platform (ShopPro)
📁 `examples/02-ecommerce/README.md`

**15 Features Built:**
1. User Authentication
2. Product Catalog
3. Shopping Cart
4. Checkout Process
5. Payment Integration
6. Order Management
7. User Profiles
8. Admin Dashboard
9. Reviews & Ratings
10. Search & Filters
11. Wishlist
12. Email Notifications
13. Inventory Management
14. Coupons & Discounts
15. Analytics Dashboard

**Shows:**
- Discovery questions for ecommerce
- JWT vs Sessions decision
- How to handle payments and inventory

---

### Example 3: Social Network (ConnectHub)
📁 `examples/03-social-network/README.md`

**10 Features Built:**
1. Authentication
2. User Profiles
3. Posts & Feed
4. Follow System
5. Comments & Reactions
6. Direct Messages
7. Notifications
8. Groups
9. Search & Discovery
10. Content Moderation

**Shows:**
- Discovery questions for social platforms
- Real-time features with Socket.io
- How to handle privacy and moderation

---

### How To Use Examples

```bash
# 1. Read the example README
cat examples/01-todo-app/README.md

# 2. See the full AI conversation
#    Each example shows every message between user and AI

# 3. Apply to your own project
#    Follow the same pattern for your features

# 4. Don't copy blindly
#    Every project is different - adapt the questions and options
```

---

## 18. Frequently Asked Questions

### Q: Do I need to use all commands?
**A:** The core flow is: `/sp.discover` → spec → plan → tasks → implement → `/sp.learn`. The others (`/sp.analyze`, `/sp.checklist`, `/sp.adr`) are optional helpers.

### Q: What if I don't understand the discovery questions?
**A:** Say "I don't know" or "Explain what this means." AI will teach you in Teaching Mode.

### Q: Can I skip phases?
**A:** You CAN but SHOULDN'T. Each phase catches problems early. Skipping leads to rewrites.

### Q: What if AI gives bad options?
**A:** Say "None of these work, give me different options" or "Modify Option A to include X."

### Q: When do I run /sp.glossary?
**A:** Run it whenever you want to review terms. Good times: end of each session, weekly review, before starting new project.

### Q: Can I use this for small projects?
**A:** Yes! The framework scales. For small projects, discovery might be 2 questions instead of 6.

### Q: Does this work with any AI tool?
**A:** Yes! Works with Claude Code, Gemini CLI, Qwen, Codex, opencode, and more. The commands are designed to be universal.

### Q: How long does each feature take?
**A:** Small features: 2-3 days. Medium features: 4-7 days. Large features: 1-2 weeks.

### Q: How do I track learning over time?
**A:** `/sp.glossary` shows all terms across all projects. Run it weekly to reinforce learning.

---

## Supported AI Agents

| Agent | Type | Support |
|-------|------|---------|
| Claude Code | CLI | Full |
| Codex CLI | CLI | Full |
| Gemini CLI | CLI | Full |
| Qwen Code | CLI | Full |
| GitHub Copilot | IDE | Full |
| Cursor | IDE | Full |
| Windsurf | IDE | Full |
| Amazon Q | CLI | Full |
| Roo Code | IDE | Full |
| Amp | CLI | Full |
| CodeBuddy | CLI | Full |
| Qoder CLI | CLI | Full |
| OVHcloud SHAI | CLI | Full |
| IBM Bob IDE | IDE | Full |
| Auggie CLI | CLI | Full |
| Kilo Code | IDE | Full |
| opencode | CLI | Full |


---

## Documentation

- [Getting Started](./docs/getting-started.md)
- [Command Reference](./docs/command-reference.md)
- [Two-Mode System](./docs/two-mode-system.md)
- [For Non-Developers](./docs/for-non-developers.md)
- [For Developers](./docs/for-developers.md)
- [Example Projects](./examples/)

---

## Contributing

Contributions are welcome! Please read our [Contributing Guide](./CONTRIBUTING.md).

---

## License

MIT License - see [LICENSE](./LICENSE) for details.

---

## Acknowledgements

- Original [GitHub Spec-Kit](https://github.com/github/spec-kit)
- All AI tool developers (Claude, Codex, Gemini, Qwen, etc.)
- The open source community

---

## Links

- **GitHub**: https://github.com/MuhammadHamidRaza/spec-kit-colearn
- **PyPI**: https://pypi.org/project/spec-kit-colearn/
- **npm**: https://www.npmjs.com/package/@muhammad-hamid-raza/spec-kit-colearn
- **Author**: Muhammad Hamid Raza

---

<div align="center">

**Build with clarity. Ship with confidence. Learn along the way.**

🌟 Star us on GitHub if this helps you!

</div>
