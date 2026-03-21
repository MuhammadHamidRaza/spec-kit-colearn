# Social Network Platform - Complete AI Co-Partner Project

> **Project: ConnectHub** - A social network built with AI as senior architect co-partner.

---

## Installation

```bash
pip install spec-kit-colearn
npm install -g @muhammad-hamid-raza/spec-kit-colearn
```

---

## Initialize Project

```bash
spec-kit-colearn init connecthub
cd connecthub
```

---

## Project Overview

**10 Features** to be built one at a time, following the complete `/sp` command cycle.

| # | Feature | Status |
|---|---------|--------|
| 1 | Authentication | Complete |
| 2 | User Profiles | Complete |
| 3 | Posts & Feed | Complete |
| 4 | Follow System | Complete |
| 5 | Comments & Reactions | Complete |
| 6 | Direct Messages | Complete |
| 7 | Notifications | Complete |
| 8 | Groups | Complete |
| 9 | Search & Discovery | Complete |
| 10 | Content Moderation | Complete |

---

## Complete /sp Command Flow

```
┌─────────────────────────────────────────────────────────────────┐
│                    CONNECTHUB PROJECT FLOW                      │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  PHASE 1: PROJECT SETUP                                         │
│  ═══════════════════                                            │
│  /sp.constitution    → Set social network principles             │
│                                                                  │
│  ─────────────────────────────────────────────────────────────  │
│                                                                  │
│  FOR EACH FEATURE (repeat this cycle):                          │
│                                                                  │
│  /sp.discover         → AI asks questions                       │
│  /sp.specify          → AI creates specification                 │
│  /sp.clarify          → Resolve unclear requirements            │
│  /sp.plan             → AI creates implementation plan           │
│  /sp.analyze          → AI checks consistency                    │
│  /sp.tasks            → AI generates task list                   │
│  /sp.checklist        → AI generates quality checklist           │
│  /sp.implement        → AI builds (Mode 2 activated)             │
│  /sp.learn            → AI records learning                      │
│  /sp.glossary         → AI shows all terms learned               │
│  /sp.phr              → AI creates prompt history                │
│                                                                  │
│  TOTAL: 10 features                                            │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

# PHASE 1: PROJECT SETUP

## Command: /sp.constitution

**User says:**
```
/sp.constitution Create principles for a social network focused on user privacy, content moderation, real-time performance, and community building.
```

**AI creates:**

```markdown
# ConnectHub Constitution

## Core Principles

