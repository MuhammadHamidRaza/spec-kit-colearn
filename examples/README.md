# Example Projects - Complete AI Co-Partner Workflow

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

| Project | Features | Timeline |
|---------|---------|----------|
| [01-todo-app](./01-todo-app/README.md) | 8 features, one at a time | 8 weeks |
| [02-ecommerce](./02-ecommerce/README.md) | 15 features, one at a time | 18-20 weeks |
| [03-social-network](./03-social-network/README.md) | 10 features, one at a time | 22-24 weeks |

---

## The Complete /sp Command Cycle (For EACH Feature)

```
┌─────────────────────────────────────────────────────────────────┐
│           FOR EACH FEATURE, RUN THIS COMPLETE CYCLE:            │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  1. /sp.discover     → AI asks 6 questions (A/B/C answers)     │
│  2. /sp.specify      → AI creates detailed specification        │
│  3. /sp.clarify      → User provides tech stack details         │
│  4. /sp.plan         → AI creates implementation plan           │
│  5. /sp.analyze      → AI checks consistency                   │
│  6. /sp.tasks       → AI creates detailed task list            │
│  7. /sp.checklist   → AI generates quality checklist          │
│  8. /sp.implement   → AI builds in Mode 2                     │
│  9. /sp.learn       → AI records what was learned             │
│  10. /sp.glossary    → AI shows all learned terms              │
│  11. /sp.phr         → AI creates prompt history record         │
│                                                                  │
│  THEN MOVE TO NEXT FEATURE AND REPEAT!                         │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

## How It Works

### Step 1: USER says what they want
```
USER: "I want to build an ecommerce website"
```

### Step 2: AI asks questions as CO-PARTNER
```
AI: "Great! Let me ask some questions..."
AI: "Question 1: What TYPE of ecommerce?"
    - A: Single brand store
    - B: Marketplace
    - C: Multi-vendor
AI: "Question 2: What products will you sell?"
    - A: Physical goods
    - B: Digital products
    - C: Services
... (6 questions total)
```

### Step 3: USER answers with A/B/C
```
USER: "A"
USER: "B"
USER: "A"
USER: "B"
USER: "A"
USER: "A"
```

### Step 4: AI presents 3 options
```
AI: "Based on your answers, here are 3 options..."

Option A: Simple Approach (MY RECOMMENDED)
- What: Basic ecommerce with core features
- Pros: Fast to build, easy to maintain
- Cons: Limited features

Option B: Advanced Approach
- What: Full-featured with all options
- Pros: Maximum features
- Cons: Takes longer

Option C: Enterprise Approach
- What: Scalable, multi-tenant
- Pros: Handles growth
- Cons: Most complex
```

### Step 5: USER chooses an option
```
USER: "A"
```

### Step 6-11: AI creates spec, plan, tasks, builds
```
AI: "Creating specification..."
USER: "spec approved"
AI: "Creating plan..."
USER: "plan approved"
AI: "Creating tasks..."
USER: "tasks approved"
AI: "🔨 MODE 2 ACTIVATED - Building..."
[AI builds all the code]
AI: "✅ Feature complete!"
AI: "Running /sp.learn..."
AI: "Running /sp.glossary..."
AI: "Running /sp.phr..."
```

### Step 12: MOVE TO NEXT FEATURE
```
AI: "Feature 1 Complete! Ready for Feature 2?"

USER: "Yes, let's do Feature 2: Product Catalog"

[REPEAT THE CYCLE FOR FEATURE 2]
```

---

## Each Project Has Multiple Features

### Todo App (8 features)
| # | Feature | Status |
|---|---------|--------|
| 1 | User Authentication | ✅ Complete |
| 2 | Projects Management | ✅ Complete |
| 3 | Tasks CRUD | ✅ Complete |
| 4 | Due Dates & Priorities | ✅ Complete |
| 5 | Recurring Tasks | ✅ Complete |
| 6 | Search & Filter | ✅ Complete |
| 7 | Cloud Sync | ✅ Complete |
| 8 | Mobile App | ✅ Complete |

### Ecommerce (15 features)
| # | Feature | Status |
|---|---------|--------|
| 1 | User Authentication | ✅ Complete |
| 2 | Product Catalog | ✅ Complete |
| 3 | Shopping Cart | ✅ Complete |
| 4 | Checkout Process | ✅ Complete |
| 5 | Payment Integration | ✅ Complete |
| 6 | Order Management | ✅ Complete |
| 7 | User Profiles | ✅ Complete |
| 8 | Admin Dashboard | ✅ Complete |
| 9-15 | (Continue...) | ✅ Complete |

### Social Network (10 features)
| # | Feature | Status |
|---|---------|--------|
| 1 | Authentication | ✅ Complete |
| 2 | User Profiles | ✅ Complete |
| 3 | Posts & Feed | ✅ Complete |
| 4 | Follow System | ✅ Complete |
| 5-10 | (Continue...) | ✅ Complete |

---

## Choose Your Starting Point

| If you want to... | Start with... |
|-------------------|---------------|
| Learn the workflow with simplest project | [01-todo-app](./01-todo-app/README.md) |
| Build a real ecommerce store | [02-ecommerce](./02-ecommerce/README.md) |
| Build a social network | [03-social-network](./03-social-network/README.md) |

---

## Key Principle: ONE Feature At A Time

```
❌ WRONG: Build all features at once
✅ RIGHT: Build feature 1 completely → Learn → Build feature 2 → Learn → ...

Each feature teaches you something
Each feature builds on previous learning
Learning compounds over time!
```

---

## All /sp Commands Reference

| Command | When To Run | What It Does |
|---------|-------------|--------------|
| `/sp.constitution` | FIRST (once per project) | Set project principles |
| `/sp.discover` | FIRST (for each feature) | AI asks questions |
| `/sp.specify` | After discover | AI creates spec |
| `/sp.clarify` | After specify | User provides tech details |
| `/sp.plan` | After clarify | AI creates plan |
| `/sp.analyze` | After plan | AI checks consistency |
| `/sp.tasks` | After analyze | AI creates tasks |
| `/sp.checklist` | After tasks | AI generates checklist |
| `/sp.implement` | After checklist | AI builds in Mode 2 |
| `/sp.learn` | After implement | AI records learning |
| `/sp.glossary` | ANYTIME | Review all learned terms |
| `/sp.phr` | After learn | Create prompt history |
