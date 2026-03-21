# Example Project 1: User Authentication System

## Overview
This example shows how to build a complete user authentication system using Spec-Kit-CoLearn.

---

## Project Setup

### Step 1: Initialize Project
```bash
spec-kit-colearn init user-auth-system
cd user-auth-system
```

### Step 2: Open Your AI Tool
Start Claude Code, Gemini CLI, or any supported AI tool in this directory.

### Step 3: Paste Activation Prompt
Copy from README Section 5 and paste into your AI tool.

---

## Full AI Conversation

### User → AI (Feature Request)
```
I want to build a user authentication system with:
- Email and password login
- User registration
- Password reset
- Session management
- JWT tokens
```

---

### AI → User (Discovery Mode - /sp.discover)

```
🤖 **SENIOR ARCHITECT MODE ACTIVATED**

I've activated Discovery Mode before creating any spec. Let me ask some questions to ensure I understand your requirements fully.

---

### Question 1: WHO will use this?
**Target Users:**
- A: Mobile app users only
- B: Web app users only  
- C: Both web and mobile
- D: API consumers (developers)

*Which best describes your users?*

---

### Question 2: WHAT auth method?
**Authentication Methods:**
- A: Email/Password only (Recommended for most apps)
- B: Social login (Google, GitHub, etc.) + Email/Password
- C: Passwordless (Magic links, OTP)
- D: Enterprise SSO (SAML, OAuth)

*What level of auth do you need?*

---

### Question 3: SESSION MANAGEMENT?
**Session Strategy:**
- A: JWT in localStorage (Simple, stateless)
- B: HTTP-only cookies with refresh tokens (More secure, Recommended)
- C: Session IDs stored in database

*How should sessions work?*

---

### Question 4: WHAT'S THE STACK?
**Technology:**
- A: Node.js + Express + MongoDB
- B: Node.js + Fastify + PostgreSQL
- C: Python + Django + PostgreSQL
- D: (Tell me your preference)

*What's your backend technology?*

---

### Question 5: EDGE CASES
**Should handle:**
- Password reset flow ✓
- Email verification ✓
- Account lockout after failed attempts ✓
- Password strength validation ✓

*Any additional edge cases?*

---

### Question 6: SUCCESS CRITERIA
**How will we measure success?**
- Login/Register works in < 2 seconds
- Secure against common attacks (XSS, CSRF, SQL Injection)
- Passwords never stored in plain text

*Any other success criteria?*

---

**Next:** Wait for your answers, then I'll present 3 implementation options.
```

---

### User → AI (Answers)
```
C: Both web and mobile
A: Email/Password only
B: HTTP-only cookies with refresh tokens
A: Node.js + Express + MongoDB
No additional edge cases
Those success criteria are good
```

---

### AI → User (Options Presentation - /sp.specify starts)

```
Based on your answers, here are 3 implementation options:

---

## Option A: Simple JWT Auth (MY RECOMMENDATION)
**What:** Clean JWT implementation with HTTP-only cookies
**Pros:**
- Stateless and scalable
- Easy to test
- Works well for web and mobile
- Industry standard pattern
**Cons:**
- JWT storage in cookies needs careful implementation
- Token refresh logic adds complexity
**Best for:** Most web/mobile apps

---

## Option B: Session-Based Auth
**What:** Server-side sessions stored in MongoDB
**Pros:**
- Easy session invalidation
- Simple to understand
- Sessions can store more data
**Cons:**
- Requires session store setup
- Less scalable than JWT
**Best for:** Apps needing immediate session revocation

---

## Option C: OAuth 2.0 + Custom Auth
**What:** Full OAuth 2.0 with PKCE for web/mobile
**Pros:**
- Supports social login easily
- Industry standard for mobile
- Most secure option
**Cons:**
- Most complex to implement
- Requires more infrastructure
**Best for:** Enterprise apps or apps needing social login

---

**Which option do you prefer? (A, B, or C)**
```

---

### User → AI (Decision)
```
A
```

---

### AI → User (Spec Created - /sp.specify runs)

```
✅ **Option A selected: Simple JWT Auth**

I'm now creating the specification document...

---

# SPEC.md - User Authentication System

## 1. Overview
JWT-based authentication with HTTP-only cookies for web and mobile apps.

## 2. Users
Web and mobile app users who need secure account management.

## 3. Core Features
- User registration with email verification
- Email/password login with bcrypt hashing
- JWT access tokens (15min) + refresh tokens (7 days)
- HTTP-only cookies for secure token storage
- Password reset via email link
- Account lockout after 5 failed attempts

## 4. User Flows
### Registration
1. User submits email + password
2. Server validates password strength
3. Creates user, sends verification email
4. User clicks link → account verified

### Login
1. User submits email + password
2. Server validates credentials
3. Creates JWT + refresh token
4. Sets HTTP-only cookie with JWT
5. Returns refresh token to client

## 5. Security
- Passwords hashed with bcrypt (12 rounds)
- JWT signed with RS256
- HTTP-only, Secure, SameSite=Strict cookies
- Rate limiting on all auth endpoints

## 6. Success Criteria
- [ ] Login/Register responds in < 500ms
- [ ] Passwords stored as bcrypt hashes
- [ ] JWT tokens expire in 15 minutes
- [ ] Failed attempts trigger lockout

---

**Say "spec approved" to proceed to planning.**
```

---

### User → AI (Approval)
```
spec approved
```

---

### AI → User (Plan Created - /sp.plan runs)