### 1. User Privacy
- Data minimization (only collect what's needed)
- User control over privacy settings
- Clear privacy policies
- No data sold to third parties

### 2. Content Moderation
- Safe environment for all ages
- Report mechanism for violations
- Swift action on reported content
- Appeal process for removals

### 3. Real-time Performance
- Instant updates (Socket.io)
- Optimistic UI updates
- Efficient database queries
- CDN for media delivery

### 4. Community Building
- Groups for common interests
- Positive engagement features
- Anti-bullying measures
- Inclusive by design

### 5. Accessibility
- WCAG 2.1 AA compliance
- Screen reader friendly
- Keyboard navigation
- Alt text for images

## Technical Guidelines

### Stack
- Mobile: React Native (Expo)
- Web: React (Next.js)
- Backend: Node.js + Express + TypeScript
- Database: PostgreSQL + Redis
- Real-time: Socket.io
- Storage: AWS S3 + CloudFront

### Performance Targets
- Feed load: < 1 second
- Real-time updates: < 500ms
- Image upload: < 5 seconds
- API response: < 200ms
```

---

# FEATURE 1: AUTHENTICATION

---

## Command 1: /sp.discover

**User says:**
```
/sp.discover For authentication - what login methods? What security?
```

**AI asks questions:**

```
DISCOVERY MODE - Feature 1: Authentication

Question 1: LOGIN METHODS?
- A: Email/password only
- B: Email/password + Google
- C: Email/password + Google + Apple

Question 2: SESSION MANAGEMENT?
- A: JWT tokens only
- B: JWT + refresh tokens
- C: Socket.io authentication

Question 3: SECURITY FEATURES?
- A: Basic (password hashing)
- B: Standard (hash + rate limiting)
- C: Enhanced (hash + rate limiting + 2FA admin)

Question 4: USER VERIFICATION?
- A: No verification
- B: Email verification
- C: Phone verification

Question 5: ACCOUNT TYPES?
- A: Regular users only
- B: Regular + Business accounts
- C: Regular + Business + Verified/Celebrity

Question 6: SOCIAL LOGIN?
- A: None
- B: Google only
- C: Google + Apple + Facebook
```

**User responds:**
```
C
B
C
A
C
B
```

**AI continues:**

```
Based on your answers:
- Login: Email/password + Google + Apple
- Sessions: JWT + refresh tokens
- Security: Enhanced (hash + rate limiting + 2FA admin)
- Verification: Email verification
- Account Types: Regular + Business + Verified
- Social Login: Google + Apple

3 OPTIONS:

Option A: Custom Auth (MY RECOMMENDED)
Full control, JWT + Socket.io auth
Best for: Learning, full customization

Option B: Firebase Auth
Firebase SDK handles everything
Best for: Faster development

Option C: Auth0
Managed auth service
Best for: Enterprise features, SSO

Which option? (A, B, or C)
```

**User says:**
```
A
```

---

## Command 2: /sp.specify

**AI creates specification:**

```markdown
# SPEC.md - Feature 1: Authentication

## User Stories

### US1: Registration
As a new user, I want to register so I can join ConnectHub.

**Acceptance Criteria:**
- [ ] Email/password registration
- [ ] OAuth (Google + Apple)
- [ ] Email verification
- [ ] Profile creation (handle, display name)

### US2: Login
As a returning user, I want to login so I can access my account.

**Acceptance Criteria:**
- [ ] Email/password login
- [ ] OAuth login (Google + Apple)
- [ ] Remember me option
- [ ] Session persistence

### US3: Account Types
As a user, I want different account types for different needs.

**Acceptance Criteria:**
- [ ] Regular user (default)
- [ ] Business account (for brands/businesses)
- [ ] Verified account (manual approval)

### US4: Security
As an admin, I want enhanced security to protect users.

**Acceptance Criteria:**
- [ ] Password hashing (bcrypt 12 rounds)
- [ ] Rate limiting (10 attempts per minute)
- [ ] Admin 2FA required
- [ ] Session management

## Data Model

User {
  id: UUID
  email: String (unique)
  passwordHash: String
  handle: String (unique, @username)
  displayName: String
  avatarUrl: String?
  bio: String?
  accountType: Enum (regular, business, verified)
  emailVerified: Boolean
  twoFactorEnabled: Boolean
  twoFactorSecret: String?
  createdAt: DateTime
}

OAuthAccount {
  id: UUID
  userId: UUID
  provider: Enum (google, apple)
  providerId: String
  accessToken: String
  refreshToken: String
}

## API Endpoints

POST /api/auth/register         → Create account
POST /api/auth/login            → Login
POST /api/auth/oauth/:provider  → OAuth flow
POST /api/auth/verify-email     → Verify email
POST /api/auth/forgot-password  → Request reset
POST /api/auth/reset-password   → Reset password
GET  /api/auth/me               → Get current user
WebSocket: /socket.io/auth      → Real-time auth

## Success Criteria
- [ ] Email + OAuth registration works
- [ ] Email verification sent
- [ ] All account types supported
- [ ] 2FA required for admin
- [ ] Rate limiting prevents brute force
```

**User says:**
```
spec approved
```

---

## Command 3: /sp.clarify

**User says:**
```
/sp.clarify Backend: Node.js + Express + TypeScript | Database: PostgreSQL + Prisma + Redis | OAuth: Google + Apple | JWT: Access 15min, Refresh 30 days | Password: bcrypt 12 rounds | Rate limit: 10/min | 2FA: Email code for admin
```

**AI confirms:**
```
Confirmed clarifications:
- Backend: Node.js + Express + TypeScript
- Database: PostgreSQL + Prisma + Redis
- OAuth: Google + Apple
- JWT: Access 15min, Refresh 30 days
- Password: bcrypt 12 rounds
- Rate limit: 10 attempts per minute
- 2FA: Email code for admin
```

---

## Command 4: /sp.plan

**AI creates plan:**

```markdown
# PLAN.md - Feature 1: Authentication

## Phase 1: Database Schema (Day 1)
- [ ] User model
- [ ] OAuthAccount model
- [ ] Session/Token models
- [ ] Migrations

## Phase 2: Registration (Day 1-2)
- [ ] Email registration endpoint
- [ ] Password validation
- [ ] OAuth endpoints (Google, Apple)
- [ ] Email verification

## Phase 3: Login (Day 2-3)
- [ ] Email login
- [ ] OAuth login flow
- [ ] JWT generation
- [ ] Refresh token rotation

## Phase 4: Security (Day 3)
- [ ] Rate limiting middleware
- [ ] Password hashing
- [ ] Admin 2FA setup
- [ ] Security logging

## Phase 5: WebSocket Auth (Day 3-4)
- [ ] Socket.io connection
- [ ] JWT verification
- [ ] Real-time auth events

## Phase 6: Testing (Day 4)
- [ ] Unit tests
- [ ] Integration tests
- [ ] OAuth flow tests

Estimated: 4-5 days
```

**User says:**
```
plan approved
```

---

## Command 5: /sp.analyze

**AI runs analysis:**

```
CONSISTENCY ANALYSIS

✅ Constitution Alignment:
- User Privacy: Secure auth with tokens
- Real-time Performance: Socket.io auth ready

✅ Spec Coverage:
- All 4 user stories covered
- All acceptance criteria have tasks

✅ Technical Consistency:
- PostgreSQL + Prisma + Redis: Correct
- JWT + refresh: Correct
- bcrypt 12 rounds: Correct

ANALYSIS RESULT: APPROVED
```

---

## Command 6: /sp.tasks

**AI creates tasks:**

```markdown
# TASKS.md - Feature 1: Authentication

Task 1.1: Database Schema

prisma/schema.prisma:

model User {
  id               String   @id @default(uuid())
  email            String   @unique
  passwordHash     String?
  handle           String   @unique
  displayName      String
  avatarUrl        String?
  bio              String?
  accountType      String   @default("regular")
  emailVerified    Boolean  @default(false)
  twoFactorEnabled Boolean  @default(false)
  twoFactorSecret  String?
  failedAttempts   Int      @default(0)
  lockedUntil      DateTime?
  createdAt        DateTime @default(now())
  updatedAt        DateTime @updatedAt
  
  oauthAccounts OAuthAccount[]
  posts       Post[]
  comments    Comment[]
  followers   Follow[] @relation("following")
  following   Follow[] @relation("follower")
  sentMessages     Message[] @relation("sender")
  receivedMessages Message[] @relation("recipient")
}

model OAuthAccount {
  id           String @id @default(uuid())
  userId       String
  user         User   @relation(fields: [userId], references: [id])
  provider     String
  providerId   String
  accessToken  String
  refreshToken String
  expiresAt    DateTime
  
  @@unique([provider, providerId])
}

model RefreshToken {
  id        String   @id @default(uuid())
  token     String   @unique
  userId    String
  expiresAt DateTime
  createdAt DateTime @default(now())
}

Task 1.2: Registration
- [ ] Email registration
- [ ] Password validation
- [ ] Handle validation (@username format)
- [ ] Duplicate check

Task 1.3: OAuth
- [ ] Google OAuth flow
- [ ] Apple OAuth flow
- [ ] Link OAuth to existing account

Task 1.4: Login
- [ ] Email login
- [ ] JWT generation
- [ ] Refresh token rotation

Task 1.5: Security
- [ ] Rate limiting
- [ ] Password hashing
- [ ] Admin 2FA

Task 1.6: Socket.io Auth
- [ ] Connection handler
- [ ] JWT verification
- [ ] User online status
```

**User says:**
```
tasks approved
```

---

## Command 7: /sp.checklist

**AI generates quality checklist:**

```markdown
# QUALITY CHECKLIST - Feature 1: Authentication

## SECURITY
☐ Passwords hashed bcrypt 12 rounds
☐ Rate limiting enforced
☐ Admin 2FA required
☐ OAuth tokens secure
☐ JWT tokens validated

## FUNCTIONAL
☐ Email registration works
☐ OAuth login (Google, Apple) works
☐ Email verification sent
☐ Login persists session
☐ Logout clears session
☐ Protected routes require auth
☐ Socket.io connection authenticated

## USER EXPERIENCE
☐ Clear error messages
☐ Login feels instant
☐ Remember me works
☐ Account types differentiate users
```

---

## Command 8: /sp.implement

**AI enters MODE 2 and builds:**

```
MODE 2: CODING WORKER ACTIVATED

Building Feature 1: Authentication...

Task 1.1: Database Schema

prisma/schema.prisma:

model User {
  id               String   @id @default(uuid())
  email            String   @unique
  passwordHash     String?
  handle           String   @unique
  displayName      String
  avatarUrl        String?
  bio              String?
  accountType      String   @default("regular")
  emailVerified    Boolean  @default(false)
  twoFactorEnabled Boolean  @default(false)
  twoFactorSecret  String?
  failedAttempts   Int      @default(0)
  lockedUntil      DateTime?
  createdAt        DateTime @default(now())
  updatedAt        DateTime @updatedAt
  
  oauthAccounts OAuthAccount[]
  posts       Post[]
  comments    Comment[]
  followers   Follow[] @relation("following")
  following   Follow[] @relation("follower")
}

model OAuthAccount {
  id           String @id @default(uuid())
  userId       String
  user         User   @relation(fields: [userId], references: [id])
  provider     String
  providerId   String
  accessToken  String
  refreshToken String
  expiresAt    DateTime
  
  @@unique([provider, providerId])
}

model RefreshToken {
  id        String   @id @default(uuid())
  token     String   @unique
  userId    String
  expiresAt DateTime
  createdAt DateTime @default(now())
}

Task 1.2: Registration

src/routes/auth.ts:

router.post('/register', async (req, res) => {
  const { email, password, handle, displayName } = req.body;

  // Validate email
  if (!email.includes('@')) {
    return res.status(400).json({ error: 'Invalid email' });
  }

  // Validate handle (@username format)
  const handleRegex = /^@[a-zA-Z0-9_]{3,20}$/;
  if (!handleRegex.test(handle)) {
    return res.status(400).json({ 
      error: 'Handle must be 3-20 chars, start with @' 
    });
  }

  // Validate password strength
  if (password.length < 8) {
    return res.status(400).json({ 
      error: 'Password must be at least 8 characters' 
    });
  }

  // Check duplicates
  const existingEmail = await prisma.user.findUnique({ where: { email } });
  if (existingEmail) {
    return res.status(400).json({ error: 'Email already registered' });
  }

  const existingHandle = await prisma.user.findUnique({ where: { handle } });
  if (existingHandle) {
    return res.status(400).json({ error: 'Handle already taken' });
  }

  // Hash password
  const passwordHash = await bcrypt.hash(password, 12);

  // Create user
  const user = await prisma.user.create({
    data: { email, passwordHash, handle, displayName }
  });

  // Generate verification token
  const token = crypto.randomBytes(32).toString('hex');
  await prisma.verificationToken.create({
    data: {
      token,
      email,
      type: 'verification',
      expiresAt: new Date(Date.now() + 24 * 60 * 60 * 1000)
    }
  });

  console.log(`Verify: /api/auth/verify/${token}`);

  // Generate JWT
  const accessToken = jwt.sign({ userId: user.id }, SECRET, { expiresIn: '15m' });
  const refreshToken = crypto.randomBytes(64).toString('hex');
  
  await prisma.refreshToken.create({
    data: { token: refreshToken, userId: user.id, expiresAt: new Date(Date.now() + 30 * 24 * 60 * 60 * 1000) }
  });

  res.status(201).json({
    accessToken,
    refreshToken,
    user: { id: user.id, email, handle, displayName, accountType: 'regular' }
  });
});

Task 1.3: Login

router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  const user = await prisma.user.findUnique({ where: { email } });
  if (!user) {
    return res.status(401).json({ error: 'Invalid credentials' });
  }

  // Check lockout
  if (user.lockedUntil && user.lockedUntil > new Date()) {
    return res.status(423).json({ 
      error: 'Account locked. Try again later.' 
    });
  }

  // Verify password
  const valid = await bcrypt.compare(password, user.passwordHash);
  if (!valid) {
    const attempts = user.failedAttempts + 1;
    const updates: any = { failedAttempts: attempts };
    
    if (attempts >= 10) {
      updates.lockedUntil = new Date(Date.now() + 15 * 60 * 1000);
    }
    
    await prisma.user.update({ where: { id: user.id }, data: updates });
    return res.status(401).json({ error: 'Invalid credentials' });
  }

  // Reset attempts
  await prisma.user.update({
    where: { id: user.id },
    data: { failedAttempts: 0 }
  });

  // Generate tokens
  const accessToken = jwt.sign({ userId: user.id }, SECRET, { expiresIn: '15m' });
  const refreshToken = crypto.randomBytes(64).toString('hex');
  
  await prisma.refreshToken.create({
    data: { token: refreshToken, userId: user.id, expiresAt: new Date(Date.now() + 30 * 24 * 60 * 60 * 1000) }
  });

  res.json({ accessToken, refreshToken });
});

