# Todo App - Complete AI Co-Partner Project

## Project: TaskMaster - Personal Todo App

---

## INSTALLATION

```bash
pip install spec-kit-colearn
npm install -g @muhammad-hamid-raza/spec-kit-colearn
```

---

## INITIALIZE PROJECT

```bash
spec-kit-colearn init taskmaster
cd taskmaster
```

---

## ALL /sp COMMANDS IN ORDER

```
┌─────────────────────────────────────────────────────────────────┐
│                    TASKMASTER PROJECT FLOW                        │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  PHASE 1: PROJECT SETUP (Run Once)                            │
│  ════════════════════                                            │
│  /sp.constitution    → Set project principles                  │
│                                                                  │
│  PHASE 2: FEATURE 1 (User Authentication)                      │
│  ═══════════════════════════════                                │
│  /sp.discover         → Partner discussion                       │
│  /sp.specify          → Define requirements                    │
│  /sp.clarify          → Answer questions                       │
│  /sp.plan             → Technical plan                          │
│  /sp.analyze          → Consistency check                       │
│  /sp.tasks            → Generate tasks                          │
│  /sp.checklist        → Quality checklist                       │
│  /sp.implement         → Build feature                          │
│  /sp.learn            → Record learning                        │
│  /sp.glossary          → Review terms                          │
│  /sp.phr               → Prompt history                        │
│                                                                  │
│  PHASE 3: FEATURE 2 (Projects Management)                      │
│  (Same /sp cycle)                                              │
│                                                                  │
│  PHASE 4: FEATURE 3 (Tasks CRUD)                               │
│  (Same /sp cycle)                                              │
│                                                                  │
│  ... continue for each feature ...                              │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

# PHASE 1: PROJECT SETUP

---

## COMMAND: /sp.constitution

### USER SAYS:
```
/sp.constitution Create principles for a personal todo app focused on simplicity, productivity, and ease of use.
```

### AI CREATES:

```
# TaskMaster Constitution

## Core Principles

### 1. Simplicity First
- Every feature must be simple to understand
- No complex menus or options
- One clear action per screen

### 2. Productivity Focused
- Tasks should be quick to add
- Complete tasks with minimum taps
- Important tasks always visible

### 3. Visual Clarity
- Clear priority indicators (color coded)
- Due dates prominent but not overwhelming
- Completed tasks clearly shown

### 4. Privacy & Data
- All data stored locally by default
- Optional cloud sync for multi-device
- No account required for basic use

### 5. Performance
- App must load in under 1 second
- Smooth animations (60fps)
- Offline-first architecture

## Technical Guidelines

### Stack Choices
- Frontend: React (web) + React Native (mobile)
- Storage: AsyncStorage (local) + Firebase (cloud sync)
- State: Zustand for simple state management

### Code Standards
- Clean, readable code
- TypeScript for type safety
- Responsive design (mobile-first)
- Accessible (WCAG 2.1 AA)

## Design Principles