```
Creating implementation plan...

---

# PLAN.md - User Authentication System

## Phase 1: Project Setup
- [ ] Initialize Node.js project
- [ ] Install dependencies (express, mongoose, bcryptjs, jsonwebtoken)
- [ ] Create folder structure
- [ ] Set up MongoDB connection

## Phase 2: User Model
- [ ] Create User schema
- [ ] Add password hashing middleware
- [ ] Add verification fields
- [ ] Add lockout fields

## Phase 3: Auth Routes
- [ ] POST /api/auth/register
- [ ] POST /api/auth/login
- [ ] POST /api/auth/logout
- [ ] POST /api/auth/refresh
- [ ] POST /api/auth/forgot-password
- [ ] POST /api/auth/reset-password
- [ ] GET /api/auth/verify/:token

## Phase 4: Middleware
- [ ] Auth middleware (verify JWT)
- [ ] Rate limiting middleware
- [ ] Error handling middleware

## Phase 5: Testing
- [ ] Unit tests for User model
- [ ] Integration tests for auth routes
- [ ] Security tests

**Say "plan approved" to generate tasks.**
```

---

### User → AI
```
plan approved
```

---

### AI → User (Tasks Generated - /sp.tasks runs)

```
Generating detailed tasks...

---

# TASKS.md - User Authentication System

## Task 1.1: Initialize Project
```
- [ ] Run: npm init -y
- [ ] Install: express mongoose bcryptjs jsonwebtoken cookie-parser cors helmet express-rate-limit
- [ ] Create folders: src/{models,routes,middleware,controllers,utils}
- [ ] Create src/app.js
- [ ] Create src/config/db.js
```

## Task 1.2: Setup MongoDB Connection
```
- [ ] Create MongoDB URI in .env
- [ ] Create src/config/db.js with connection logic
- [ ] Export connected mongoose instance
```

## Task 2.1: Create User Model
```javascript
// src/models/User.js
- [ ] Schema fields: email, password, isVerified, verificationToken
- [ ] Schema fields: resetToken, resetTokenExpiry, loginAttempts, lockUntil
- [ ] pre('save') hook for password hashing
- [ ] Method: comparePassword()
- [ ] Method: incrementLoginAttempts()
- [ ] Index: unique email index
```

## Task 3.1: Registration Route
```
- [ ] Validate email format and password strength
- [ ] Check if user exists
- [ ] Hash password with bcrypt
- [ ] Generate verification token
- [ ] Save user to database
- [ ] Send verification email (mock for now)
- [ ] Return success response
```

## Task 3.2: Login Route
```
- [ ] Find user by email
- [ ] Check if account is locked
- [ ] Compare password
- [ ] Reset login attempts on success
- [ ] Generate JWT access token (15min)
- [ ] Generate refresh token (7 days)
- [ ] Set HTTP-only cookie with JWT
- [ ] Return refresh token to client
```

[... more tasks ...]

**Say "tasks approved" to enter MODE 2 and start implementation.**
```

---

### User → AI
```
tasks approved
```

---

### AI → User (MODE 2 ACTIVATED - /sp.implement runs)

```
🔨 **MODE 2: CODING WORKER ACTIVATED**

I will now implement each task systematically. Starting with Task 1.1...

---

## Implementing Task 1.1: Initialize Project

Creating package.json...
Installing dependencies...
Creating folder structure...

✅ Task 1.1 Complete

---

## Implementing Task 1.2: Setup MongoDB Connection

Creating src/config/db.js...

✅ Task 1.2 Complete

---

[... implements all tasks ...]

After each task, I run tests:
```bash
npm test
```

✅ All tests passing

---

## Feature Complete!

Let me run /sp.learn to record what we learned...
```

---

### AI → User (/sp.learn runs automatically)

```
📚 **LEARNING LOG - User Authentication**

### Technical Terms Learned:
- **JWT (JSON Web Token)**: A compact way to securely transmit information between parties as a JSON object
- **Bcrypt**: Password hashing function with salt rounds - unlike plain hashing, it includes built-in salt
- **HTTP-only Cookie**: Cookie that can't be accessed by JavaScript - prevents XSS attacks from stealing tokens
- **Refresh Token**: Long-lived token used to obtain new short-lived access tokens
- **Rate Limiting**: Restricting number of requests from a single IP to prevent brute force attacks
- **Account Lockout**: Temporarily blocking account after multiple failed login attempts

### Decisions Made:
- Chose HTTP-only cookies over localStorage for better security
- Used JWT with 15-minute expiry for access tokens
- Implemented refresh token rotation for additional security

### Concepts to Explore Later:
- OAuth 2.0 and when to use it
- WebAuthn for passwordless authentication
- Session storage vs token storage tradeoffs

---

Run `/sp.glossary` anytime to review all learned terms across projects.
```

---

## Summary: When To Use Each Command

| Phase | Command | When To Run |
|-------|---------|-------------|
| Start | Paste Activation Prompt | Once at beginning of session |
| Discovery | `/sp.discover` | Automatically after activation |
| Specification | `/sp.specify` | After answering discovery questions |
| Planning | `/sp.plan` | After saying "spec approved" |
| Tasks | `/sp.tasks` | After saying "plan approved" |
| Implementation | `/sp.implement` | After saying "tasks approved" |
| Learning | `/sp.learn` | After completing feature |
| Review | `/sp.glossary` | Anytime to review terms |

---

## Files Created After This Project

```
user-auth-system/
├── SPEC.md
├── PLAN.md
├── TASKS.md
├── src/
│   ├── app.js
│   ├── config/
│   │   └── db.js
│   ├── models/
│   │   └── User.js
│   ├── routes/
│   │   └── auth.js
│   ├── middleware/
│   │   ├── auth.js
│   │   └── rateLimiter.js
│   └── controllers/
│       └── authController.js
├── tests/
│   └── auth.test.js
└── history/
    └── prompts/
        └── user-auth/
            └── learning-log.md
```