Task 1.4: Rate Limiting

Rate limiting middleware:

import rateLimit from 'express-rate-limit';

const authLimiter = rateLimit({
  windowMs: 60 * 1000,
  max: 10,
  message: { error: 'Too many attempts. Please try again later.' }
});

app.use('/api/auth/login', authLimiter);
app.use('/api/auth/register', authLimiter);

[AI continues with OAuth, Socket.io, testing...]

✅ Feature 1 Complete!
```

---

## Command 9: /sp.learn

**AI creates learning log:**

```markdown
# LEARNING LOG - Feature 1: Authentication

Date: 2026-03-21
Feature: Authentication
Project: ConnectHub

---

## TECHNICAL TERMS LEARNED

**Handle (@username)**
Social media style username that starts with @.
- Unique identifier for users
- Publicly visible
- Used for @mentions

**OAuth 2.0**
Standard for authorization via third parties.
- Google: OAuth 2.0 + OpenID Connect
- Apple: OAuth 2.0 with Sign in with Apple
- Returns access + refresh tokens

**Socket.io Authentication**
Real-time connections need auth too.
- JWT sent in handshake
- Verified on connection
- User status updated

**Rate Limiting**
Prevent abuse by limiting requests.
- 10 attempts per minute on auth
- 100 per minute on API
- 429 response when exceeded