### Colors
- Primary: Blue (#3B82F6)
- High Priority: Red (#EF4444)
- Medium Priority: Yellow (#F59E0B)
- Low Priority: Green (#22C55E)

### Typography
- Sans-serif font (Inter)
- Clear hierarchy (titles, body, captions)
- Readable on all screen sizes
```

---

# PHASE 2: FEATURE 1 - USER AUTHENTICATION

---

## COMMAND 1: /sp.discover

### USER SAYS:
```
/sp.discover For the authentication system - what login methods should we support?
```

### AI ASKS:

```
🤖 **DISCOVERY MODE - Feature 1: Authentication**

**Question 1: What LOGIN METHODS?**
- A: Email/password only (simplest)
- B: Email/password + Google login
- C: Email/password + Google + Apple + GitHub

**Question 2: Should users VERIFY email?**
- A: Yes, verify before first use
- B: No verification (faster onboarding)

**Question 3: How SECURE should sessions be?**
- A: Basic (stay logged in indefinitely)
- B: Medium (logout after 30 days inactive)
- C: High (logout after 7 days)

**Question 4: What USER DATA to store?**
- A: Email and name only
- B: Email, name, and avatar
- C: Email, name, avatar, and preferences

**Question 5: PASSWORD reset method?**
- A: Email link only
- B: Email link + security questions
- C: No password reset (demo mode)

**Question 6: Any TWO-FACTOR AUTH?**
- A: No 2FA (keep it simple)
- B: Optional 2FA via email code
- C: Required 2FA for all users
```

### USER RESPONDS:
```
A
A
B
A
A
A
```

### AI CONTINUES:

```
Perfect! Based on your answers:

**Login:** Email/password only
**Email verification:** Required
**Session:** Medium security (30 days inactive)
**Profile:** Email and name
**Password reset:** Email link
**2FA:** Not needed

## 3 IMPLEMENTATION OPTIONS:

### Option A: Simple Auth (MY RECOMMENDED)
**What:** Email/password with JWT tokens
**Pros:** Quick to implement, industry standard
**Best for:** Personal apps, MVPs

### Option B: Firebase Auth
**What:** Use Firebase Authentication
**Pros:** Pre-built UI, handles everything
**Best for:** Faster development

### Option C: Custom Full Stack
**What:** Build everything from scratch
**Pros:** Complete control, learn fundamentals
**Best for:** Learning, enterprise apps

Which option? (A, B, or C)
```

### USER SAYS:
```
A
```

---

## COMMAND 2: /sp.specify

### AI CREATES SPEC:

```
# SPEC.md - Feature 1: User Authentication

## User Stories

### US1: User Registration
As a new user, I want to register with email and password so I can access my todos.

**Acceptance Criteria:**
- [ ] User can enter email (validated format)
- [ ] User can enter password (min 8 chars)
- [ ] Password must be hashed before storage
- [ ] Email verification link sent after registration
- [ ] User cannot login until email verified

### US2: User Login
As a registered user, I want to login with email and password.

**Acceptance Criteria:**
- [ ] User can enter email and password
- [ ] Invalid credentials show error message
- [ ] Successful login returns JWT token
- [ ] Token stored securely
- [ ] Redirect to home screen after login

### US3: Password Reset
As a user who forgot password, I want to reset via email link.

**Acceptance Criteria:**
- [ ] User can request password reset
- [ ] Email sent with reset link
- [ ] Link valid for 1 hour
- [ ] User can set new password
- [ ] Old tokens invalidated after reset

### US4: Session Management
As a logged-in user, I want to stay logged in.

**Acceptance Criteria:**
- [ ] Session persists for 30 days of activity
- [ ] Automatic logout after 30 days inactive
- [ ] Logout button clears all session data

## Technical Requirements

### Authentication Flow
1. Register → Hash password → Save user → Send verification email
2. Verify email → Activate account
3. Login → Verify credentials → Generate JWT → Return token
4. Access protected routes → Validate JWT → Allow/deny

### Security
- Passwords hashed with bcrypt (12 rounds)
- JWT signed with secret key (HS256)
- Access token expires in 15 minutes
- Refresh token expires in 30 days

### API Endpoints
```
POST /api/auth/register     → Create account, send verification
GET  /api/auth/verify/:token → Verify email
POST /api/auth/login        → Login, return JWT
POST /api/auth/logout       → Invalidate tokens
POST /api/auth/forgot-password → Send reset email
POST /api/auth/reset-password → Reset password with token
GET  /api/auth/me           → Get current user
```

## Success Criteria
- [ ] Registration completes in under 3 seconds
- [ ] Login completes in under 1 second
- [ ] Passwords never stored in plain text
- [ ] JWT tokens are secure and validated
```

### USER SAYS:
```
spec approved
```

---

## COMMAND 3: /sp.clarify

### USER SAYS:
```
/sp.clarify Backend: Node.js + Express + TypeScript | Database: PostgreSQL + Prisma | Email: SendGrid (mock for now) | JWT: Access 15min, Refresh 30 days | Password: bcrypt 12 rounds
```

### AI CONFIRMS:
```
Perfect! Clarifications confirmed:
- Backend: Node.js + Express + TypeScript
- Database: PostgreSQL + Prisma ORM
- Email: SendGrid (mock console.log for now)
- JWT: Access token (15 min), Refresh token (30 days)
- Password: bcrypt with 12 salt rounds
```

---

## COMMAND 4: /sp.plan

### AI CREATES PLAN:

```
# PLAN.md - Feature 1: User Authentication

## Phase 1: Project Setup (Day 1)
- [ ] Initialize Node.js + Express project
- [ ] Install TypeScript and dependencies
- [ ] Set up Prisma with PostgreSQL
- [ ] Configure project structure

## Phase 2: User Model & Registration (Day 1-2)
- [ ] Create User model in Prisma
- [ ] Create database migration
- [ ] Implement password hashing
- [ ] Create registration endpoint
- [ ] Create email verification token
- [ ] Mock email sending

## Phase 3: Email Verification (Day 2)
- [ ] Create verification endpoint
- [ ] Validate verification token
- [ ] Mark email as verified

## Phase 4: Login & JWT (Day 2-3)
- [ ] Implement login endpoint
- [ ] Generate access token (JWT)
- [ ] Generate refresh token
- [ ] Store refresh tokens in DB
- [ ] Implement token validation middleware

## Phase 5: Password Reset (Day 3)
- [ ] Create forgot password endpoint
- [ ] Generate reset token
- [ ] Create reset password endpoint
- [ ] Update password hash
- [ ] Invalidate old tokens

## Phase 6: Logout & Session (Day 3-4)
- [ ] Create logout endpoint
- [ ] Invalidate refresh token
- [ ] Create /me endpoint
- [ ] Test logout flow

## Estimated Time: 4 days
```

### USER SAYS:
```
plan approved
```

---

## COMMAND 5: /sp.analyze

### AI RUNS ANALYSIS:

```
📋 **CONSISTENCY ANALYSIS**

✅ Constitution Alignment:
- Simplicity: Plan follows simple auth approach (Option A)
- Security: bcrypt 12 rounds matches security standards

✅ Spec Coverage:
- All 4 user stories covered in phases
- All acceptance criteria have implementation tasks

✅ Technical Consistency:
- PostgreSQL + Prisma: Correct
- JWT (15min/30days): Correct
- bcrypt 12 rounds: Correct

**ANALYSIS RESULT: APPROVED**
```

---

## COMMAND 6: /sp.tasks

### AI CREATES TASKS:

```
# TASKS.md - Feature 1: User Authentication

## Task 1.1: Project Setup
```
Files to create:
- [ ] package.json
- [ ] tsconfig.json
- [ ] src/index.ts
- [ ] src/app.ts
- [ ] src/config/database.ts
- [ ] .env.example
- [ ] .gitignore
```

## Task 1.2: Database Schema
```
File: prisma/schema.prisma
- [ ] Create User model
- [ ] Create RefreshToken model
- [ ] Create VerificationToken model
- [ ] Run prisma migrate dev
```

## Task 1.3: Registration Endpoint
```
- [ ] POST /auth/register handler
- [ ] Validate email format
- [ ] Check email not already registered
- [ ] Hash password with bcrypt (12 rounds)
- [ ] Create user in database
- [ ] Generate verification token
- [ ] Send verification email (mock)
```

## Task 1.4: Email Verification Endpoint
```
- [ ] GET /auth/verify/:token handler
- [ ] Find token in database
- [ ] Check token not expired
- [ ] Update user.emailVerified = true
- [ ] Delete used token
```

## Task 1.5: Login Endpoint
```
- [ ] POST /auth/login handler
- [ ] Find user by email
- [ ] Compare password with hash
- [ ] Generate access token (JWT, 15 min)
- [ ] Generate refresh token
- [ ] Store refresh token in DB
- [ ] Return tokens
```

## Task 1.6: JWT Middleware
```
- [ ] Create authMiddleware function
- [ ] Extract token from header
- [ ] Verify JWT signature
- [ ] Attach user to request
```

## Task 1.7: Forgot Password Endpoint
```
- [ ] POST /auth/forgot-password handler
- [ ] Generate reset token
- [ ] Send reset email (console.log mock)
```

## Task 1.8: Reset Password Endpoint
```
- [ ] POST /auth/reset-password handler
- [ ] Validate reset token
- [ ] Hash new password
- [ ] Update user passwordHash
- [ ] Invalidate old tokens
```

## Task 1.9: Logout Endpoint
```
- [ ] POST /auth/logout handler
- [ ] Delete refresh token from database
```

## Task 1.10: Get Current User
```
- [ ] GET /auth/me handler
- [ ] Return user data (exclude passwordHash)
```
```

### USER SAYS:
```
tasks approved
```

---

## COMMAND 7: /sp.checklist

### AI GENERATES:

```
# QUALITY CHECKLIST - Feature 1: User Authentication

## SECURITY CHECKLIST
☐ Passwords hashed with bcrypt (12+ rounds)
☐ Passwords never logged or stored in plain text
☐ JWT signed with strong secret key
☐ Access tokens have short expiration (15 min)
☐ Refresh tokens stored in database
☐ Token secrets not committed to git

## FUNCTIONAL CHECKLIST
☐ User can register with email and password
☐ Email validation works correctly
☐ Duplicate email shows error
☐ Verification email sent (or logged)
☐ Valid token verifies email
☐ Expired token shows error
☐ Valid credentials return tokens
☐ Wrong password shows error
☐ Protected routes require valid token
☐ Logout clears session
```

---

## COMMAND 8: /sp.implement

### AI ENTERS MODE 2 AND BUILDS:

```
🔨 **MODE 2: CODING WORKER ACTIVATED**

Building Feature 1...

## Task 1.1: Project Setup

Creating package.json...

```json
{
  "name": "taskmaster-api",
  "scripts": {
    "dev": "nodemon --exec ts-node src/index.ts",
    "build": "tsc"
  },
  "dependencies": {
    "express": "^4.18.2",
    "@prisma/client": "^5.7.0",
    "bcryptjs": "^2.4.3",
    "jsonwebtoken": "^9.0.2"
  }
}
```

## Task 1.2: Database Schema

Creating prisma/schema.prisma...

```prisma
model User {
  id           String   @id @default(uuid())
  email        String   @unique
  passwordHash String
  name         String
  emailVerified Boolean  @default(false)
  createdAt    DateTime @default(now())
  refreshTokens RefreshToken[]
}

model RefreshToken {
  id        String   @id @default(uuid())
  token     String   @unique
  userId    String
  user      User     @relation(fields: [userId], references: [id])
  expiresAt DateTime
}

model VerificationToken {
  id        String   @id @default(uuid())
  token     String   @unique
  email     String
  type      String
  expiresAt DateTime
}
```

Running migration...

```bash
npx prisma migrate dev --name init_auth
```

## Task 1.3: Registration Endpoint

Creating src/routes/auth.ts...

```typescript
import { Router, Request, Response } from 'express';
import bcrypt from 'bcryptjs';
import { v4 as uuidv4 } from 'uuid';
import { PrismaClient } from '@prisma/client';

const router = Router();
const prisma = new PrismaClient();

router.post('/register', async (req: Request, res: Response) => {
  const { email, password, name } = req.body;

  // Validate email
  if (!email.includes('@')) {
    return res.status(400).json({ error: 'Invalid email' });
  }

  // Check if email exists
  const existing = await prisma.user.findUnique({ where: { email } });
  if (existing) {
    return res.status(400).json({ error: 'Email already registered' });
  }

  // Hash password
  const passwordHash = await bcrypt.hash(password, 12);

  // Create user
  const user = await prisma.user.create({
    data: { email, passwordHash, name }
  });

  // Generate verification token
  const token = uuidv4();
  await prisma.verificationToken.create({
    data: { token, email, type: 'verification', expiresAt: new Date(Date.now() + 3600000) }
  });

  console.log(`Verification link: /auth/verify/${token}`);

  res.status(201).json({ message: 'Registered! Check email to verify.' });
});

export default router;
```

[AI continues with remaining tasks...]

✅ All tasks completed!
```

---

## COMMAND 9: /sp.learn

### AI CREATES LEARNING LOG:

```
# LEARNING LOG - Feature 1: User Authentication

## Date: 2026-03-21
## Feature: User Authentication
## Project: TaskMaster

---

### TECHNICAL TERMS LEARNED:

**JWT (JSON Web Token)**
A secure way to transmit information between parties.
- Access Token: Short-lived (15 min) for API authentication
- Refresh Token: Long-lived (30 days) to get new access tokens
- Like a temporary work badge that expires

**Bcrypt**
Password hashing algorithm with built-in salt.
- 12 rounds = 2^12 iterations = 4,096 hashes per password
- Makes brute force attacks slow
- Two identical passwords produce different hashes (salt)

**Prisma ORM**
Type-safe database query builder for Node.js/TypeScript.
- Schema defines data model once
- Generates TypeScript types automatically
- Prevents SQL injection by default

**Refresh Token Rotation**
Security pattern where each refresh invalidates the old one.
- When user refreshes, old token is deleted, new token issued
- If stolen token is used, we can detect (token not in DB)

---

### DECISIONS MADE:

1. **Chose bcrypt over SHA-256** - bcrypt is designed for passwords, includes salt
2. **Separate access and refresh tokens** - Access tokens are short-lived
3. **Token stored in database** - Enables revocation and logout everywhere
4. **Mock email for now** - Console.log instead of real email service

---

### CONCEPTS TO EXPLORE LATER:

1. **OAuth 2.0** - For social login (Google, GitHub)
2. **Two-Factor Authentication (2FA)** - TOTP apps like Google Authenticator
3. **Rate Limiting** - Prevent brute force attacks
4. **Account Lockout** - Temporarily lock after X failed attempts

---

**Feature 1 Complete! Moving to Feature 2: Projects Management**
```

---

## COMMAND 10: /sp.glossary

### AI SHOWS ALL TERMS:

```
# GLOSSARY - All Terms Learned

| Term | Definition |
|------|------------|
| **JWT** | JSON Web Token - A secure token format for authentication |
| **Access Token** | Short-lived JWT (15 min) for API authentication |
| **Refresh Token** | Long-lived token (30 days) to get new access tokens |
| **Bcrypt** | Password hashing algorithm with built-in salt |
| **Prisma** | Type-safe ORM for database operations |
| **Verification Token** | Temporary token sent to email for verification |
| **Refresh Token Rotation** | Security pattern - each refresh invalidates the old one |
| **Middleware** | Code that runs between request and response |
| **Salt** | Random data added to passwords before hashing |
```

---

## COMMAND 11: /sp.phr

### AI CREATES PROMPT HISTORY:

```
# PROMPT HISTORY RECORD - Feature 1: User Authentication

## Project: TaskMaster
## Feature: User Authentication
## Date: 2026-03-21
## Duration: 4 days

---

## CONVERSATION FLOW:

### User Request:
```
/sp.constitution Create principles for a personal todo app
/sp.discover For the authentication system - what login methods?
```

### AI Questions: 6 asked
User Answers: A, A, B, A, A, A

### Spec Created: 4 user stories
### Plan Created: 6 phases, 10 tasks
### Implementation: All tasks completed

### What Worked Well:
- Simple auth approach (Option A) was right choice
- bcrypt 12 rounds good balance
- Mock email logging helped development

### NEXT FEATURE: Projects Management
```

---

# PHASE 3: FEATURE 2 - PROJECTS MANAGEMENT

---

## COMMAND 1: /sp.discover

### USER SAYS:
```
/sp.discover For the projects feature - how should projects work?
```

### AI ASKS:

```
🤖 **DISCOVERY MODE - Feature 2: Projects Management**

**Question 1: How many PROJECTS per user?**
- A: Unlimited projects
- B: Max 10 projects
- C: Max 50 projects

**Question 2: What PROJECT DATA to store?**
- A: Name and color only
- B: Name, color, and icon
- C: Name, color, icon, description

**Question 3: Can projects be ARCHIVED?**
- A: No archiving (delete only)
- B: Archive (hide but keep data)
- C: Archive + delete after 30 days

**Question 4: Should projects have COLORS?**
- A: Yes, preset colors only (10 colors)
- B: Yes + custom color picker
- C: No colors, use icons only

**Question 5: Any PROJECT SHARING?**
- A: No sharing (personal only)
- B: Share via link (read-only)
- C: Collaborate with other users

**Question 6: DEFAULT projects on signup?**
- A: Yes, create 3 default projects
- B: No, user creates their own
- C: Offer templates but let user choose
```

### USER RESPONDS:
```
A
B
B
A
A
A
```

### AI CONTINUES:

```
Perfect! Based on your answers:

**Projects:** Unlimited
**Data:** Name, color, and icon
**Archive:** Yes, hide but keep data
**Colors:** Preset colors only (10 options)
**Sharing:** No sharing (personal only)
**Defaults:** Yes, create 3 default projects

## 3 OPTIONS:

### Option A: Simple Projects (MY RECOMMENDED)
**What:** Name, color, icon, archive
**Pros:** Quick to build, simple UI
**Best for:** Personal use

### Option B: Projects with Templates
**What:** Pre-made project templates
**Pros:** Users get started faster
**Best for:** Teams or businesses

### Option C: Projects with Tags
**What:** Projects with tagging system
**Pros:** Flexible organization
**Best for:** Complex projects

Which option? (A, B, or C)
```

### USER SAYS:
```
A
```

---

## COMMAND 2: /sp.specify

### AI CREATES SPEC:

```
# SPEC.md - Feature 2: Projects Management

## User Stories

### US1: Create Project
As a user, I want to create projects to organize my tasks.

**Acceptance Criteria:**
- [ ] User can create a new project
- [ ] Project has name (required)
- [ ] Project has color (select from 10 presets)
- [ ] Project has icon (select from icons)
- [ ] Project saved to database

### US2: View Projects
As a user, I want to view all my projects.

**Acceptance Criteria:**
- [ ] List of all active projects displayed
- [ ] Each project shows name, color, icon
- [ ] Task count shown per project
- [ ] Archived projects hidden by default

### US3: Edit Project
As a user, I want to edit project details.

**Acceptance Criteria:**
- [ ] User can change project name
- [ ] User can change project color
- [ ] User can change project icon
- [ ] Changes saved immediately

### US4: Archive Project
As a user, I want to archive projects I no longer use.

**Acceptance Criteria:**
- [ ] User can archive a project
- [ ] Archived projects hidden from main list
- [ ] User can view archived projects
- [ ] User can restore archived projects
- [ ] User can delete archived projects

### US5: Default Projects
As a new user, I want starter projects to get started quickly.

**Acceptance Criteria:**
- [ ] On signup, 3 default projects created
- [ ] Default: "Inbox", "Work", "Personal"
- [ ] Each has different color and icon

## Technical Requirements

### Data Model
```
Project {
  id: UUID
  userId: UUID (foreign key)
  name: String
  color: String (hex code)
  icon: String (emoji or icon name)
  isArchived: Boolean
  createdAt: DateTime
  updatedAt: DateTime
}
```

### API Endpoints
```
GET    /api/projects           → List all projects
POST   /api/projects           → Create project
GET    /api/projects/:id       → Get single project
PUT    /api/projects/:id       → Update project
DELETE /api/projects/:id        → Delete project
POST   /api/projects/:id/archive → Archive project
POST   /api/projects/:id/restore → Restore project
GET    /api/projects/archived  → List archived projects
```

### Preset Colors
```
#EF4444 (Red)    #F59E0B (Amber)   #22C55E (Green)
#3B82F6 (Blue)   #8B5CF6 (Purple)  #EC4899 (Pink)
#6366F1 (Indigo) #14B8A6 (Teal)   #F97316 (Orange)
#64748B (Slate)
```

## Success Criteria
- [ ] User can create unlimited projects
- [ ] All CRUD operations work
- [ ] Archive/restore works correctly
- [ ] Default projects created on signup
- [ ] Tasks linked to projects
```

### USER SAYS:
```
spec approved
```

---

## COMMAND 3: /sp.clarify

### USER SAYS:
```
/sp.clarify Frontend: React | Backend: Extend existing Express API | Database: Add Project model to Prisma | Default colors: #EF4444, #F59E0B, #22C55E, #3B82F6, #8B5CF6
```

### AI CONFIRMS:
```
Confirmed:
- Frontend: React
- Backend: Extend existing Express API
- Database: Add Project model to Prisma
- Preset colors: Red, Amber, Green, Blue, Purple
```

---

## COMMAND 4: /sp.plan

### AI CREATES PLAN:

```
# PLAN.md - Feature 2: Projects Management

## Phase 1: Database (Day 1)
- [ ] Add Project model to Prisma schema
- [ ] Run migration
- [ ] Update TypeScript types

## Phase 2: API Endpoints (Day 1-2)
- [ ] GET /api/projects - List all
- [ ] POST /api/projects - Create
- [ ] GET /api/projects/:id - Get one
- [ ] PUT /api/projects/:id - Update
- [ ] DELETE /api/projects/:id - Delete

## Phase 3: Archive Feature (Day 2)
- [ ] POST /api/projects/:id/archive
- [ ] POST /api/projects/:id/restore
- [ ] GET /api/projects/archived

## Phase 4: Default Projects (Day 2-3)
- [ ] Create default projects function
- [ ] Call on user registration
- [ ] Create 3 defaults: Inbox, Work, Personal

## Phase 5: Frontend (Day 3-4)
- [ ] Project list component
- [ ] Create project form
- [ ] Edit project modal
- [ ] Archive/restore buttons
- [ ] Color picker
- [ ] Icon picker

## Estimated Time: 4 days
```

### USER SAYS:
```
plan approved
```

---

## COMMAND 5: /sp.analyze

### AI RUNS ANALYSIS:

```
📋 **CONSISTENCY ANALYSIS**

✅ Constitution Alignment:
- Simplicity: Simple project structure, preset colors
- Visual Clarity: Color-coded projects

✅ Spec Coverage:
- All 5 user stories covered
- All acceptance criteria addressed

✅ Technical Consistency:
- Extend existing API: Correct
- Add Project model: Correct
- Preset colors: 5 specified

**ANALYSIS RESULT: APPROVED**
```

---

## COMMAND 6: /sp.tasks

### AI CREATES TASKS:

```
# TASKS.md - Feature 2: Projects Management

## Task 2.1: Database Schema
```
File: prisma/schema.prisma
- [ ] Add Project model
- [ ] Add relation to User
- [ ] Run prisma migrate dev
```
```prisma
model Project {
  id        String   @id @default(uuid())
  userId    String
  user      User     @relation(fields: [userId], references: [id])
  name      String
  color     String
  icon      String
  isArchived Boolean  @default(false)
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
}
```

## Task 2.2: List Projects API
```
- [ ] GET /api/projects handler
- [ ] Fetch all non-archived projects for user
- [ ] Include task count
- [ ] Return sorted by createdAt
```

## Task 2.3: Create Project API
```
- [ ] POST /api/projects handler
- [ ] Validate name (required)
- [ ] Validate color (from presets)
- [ ] Create project for user
```

## Task 2.4: Update Project API
```
- [ ] PUT /api/projects/:id handler
- [ ] Verify ownership
- [ ] Update name/color/icon
```

## Task 2.5: Delete Project API
```
- [ ] DELETE /api/projects/:id handler
- [ ] Verify ownership
- [ ] Delete project and all tasks
```

## Task 2.6: Archive/Restore APIs
```
- [ ] POST /api/projects/:id/archive
- [ ] POST /api/projects/:id/restore
- [ ] GET /api/projects/archived
```

## Task 2.7: Default Projects
```
- [ ] Create createDefaultProjects function
- [ ] Call in registration flow
- [ ] Create: Inbox (#3B82F6), Work (#EF4444), Personal (#22C55E)
```

## Task 2.8: Frontend Components
```
- [ ] ProjectList component
- [ ] ProjectCard component
- [ ] CreateProjectForm
- [ ] EditProjectModal
- [ ] ColorPicker (10 preset colors)
- [ ] IconPicker (20 emojis)
```

## Task 2.9: Testing
```
- [ ] Test create project
- [ ] Test edit project
- [ ] Test archive project
- [ ] Test restore project
- [ ] Test delete project
- [ ] Test default projects on signup
```
```

### USER SAYS:
```
tasks approved
```

---

## COMMAND 7: /sp.checklist

### AI GENERATES:

```
# QUALITY CHECKLIST - Feature 2: Projects Management

## FUNCTIONAL CHECKLIST
☐ User can create project with name
☐ User can select color from presets
☐ User can select icon
☐ Projects list shows all active projects
☐ Project count displayed correctly
☐ User can edit project name
☐ User can change project color
☐ User can change project icon
☐ User can archive project
☐ Archived projects hidden from main list
☐ User can view archived projects
☐ User can restore archived project
☐ User can delete archived project
☐ Default projects created on signup
☐ Tasks linked to correct projects
```

---

## COMMAND 8: /sp.implement

### AI ENTERS MODE 2 AND BUILDS:

```
🔨 **MODE 2: CODING WORKER ACTIVATED**

Building Feature 2: Projects Management...

## Task 2.1: Database Schema

Updating prisma/schema.prisma...

```prisma
model Project {
  id        String   @id @default(uuid())
  userId    String
  user      User     @relation(fields: [userId], references: [id])
  name      String
  color     String
  icon      String
  isArchived Boolean @default(false)
  createdAt DateTime @default(now())
  updatedAt DateTime @updatedAt
  tasks     Task[]

  @@index([userId])
}
```

Running migration...

```bash
npx prisma migrate dev --name add_projects
```

## Task 2.2: List Projects API

Creating src/routes/projects.ts...

```typescript
router.get('/', authMiddleware, async (req, res) => {
  const projects = await prisma.project.findMany({
    where: { 
      userId: req.user.id,
      isArchived: false 
    },
    include: {
      _count: { select: { tasks: true } }
    },
    orderBy: { createdAt: 'desc' }
  });

  res.json(projects.map(p => ({
    ...p,
    taskCount: p._count.tasks
  })));
});
```

## Task 2.3: Create Project API

```typescript
const PRESET_COLORS = [
  '#EF4444', '#F59E0B', '#22C55E', '#3B82F6', '#8B5CF6',
  '#EC4899', '#6366F1', '#14B8A6', '#F97316', '#64748B'
];

router.post('/', authMiddleware, async (req, res) => {
  const { name, color, icon } = req.body;

  if (!name) {
    return res.status(400).json({ error: 'Name is required' });
  }

  if (!PRESET_COLORS.includes(color)) {
    return res.status(400).json({ error: 'Invalid color' });
  }

  const project = await prisma.project.create({
    data: {
      userId: req.user.id,
      name,
      color,
      icon: icon || '📁'
    }
  });

  res.status(201).json(project);
});
```

[AI continues with remaining tasks...]

✅ All tasks completed!
```

---

## COMMAND 9: /sp.learn

### AI CREATES LEARNING LOG:

```
# LEARNING LOG - Feature 2: Projects Management

## Date: 2026-03-22
## Feature: Projects Management
## Project: TaskMaster

---

### TECHNICAL TERMS LEARNED:

**Prisma Relations**
Connecting models together with foreign keys.
- userId in Project links to User model
- One user has many projects (1:many)
- Projects deleted when user is deleted (CASCADE)

**Preset Options Pattern**
Limiting user choices to predefined options.
- 10 preset colors instead of any hex code
- Prevents invalid colors
- Easier UI implementation

**Soft Delete vs Hard Delete**
- Soft delete: Mark as archived, keep data
- Hard delete: Actually remove from database
- We used soft delete (archive) for projects

**Cascade Delete**
When parent is deleted, children are also deleted.
- User deleted → All their projects deleted
- Project deleted → All its tasks deleted

---

### CONCEPTS TO EXPLORE LATER:

1. **Project Templates** - Pre-made project structures
2. **Project Categories** - Groups of projects
3. **Drag & Drop** - Reorder projects
4. **Project Colors** - Allow custom colors

---

**Feature 2 Complete! Moving to Feature 3: Tasks CRUD**
```

---

## COMMAND 10: /sp.glossary

### AI SHOWS UPDATED GLOSSARY:

```
# GLOSSARY - All Terms Learned

## Authentication (Feature 1)
| Term | Definition |
|------|------------|
| **JWT** | JSON Web Token - A secure token format |
| **Access Token** | Short-lived JWT (15 min) for API auth |
| **Refresh Token** | Long-lived token (30 days) for session |
| **Bcrypt** | Password hashing algorithm with salt |
| **Prisma** | Type-safe ORM for database |
| **Verification Token** | Temporary token for email verification |
| **Refresh Token Rotation** | Each refresh invalidates the old one |

## Projects (Feature 2)
| Term | Definition |
|------|------------|
| **Prisma Relations** | Connecting models with foreign keys |
| **Preset Options** | Limited user choices to predefined options |
| **Soft Delete** | Mark as archived, keep data |
| **Hard Delete** | Actually remove from database |
| **Cascade Delete** | Parent deleted → children deleted too |
```

---

## COMMAND 11: /sp.phr

### AI CREATES PROMPT HISTORY:

```
# PROMPT HISTORY RECORD - Feature 2: Projects Management

## Project: TaskMaster
## Feature: Projects Management
## Date: 2026-03-22
## Duration: 4 days

---

## CONVERSATION FLOW:

### User Request:
```
/sp.discover For the projects feature - how should projects work?
```

### AI Questions: 6 asked
User Answers: A, B, B, A, A, A

### Spec Created: 5 user stories
### Plan Created: 5 phases, 9 tasks
### Implementation: All tasks completed

### What Worked Well:
- Preset colors simplified UI
- Soft delete (archive) pattern was right choice
- Default projects helped onboarding

### NEXT FEATURE: Tasks CRUD
```

---

# PHASE 4: FEATURE 3 - TASKS CRUD

---

## COMMAND 1: /sp.discover

### USER SAYS:
```
/sp.discover For the tasks feature - how should tasks work?
```

### AI ASKS:

```
🤖 **DISCOVERY MODE - Feature 3: Tasks CRUD**

**Question 1: What TASK DATA to store?**
- A: Title only
- B: Title and description
- C: Title, description, and notes

**Question 2: TASK COMPLETION?**
- A: Mark complete/incomplete only
- B: Mark complete + completedAt timestamp
- C: Mark complete + completedAt + who completed

**Question 3: TASK ORDERING?**
- A: Manual drag & drop
- B: Auto sort by created date
- C: Auto sort by priority

**Question 4: TASK DELETION?**
- A: Permanent delete
- B: Move to trash (recoverable)
- C: Archive like projects

**Question 5: BULK ACTIONS?**
- A: No bulk actions
- B: Select multiple, delete
- C: Select multiple, complete/archive/move

**Question 6: TASK SEARCH?**
- A: No search
- B: Search by title only
- C: Search by title and description
```

### USER RESPONDS:
```
B
B
A
A
B
B
```

### AI CONTINUES:

```
Perfect! Based on your answers:

**Task Data:** Title and description
**Completion:** Mark complete + completedAt timestamp
**Ordering:** Manual drag & drop
**Deletion:** Permanent delete
**Bulk Actions:** Select multiple, delete/complete
**Search:** Search by title only

## 3 OPTIONS:

### Option A: Simple Tasks (MY RECOMMENDED)
**What:** Title, description, complete toggle, drag reorder
**Pros:** Quick to build, intuitive
**Best for:** Personal use

### Option B: Tasks with Subtasks
**What:** Tasks can have subtasks
**Pros:** Break down complex tasks
**Best for:** Complex workflows

### Option C: Tasks with Labels
**What:** Tasks can have labels/tags
**Pros:** Flexible categorization
**Best for:** Multiple projects

Which option? (A, B, or C)
```

### USER SAYS:
```
A
```

---

## And the cycle continues...

```
FOR EACH NEW FEATURE:
1. /sp.discover     → AI asks questions
2. /sp.specify      → AI creates spec
3. /sp.clarify     → User provides clarifications
4. /sp.plan        → AI creates plan
5. /sp.analyze     → AI checks consistency
6. /sp.tasks       → AI creates tasks
7. /sp.checklist   → AI generates checklist
8. /sp.implement   → AI builds in Mode 2
9. /sp.learn       → AI records learning
10. /sp.glossary   → AI shows all terms
11. /sp.phr        → AI creates prompt history

REPEAT FOR FEATURE 4, 5, 6, ... until project complete!
```

---

## TASKMASTER PROJECT FEATURES

| Feature | Status |
|---------|--------|
| 1. User Authentication | ✅ Complete |
| 2. Projects Management | ✅ Complete |
| 3. Tasks CRUD | (Continue cycle) |
| 4. Due Dates & Priorities | (Continue cycle) |
| 5. Recurring Tasks | (Continue cycle) |
| 6. Search & Filter | (Continue cycle) |
| 7. Cloud Sync | (Continue cycle) |
| 8. Mobile App | (Continue cycle) |

---

## SUMMARY

Each feature follows the same cycle:
1. **Discover** - AI asks questions, user answers A/B/C
2. **Specify** - AI creates detailed specification
3. **Clarify** - User provides tech stack details
4. **Plan** - AI creates implementation phases
5. **Analyze** - AI checks consistency
6. **Tasks** - AI creates detailed tasks
7. **Checklist** - AI generates quality checklist
8. **Implement** - AI builds in Mode 2
9. **Learn** - AI records technical terms
10. **Glossary** - AI shows all learned terms
11. **PHR** - AI creates prompt history

Then MOVE TO NEXT FEATURE and repeat!
