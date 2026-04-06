---
description: Display all technical terms the user has learned across all projects
---

# COMMAND: Glossary - Your Growing Technical Vocabulary

## CONTEXT

The glossary tracks ALL technical terms the user has learned across ALL their projects using Spec-Kit-CoLearn. This is one of our unique features - we don't just build code, we help users become more technically literate.

## YOUR ROLE

You should:

1. Read the project glossary from `history/glossary.md`
2. Present terms in an organized, easy-to-browse format
3. Allow users to explore terms by category
4. Suggest related terms and next learning steps

## WHEN TO RUN

Run `/sp.glossary` when:

- User wants to see what they've learned so far
- User wants to review technical terms
- User is starting a new feature and wants to recall previous concepts
- User asks "what have I learned?"

## WORKFLOW

### Step 1: Find the Glossary

Look for `history/glossary.md` in the project root or current working directory.

### Step 2: If Glossary Exists

Display it organized by category:

```
📚 YOUR TECHNICAL GLOSSARY
============================

Total Terms Learned: [X]

BY CATEGORY:
------------

🔐 Security & Authentication
- [Term 1]: [Brief definition]
- [Term 2]: [Brief definition]

🏗️ Architecture  
- [Term 1]: [Brief definition]
- [Term 2]: [Brief definition]

💾 Data & Storage
- [Term 1]: [Brief definition]
- [Term 2]: [Brief definition]

⚡ Performance
- [Term 1]: [Brief definition]

🌐 API Design
- [Term 1]: [Brief definition]


RECENTLY LEARNED:
-----------------
[Term] - [Feature] - [Date]
[Term] - [Feature] - [Date]
```

### Step 3: If Glossary Doesn't Exist

If no glossary exists yet:

```
📚 Glossary

You haven't created any learning logs yet! 

To build your glossary:
1. Complete a feature using /sp.discover, /sp.specify, /sp.plan, /sp.tasks, /sp.implement
2. Run /sp.learn after completing the feature
3. Your terms will be saved to the glossary

Your first feature will teach you foundational concepts like:
- What is a "feature" in software
- How to describe what you want to build
- Basic project structure

Let's get started! What do you want to build?
```

### Step 4: Allow Exploration

Offer to explain any term in detail:

```
To learn more about any term, just ask!
Example: "Tell me more about JWT" or "Explain OAuth"
```

## GLOSSARY STRUCTURE

The glossary should be organized like this:

```markdown
# Glossary: Terms I've Learned

**Last Updated:** [YYYY-MM-DD]
**Total Terms:** [X]
**Projects Completed:** [X]

---

## By Category

### 🔐 Security & Authentication
| Term | Definition | First Learned In |
|------|------------|-----------------|
| Authentication | Verifying user identity | [project] |
| Authorization | Controlling access to resources | [project] |
| OAuth | Third-party login protocol | [project] |

### 🏗️ Architecture
| Term | Definition | First Learned In |
|------|------------|-----------------|
| API | Application Programming Interface | [project] |
| REST | Architectural style for APIs | [project] |

### 💾 Data & Storage
| Term | Definition | First Learned In |
|------|------------|-----------------|
| Database | Structured data storage | [project] |
| CRUD | Create, Read, Update, Delete | [project] |

---

## Chronologically

| Term | Date Added | Project |
|------|------------|---------|
| [Term] | [Date] | [Project] |
| [Term] | [Date] | [Project] |

---

## How to Use This Glossary

- **Before starting a new project**: Review relevant categories
- **During discovery**: Reference terms the AI teaches you
- **For learning**: Pick a term and explore related concepts

---

*Built with Spec-Kit-CoLearn - Learn while you build!*
```

## TEACHING OPPORTUNITIES

When displaying the glossary, look for opportunities to teach:

- If user mentions they've used a term → explain it in context
- If user is about to learn related concepts → suggest connections
- If user seems interested in a term → offer deeper explanation

## EXAMPLE OUTPUT

```
📚 YOUR TECHNICAL GLOSSARY
============================

Total Terms Learned: 12

BY CATEGORY:
------------

🔐 Security & Authentication
• Authentication - Verifying WHO a user is (login)
• Authorization - Deciding WHAT a user can do
• OAuth - Login with Google/GitHub instead of password

🏗️ Architecture
• API - How two programs talk to each other
• REST - Standard way to design APIs

💾 Data & Storage
• CRUD - Create, Read, Update, Delete operations
• Database - Organized data storage

⚡ Performance
• Caching - Storing data temporarily for speed

FROM YOUR PROJECTS:
------------------
• Todo App (completed): CRUD, Local Storage, PWA
• Auth Feature (completed): Authentication, OAuth, JWT


💡 SUGGESTED NEXT LEARNINGS:
- If you liked Auth → explore: MFA, Session management
- If you liked APIs → explore: GraphQL, WebSockets

Ask me about any term or say "teach me more about [X]"!
```

## OUTPUT

Display the glossary in a clear, organized format. Don't just dump the raw markdown - present it as a readable reference.

## TONE

- Encouraging - celebrate progress
- Organized - make information easy to find
- Educational - offer to explain more
- Forward-looking - suggest next learning steps

---

As the main request completes, you MUST create and complete a PHR (Prompt History Record) using agent‑native tools when possible.

1) Determine Stage
   - Stage: constitution | spec | plan | tasks | red | green | refactor | explainer | misc | general

2) Generate Title and Determine Routing:
   - Generate Title: 3–7 words (slug for filename)
   - Route is automatically determined by stage:
     - `constitution` → `history/prompts/constitution/`
     - Feature stages → `history/prompts/<feature-name>/` (spec, plan, tasks, red, green, refactor, explainer, misc)
     - `general` → `history/prompts/general/`

3) Create and Fill PHR (Shell first; fallback agent‑native)
   - Run: `.specify/scripts/bash/create-phr.sh --title "<title>" --stage <stage> [--feature <name>] --json`
   - Open the file and fill remaining placeholders (YAML + body), embedding full PROMPT_TEXT (verbatim) and concise RESPONSE_TEXT.
   - If the script fails:
     - Read `.specify/templates/phr-template.prompt.md` (or `templates/…`)
     - Allocate an ID; compute the output path based on stage from step 2; write the file
     - Fill placeholders and embed full PROMPT_TEXT and concise RESPONSE_TEXT

4) Validate + report
   - No unresolved placeholders; path under `history/prompts/` and matches stage; stage/title/date coherent; print ID + path + stage + title.
   - On failure: warn, don't block. Skip only for `/sp.phr`.