---

## SOCIAL NETWORK SPECIFIC

**Account Types**
Different user types need different features.
- Regular: Standard user
- Business: Brand/business account
- Verified: Manual approval, blue check

**Real-time Presence**
Users can see who's online.
- Socket.io connection = online
- Disconnect = offline
- Broadcast status changes

---

## NEXT FEATURE: Feature 2 - User Profiles
```

---

## Command 10: /sp.glossary

**AI shows all terms:**

```markdown
# GLOSSARY - All Terms Learned

| Term | Definition |
|------|------------|
| JWT | JSON Web Token - Stateless auth |
| OAuth | Authorization via third parties |
| Handle | @username for social identity |
| Rate Limiting | Prevent abuse by limiting requests |
| Socket.io | Real-time bidirectional communication |
| Bcrypt | Password hashing with salt |
| Refresh Token | Long-lived token for session |
| Account Lockout | Block after X failed attempts |
| 2FA | Two-Factor Authentication |
```

---

## Command 11: /sp.phr

**AI creates prompt history:**

```markdown
# PROMPT HISTORY - Feature 1: Authentication

Project: ConnectHub
Feature: Authentication
Date: 2026-03-21

---

## CONVERSATION FLOW

### User Request
/sp.constitution Create social network principles
/sp.discover For auth - what login methods?

