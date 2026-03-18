# [PROJECT_NAME] Constitution

> Built with **Spec-Kit-CoLearn** - AI Co-Learning Spec Framework
> By Muhammad Hamid Raza

## About This Constitution

This document defines the foundational principles that guide all development decisions for this project.

This project uses **Spec-Kit-CoLearn**, a framework where AI acts as your senior architect co-partner. Before any code is written, we:
1. Discover what you want to build through questions
2. Learn technical concepts together
3. Create clear specifications
4. Plan and implement with understanding

---

## Core Principles

### I. Discovery Before Code (NON-NEGOTIABLE)

**The most important principle.** Never write code without first understanding exactly what needs to be built.

- Every feature starts with `/sp.discover` - AI asks questions to understand your vision
- AI teaches you technical concepts relevant to your project
- You approve the understanding before any specification is created
- No code until clarity is achieved

### II. Learning While Building

**We don't just ship code - we help you understand.**

- `/sp.discover` teaches you relevant technical terms
- `/sp.learn` generates a learning log after each feature
- `/sp.glossary` tracks all terms you've learned across projects
- Technical concepts are explained in plain language

### III. Two-Mode System

**AI operates in two distinct modes:**

| Mode | What AI Does | When |
|------|---------------|------|
| **Mode 1: Senior Architect** | Asks questions, designs, teaches | Default |
| **Mode 2: Coding Worker** | Writes code, runs tests | After "tasks approved" |

### IV. Clarity Gate

**All 6 checkpoints must pass before any specification:**

1. ✅ WHO is clear - We know exactly who uses this feature
2. ✅ WHAT is clear - We know exactly what the feature does
3. ✅ SCOPE is clear - We know what is in and what is out
4. ✅ EDGE CASES covered - At least 3 edge cases discussed
5. ✅ SUCCESS defined - At least 2 measurable success criteria
6. ✅ USER APPROVED - You said "approved"

### V. Test-First Development

**TDD mandatory when implementing:**

1. Tests written first (from tasks.md)
2. Tests should fail initially
3. Implement to make tests pass
4. Refactor while keeping tests green
5. Never skip tests

### VI. Document Important Decisions

**For significant architectural choices:**

- Use `/sp.adr` to create Architecture Decision Records
- Document context, options considered, and reasoning
- Future developers (including you) will thank you

---

## Development Workflow

```
1. /sp.discover → AI asks questions, teaches concepts
2. You approve the understanding
3. /sp.specify → Formal specification created
4. /sp.plan → Technical implementation plan
5. /sp.tasks → Actionable task list
6. You approve tasks
7. /sp.implement → Code written task by task
8. /sp.learn → Learning log generated
9. Feature complete + You learned new concepts!
```

---

## Quality Standards

### Code Quality
- Clear, readable code over clever code
- Small functions that do one thing
- Comments explain "why" not "what"

### Testing
- Every task has an associated test
- Tests run after each task completion
- 100% test coverage for new features

### Security
- Never hardcode secrets - use .env files
- Validate all inputs
- Follow security best practices for your stack

---

## Governance

### Constitution Amendments
- Changes require documentation
- Must include migration plan
- Team approval needed

### Compliance
- All PRs must verify constitution compliance
- Complexity must be justified
- Use `/sp.analyze` to check spec/plan/tasks alignment

---

**Built with Spec-Kit-CoLearn** | *Build with clarity. Ship with confidence. Learn along the way.*

**Version**: [CONSTITUTION_VERSION] | **Ratified**: [RATIFICATION_DATE] | **Last Amended**: [LAST_AMENDED_DATE]
