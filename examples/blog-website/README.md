# Example Project 2: Blog Website

## Overview
This example shows how to build a full blog website using Spec-Kit-CoLearn with all /sp commands.

---

## Project Setup

```bash
spec-kit-colearn init my-blog
cd my-blog
```

---

## Complete /sp Command Flow

### Step 1: Constitution
```
/sp.constitution Create principles focused on SEO optimization, fast page loads, clean code architecture, content management ease, and responsive design.
```
**Creates:** `.specify/memory/constitution.md`

---

### Step 2: Specify (What to Build)
```
/sp.specify Build a personal blog where users can read posts, create/edit their own posts with MDX, add categories and tags to organize content, enable dark mode toggle, and integrate comments section.
```
**Creates:** `specs/<feature>/spec.md`

---

### Step 3: Clarify (Requirements)
```
/sp.clarify Solo blogger (Option A), Medium features with categories/tags/search (Option B), Next.js + PostgreSQL (Option A), Static export for Vercel (Option A)
```
**Updates:** Clarifies and records answers in spec

---

### Step 4: Plan (Technical)
```
/sp.plan Use Next.js 14 with App Router, MDX for content, Tailwind CSS, PostgreSQL for metadata, Vercel for deployment, Giscus for comments.
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
/sp.checklist Generate an SEO and performance checklist for the blog.
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
my-blog/
├── .specify/
│   ├── memory/
│   │   └── constitution.md
│   ├── specs/
│   │   └── blog/
│   │       ├── spec.md
│   │       ├── plan.md
│   │       └── tasks.md
│   └── templates/
├── history/
│   └── prompts/
│       └── blog/
│           ├── learning-log.md
│           └── phr.md
├── posts/
│   └── (MDX files)
└── src/
    └── (Next.js app files)
```