### AI Questions: 6 asked
User Answers: C, B, C, A, C, B

### User Choice: Option A (Custom Auth)

### Tech Stack
- Node.js + Express + TypeScript
- PostgreSQL + Prisma + Redis
- JWT + Socket.io

### What Worked
- Custom auth gives full control
- JWT + refresh pattern scalable
- Rate limiting prevents brute force

### NEXT: Feature 2 - User Profiles
```

---

# FEATURE 2: USER PROFILES

---

## Command 1: /sp.discover

**User says:**
```
/sp.discover For user profiles - what info to show?
```

**AI asks questions:**

```
DISCOVERY MODE - Feature 2: User Profiles

Question 1: PROFILE DATA?
- A: Avatar, name, bio only
- B: Avatar, name, bio, location, website
- C: Full profile with all social fields

Question 2: AVATAR?
- A: Upload photo
- B: Upload + crop tool
- C: Upload + crop + multiple sizes generated

Question 3: PROFILE VISIBILITY?
- A: Public profiles only
- B: Public + Private (follow approval)
- C: Public + Private + Close Friends

Question 4: PROFILE STATS?
- A: Posts, Followers, Following
- B: Posts, Followers, Following, Likes
- C: Full stats (posts, followers, following, likes, views)

Question 5: PROFILE EDITING?
- A: Edit name, bio, avatar
- B: Edit all fields
- C: Edit all + theme customization

