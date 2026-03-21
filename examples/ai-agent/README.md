# Example Project 3: AI Customer Support Agent

## Overview
This example shows how to build an AI support agent using Spec-Kit-CoLearn with all /sp commands.

---

## Project Setup

```bash
spec-kit-colearn init support-agent
cd support-agent
```

---

## Complete /sp Command Flow

### Step 1: Constitution
```
/sp.constitution Create principles focused on response accuracy, user privacy, escalation protocols, multi-language support, clear conversation boundaries, and ethical AI usage.
```
**Creates:** `.specify/memory/constitution.md`

---

### Step 2: Specify (What to Build)
```
/sp.specify Build an AI customer support agent that answers common questions from FAQ using RAG, escalates to human when needed based on keywords, stores conversation history, and works via API and web chat widget.
```
**Creates:** `specs/<feature>/spec.md`

---

### Step 3: Clarify (Requirements)
```
/sp.clarify Full Support Agent (Option C), Website chat widget (Option A), Static FAQ document (Option A), Auto-escalate on keywords (Option B), Basic analytics (Option A), Multiple languages (Option B)
```
**Updates:** Clarifies and records answers in spec

---

### Step 4: Plan (Technical)
```
/sp.plan Use RAG-based approach with OpenAI GPT-3.5, Pinecone for vector storage, React frontend for chat widget, FastAPI backend, and Redis for session storage.
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
/sp.checklist Generate a security and privacy checklist for AI chatbot handling user data.
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
support-agent/
├── .specify/
│   ├── memory/
│   │   └── constitution.md
│   ├── specs/
│   │   └── ai-agent/
│   │       ├── spec.md
│   │       ├── plan.md
│   │       └── tasks.md
│   └── templates/
├── history/
│   └── prompts/
│       └── ai-agent/
│           ├── learning-log.md
│           └── phr.md
├── backend/
│   └── (FastAPI files)
├── frontend/
│   └── (React files)
└── faq/
    └── (knowledge base)
```
