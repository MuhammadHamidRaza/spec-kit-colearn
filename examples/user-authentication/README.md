# Example Project 1: User Authentication System

## Overview
This example shows how to build a complete user authentication system using Spec-Kit-CoLearn with all /sp commands.

---

## Project Setup

```bash
# Install
pip install spec-kit-colearn
# or
npm install -g @muhammad-hamid-raza/spec-kit-colearn

# Initialize
spec-kit-colearn init user-auth-system
cd user-auth-system
```

---

## Complete /sp Command Flow

### Step 1: Constitution
```
/sp.constitution Create principles focused on code quality, testing standards, security requirements, and performance. Include governance for password hashing, token storage, and session management.
```
**Creates:** `.specify/memory/constitution.md`

---

### Step 2: Specify (What to Build)
```
/sp.specify Build a user authentication system with email/password login, user registration, password reset via email, session management with JWT tokens, and account lockout after failed attempts.
```
**Creates:** `specs/<feature>/spec.md`

---

### Step 3: Clarify (Requirements)
```
/sp.clarify We need: Both web and mobile users (Option C), Email/Password only (Option A), HTTP-only cookies with refresh tokens (Option B), Node.js + Express + MongoDB (Option A), No additional edge cases.
```
**Updates:** Clarifies and records answers in spec

---

### Step 4: Plan (Technical)
```
/sp.plan Use Node.js with Express framework, MongoDB for database, bcrypt for password hashing, jsonwebtoken for JWT tokens, cookie-parser for HTTP-only cookies.
```
**Creates:** `specs/<feature>/plan.md`

---

### Step 5: Analyze (Consistency Check)
```
/sp.analyze
```
**Checks:** Spec, plan, and constitution for contradictions

---

### Step 6: Tasks (Task List)
```
/sp.tasks
```
**Creates:** `specs/<feature>/tasks.md`

---

### Step 7: Checklist (Quality)
```
/sp.checklist Generate a security-focused checklist for authentication implementation.
```
**Generates:** Quality checklist for validation

---

### Step 8: Implement (Build)
```
/sp.implement
```
**Mode 2:** AI writes code for each task

---

### Step 9: Learn (Record)
```
/sp.learn
```
**Creates:** `history/prompts/<feature>/learning-log.md`

---

### Step 10: Glossary (Review)
```
/sp.glossary
```
**Shows:** All terms learned across all projects

---

### Step 11: PHR (Prompt History)
```
/sp.phr
```
**Creates:** `history/prompts/<feature>/phr.md`

---

## All /sp Commands Reference

| Command | Description | Creates |
|---------|-------------|---------|
| `/sp.constitution [principles]` | Create project governing principles | `memory/constitution.md` |
| `/sp.specify [description]` | Define what to build | `specs/<feature>/spec.md` |
| `/sp.clarify [answers]` | Clarify underspecified areas | Updates spec |
| `/sp.plan [tech-stack]` | Create technical implementation plan | `specs/<feature>/plan.md` |
| `/sp.analyze` | Cross-artifact consistency check | Report |
| `/sp.tasks` | Generate actionable task list | `specs/<feature>/tasks.md` |
| `/sp.checklist [type]` | Generate quality checklist | Checklist |
| `/sp.implement` | Execute all tasks | Code files |
| `/sp.learn` | Record learning after feature | `learning-log.md` |
| `/sp.glossary` | Review all learned terms | Glossary |
| `/sp.phr` | Create prompt history record | `phr.md` |
| `/sp.adr [title]` | Architecture decision record | `history/adr/<title>.md` |

---

## Project Structure After Complete Flow

```
user-auth-system/
├── .specify/
│   ├── memory/
│   │   └── constitution.md
│   ├── specs/
│   │   └── user-auth/
│   │       ├── spec.md
│   │       ├── plan.md
│   │       └── tasks.md
│   └── templates/
├── history/
│   └── prompts/
│       └── user-auth/
│           ├── learning-log.md
│           └── phr.md
└── src/
    └── (code files)
```