Question 6: VERIFICATION?
- A: No verification badges
- B: Manual verification (admin approves)
- C: Auto-verification based on followers

Please answer A, B, or C for each!
```

**User responds:**
```
B
B
B
A
B
B
```

**AI continues:**

```
Based on your answers:
- Profile: Avatar, name, bio, location, website
- Avatar: Upload + crop tool
- Visibility: Public + Private (follow approval)
- Stats: Posts, Followers, Following
- Editing: Edit all fields
- Verification: Manual (admin approves)

3 OPTIONS:

Option A: Simple Profile (MY RECOMMENDED)
Clean profile with essential info
Best for: Twitter-style microblogging

Option B: Rich Profile
Full social profile with all features
Best for: LinkedIn-style professional network

Option C: Minimal Profile
Just avatar and name
Best for: Anonymous/privacy-focused

Which option? (A, B, or C)
```

**User says:**
```
A
```

---

## Command 2-11: Continue the cycle

```
FOR EACH NEW FEATURE:
2. /sp.specify      → AI creates spec
3. /sp.clarify      → User provides clarifications
4. /sp.plan         → AI creates plan
5. /sp.analyze      → AI checks consistency
6. /sp.tasks        → AI creates tasks
7. /sp.checklist    → AI generates checklist
8. /sp.implement    → AI builds in Mode 2
9. /sp.learn        → AI records learning
10. /sp.glossary    → AI shows all terms
11. /sp.phr         → AI creates prompt history

REPEAT FOR FEATURES 3, 4, 5, ... until project complete!
```

---

# CONNECTHUB FEATURES (Continued)

| # | Feature | Status |
|---|---------|--------|
| 1 | Authentication | Complete |
| 2 | User Profiles | Complete |
| 3 | Posts & Feed | (Continue cycle) |
| 4 | Follow System | (Continue cycle) |
| 5 | Comments & Reactions | (Continue cycle) |
| 6 | Direct Messages | (Continue cycle) |
| 7 | Notifications | (Continue cycle) |
| 8 | Groups | (Continue cycle) |
| 9 | Search & Discovery | (Continue cycle) |
| 10 | Content Moderation | (Continue cycle) |

---

# SUMMARY

## Complete /sp Command Cycle (Per Feature)

```
1. /sp.discover     → AI asks 6 questions
2. /sp.specify      → AI creates SPEC.md
3. /sp.clarify      → User provides tech details
4. /sp.plan         → AI creates PLAN.md
5. /sp.analyze      → AI checks consistency
6. /sp.tasks        → AI creates TASKS.md
7. /sp.checklist    → AI generates checklist
8. /sp.implement    → AI builds (Mode 2)
9. /sp.learn        → AI records learning
10. /sp.glossary    → AI shows all terms
11. /sp.phr         → AI creates prompt history

Each feature: 4-7 days
Total project: 22-24 weeks
10 features, one at a time
Learn as you build!
```
