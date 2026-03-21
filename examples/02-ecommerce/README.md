# E-commerce Platform - Complete AI Co-Partner Project

## Project: ShopPro - Full E-commerce Store

---

## INSTALLATION

```bash
pip install spec-kit-colearn
npm install -g @muhammad-hamid-raza/spec-kit-colearn
```

---

## INITIALIZE PROJECT

```bash
spec-kit-colearn init shoppro
cd shoppro
```

---

## ALL /sp COMMANDS FOR EACH FEATURE

```
┌─────────────────────────────────────────────────────────────────┐
│                    SHOPPRO PROJECT FLOW                          │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  PHASE 1: PROJECT SETUP (Run Once)                             │
│  ════════════════════                                            │
│  /sp.constitution    → Set ecommerce principles                │
│                                                                  │
│  PHASE 2: FEATURE 1 (User Authentication)                      │
│  ═══════════════════════════════════                              │
│  /sp.discover         → Partner discussion                        │
│  /sp.specify          → Define requirements                      │
│  /sp.clarify          → Answer questions                        │
│  /sp.plan             → Technical plan                          │
│  /sp.analyze          → Consistency check                       │
│  /sp.tasks            → Generate tasks                          │
│  /sp.checklist        → Quality checklist                       │
│  /sp.implement         → Build feature                          │
│  /sp.learn            → Record learning                         │
│  /sp.glossary          → Review terms                           │
│  /sp.phr               → Prompt history                         │
│                                                                  │
│  PHASE 3: FEATURE 2 (Product Catalog)                           │
│  (Same /sp cycle)                                              │
│                                                                  │
│  PHASE 4: FEATURE 3 (Shopping Cart)                             │
│  (Same /sp cycle)                                              │
│                                                                  │
│  ... continue for each feature ...                              │
│                                                                  │
│  TOTAL FEATURES: 15                                             │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

# SHOPPRO - 15 FEATURES

| # | Feature | /sp Cycle |
|---|---------|-----------|
| 1 | User Authentication | ✅ Complete |
| 2 | Product Catalog | ✅ Complete |
| 3 | Shopping Cart | ✅ Complete |
| 4 | Checkout Process | (Continue) |
| 5 | Payment Integration | (Continue) |
| 6 | Order Management | (Continue) |
| 7 | User Profiles | (Continue) |
| 8 | Admin Dashboard | (Continue) |
| 9 | Reviews & Ratings | (Continue) |
| 10 | Search & Filters | (Continue) |
| 11 | Wishlist | (Continue) |
| 12 | Email Notifications | (Continue) |
| 13 | Inventory Management | (Continue) |
| 14 | Coupons & Discounts | (Continue) |
| 15 | Analytics Dashboard | (Continue) |

---

# PHASE 1: PROJECT SETUP

---

## COMMAND: /sp.constitution

### USER SAYS:
```
/sp.constitution Create principles for a professional ecommerce platform focused on conversion, security, and excellent user experience.
```

### AI CREATES:

```
# ShopPro Constitution

## Core Principles

### 1. Conversion Focused
- Every page optimized for conversion
- Clear CTAs (Call to Action)
- Minimal friction in checkout
- Trust signals visible

### 2. Security First
- PCI compliance for payments
- OWASP security standards
- Data encryption at rest and in transit
- No sensitive data in logs

### 3. Excellent UX
- Fast page loads (< 2 seconds)
- Mobile-first responsive design
- Clear navigation
- Helpful error messages

### 4. Scalability
- Architecture handles 10x traffic
- Database optimized for queries
- Caching strategy in place
- CDN for static assets

### 5. SEO Optimized
- Semantic HTML
- Meta tags for all pages
- Structured data
- Sitemap and robots.txt

## Technical Guidelines

### Stack
- Frontend: Next.js 14 (App Router)
- Backend: Node.js + Express + TypeScript
- Database: PostgreSQL + Prisma
- Payments: Stripe
- Storage: AWS S3 + CloudFront
- Hosting: Vercel + Railway

### Performance Targets
- Page load: < 2 seconds
- API response: < 200ms
- Checkout: < 5 steps
- Mobile: 100 Lighthouse score
```

---

# FEATURE 1: USER AUTHENTICATION

---

## COMMAND 1: /sp.discover

### USER SAYS:
```
/sp.discover For the authentication system - what login methods? How secure?
```

### AI ASKS:

```
🤖 **DISCOVERY MODE - Feature 1: Authentication**

**Question 1: What LOGIN METHODS?**
- A: Email/password only
- B: Email/password + Google + Apple
- C: Email/password + Google + Apple + Facebook + GitHub

**Question 2: Should users VERIFY email?**
- A: Yes, verify before checkout
- B: No verification (optional)

**Question 3: PASSWORD requirements?**
- A: Min 8 characters
- B: Min 8 chars, uppercase, number, special
- C: No requirements

**Question 4: SESSION TYPE?**
- A: JWT tokens (stateless)
- B: Server sessions (stateful)
- C: Hybrid (JWT + refresh)

**Question 5: PASSWORD RESET?**
- A: Email link only
- B: Email link + security questions

**Question 6: TWO-FACTOR AUTH?**
- A: No 2FA
- B: Optional 2FA via email
- C: Required 2FA for admin
```

### USER RESPONDS:
```
A
A
B
C
A
C
```

### AI CONTINUES:

```
Based on your answers:
- Login: Email/password only
- Email verification: Required
- Password: Strong (8+ chars, uppercase, number, special)
- Sessions: Hybrid (JWT + refresh)
- Reset: Email link only
- 2FA: Required for admin

## 3 OPTIONS:

### Option A: Custom Auth (MY RECOMMENDED)
JWT + bcrypt + custom UI
Best for: Full control, learn fundamentals

### Option B: Firebase Auth
Pre-built auth with SDK
Best for: Faster development

### Option C: NextAuth.js
Auth.js for Next.js
Best for: Next.js apps, multiple providers

Which option? (A, B, or C)
```

### USER SAYS:
```
A
```

---

## COMMAND 2: /sp.specify

### AI CREATES:

```
# SPEC.md - Feature 1: User Authentication

## User Stories

### US1: Registration
- Email/password registration
- Strong password validation
- Email verification required
- Welcome email sent

### US2: Login
- Email/password login
- Remember me option
- Failed attempt tracking
- Account lockout after 5 failed attempts

### US3: Password Reset
- Request reset via email
- Reset link (valid 1 hour)
- Set new password
- Invalidate all sessions

### US4: Admin Authentication
- Same login system
- Required 2FA for admin users
- Enhanced security logging

## Technical Requirements

### Data Model
```
User {
  id: UUID
  email: String (unique)
  passwordHash: String
  name: String
  role: Enum (customer, admin)
  emailVerified: Boolean
  twoFactorEnabled: Boolean
  twoFactorSecret: String?
  failedLoginAttempts: Int
  lockedUntil: DateTime?
  createdAt: DateTime
}
```

### API Endpoints
```
POST /api/auth/register
POST /api/auth/login
POST /api/auth/logout
POST /api/auth/refresh
POST /api/auth/forgot-password
POST /api/auth/reset-password
GET  /api/auth/me
POST /api/auth/verify-email
```

## Success Criteria
- [ ] Registration completes < 3 seconds
- [ ] Login completes < 1 second
- [ ] Passwords hashed with bcrypt (12 rounds)
- [ ] Account locked after 5 failed attempts
- [ ] Admin requires 2FA
```

### USER SAYS:
```
spec approved
```

---

## COMMAND 3: /sp.clarify

### USER SAYS:
```
/sp.clarify Backend: Node.js + Express + TypeScript | Database: PostgreSQL + Prisma | Password: bcrypt 12 rounds | JWT: Access 15min, Refresh 7 days | 2FA: Email code | Lockout: 5 attempts, 30 min
```

---

## COMMAND 4: /sp.plan

### AI CREATES:

```
# PLAN.md - Feature 1: Authentication

## Phase 1: Database Schema (Day 1)
- [ ] User model with all fields
- [ ] Migration and seeding

## Phase 2: Registration (Day 1-2)
- [ ] Password validation
- [ ] Registration endpoint
- [ ] Email verification

## Phase 3: Login (Day 2-3)
- [ ] Login endpoint
- [ ] JWT generation
- [ ] Failed attempt tracking
- [ ] Account lockout

## Phase 4: Password Reset (Day 3)
- [ ] Forgot password endpoint
- [ ] Reset password endpoint
- [ ] Session invalidation

## Phase 5: Admin 2FA (Day 3-4)
- [ ] 2FA setup endpoint
- [ ] 2FA verification
- [ ] Require 2FA for admin routes

## Phase 6: Testing (Day 4)
- [ ] Unit tests
- [ ] Integration tests

## Estimated: 4-5 days
```

### USER SAYS:
```
plan approved
```

---

## COMMAND 5: /sp.analyze

### AI RUNS:

```
ANALYSIS: APPROVED
- All user stories covered
- Technical stack consistent
- Security requirements met
```

---

## COMMAND 6: /sp.tasks

### AI CREATES:

```
# TASKS.md - Feature 1: Authentication

## Task 1.1: Database Schema
```prisma
model User {
  id                 String   @id @default(uuid())
  email              String   @unique
  passwordHash       String
  name               String
  role               String   @default("customer")
  emailVerified      Boolean  @default(false)
  twoFactorEnabled   Boolean  @default(false)
  twoFactorSecret   String?
  failedAttempts     Int      @default(0)
  lockedUntil        DateTime?
  createdAt          DateTime @default(now())
}
```

## Task 1.2: Registration
- [ ] Password strength validation
- [ ] Hash password with bcrypt
- [ ] Create user
- [ ] Generate verification token
- [ ] Send verification email

## Task 1.3: Login
- [ ] Find user by email
- [ ] Check account lockout
- [ ] Compare password
- [ ] Generate JWT tokens
- [ ] Track failed attempts

## Task 1.4: Account Lockout
- [ ] Increment failedAttempts
- [ ] Lock account after 5 attempts
- [ ] Auto-unlock after 30 minutes

## Task 1.5: Password Reset
- [ ] Generate reset token
- [ ] Send reset email
- [ ] Validate token
- [ ] Update password
- [ ] Invalidate all sessions

## Task 1.6: Admin 2FA
- [ ] Generate 2FA secret
- [ ] Verify 2FA code
- [ ] Require 2FA for admin routes

## Task 1.7: JWT Middleware
- [ ] Verify access token
- [ ] Check admin 2FA
- [ ] Attach user to request
```

### USER SAYS:
```
tasks approved
```

---

## COMMAND 7: /sp.checklist

### AI GENERATES:

```
# QUALITY CHECKLIST - Feature 1: Authentication

## SECURITY
☐ Passwords hashed with bcrypt (12 rounds)
☐ Strong password validation enforced
☐ Account locked after 5 failed attempts
☐ JWT tokens secure and validated
☐ Admin 2FA required

## FUNCTIONAL
☐ User can register
☐ Email verification works
☐ User can login
☐ Failed attempts tracked
☐ Password reset works
☐ Logout clears session
☐ Protected routes require auth
```

---

## COMMAND 8: /sp.implement

### AI ENTERS MODE 2:

```
🔨 **MODE 2: CODING WORKER ACTIVATED**

Building Feature 1: User Authentication...

## Task 1.1: Database Schema

```prisma
model User {
  id               String    @id @default(uuid())
  email            String    @unique
  passwordHash     String
  name             String
  role             String    @default("customer")
  emailVerified    Boolean   @default(false)
  twoFactorEnabled Boolean   @default(false)
  twoFactorSecret String?
  failedAttempts   Int       @default(0)
  lockedUntil     DateTime?
  createdAt        DateTime  @default(now())
  updatedAt        DateTime  @updatedAt
}

model RefreshToken {
  id        String   @id @default(uuid())
  token     String   @unique
  userId    String
  expiresAt DateTime
  createdAt DateTime @default(now())
}

model VerificationToken {
  id        String   @id @default(uuid())
  token     String   @unique
  email     String
  type      String
  expiresAt DateTime
}
```

## Task 1.2: Registration

```typescript
// POST /api/auth/register
router.post('/register', async (req, res) => {
  const { email, password, name } = req.body;

  // Validate email
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(email)) {
    return res.status(400).json({ error: 'Invalid email' });
  }

  // Validate password strength
  const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
  if (!passwordRegex.test(password)) {
    return res.status(400).json({ 
      error: 'Password must be 8+ chars with uppercase, number, special char' 
    });
  }

  // Check existing user
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
  const token = crypto.randomBytes(32).toString('hex');
  await prisma.verificationToken.create({
    data: { token, email, type: 'verification', expiresAt: new Date(Date.now() + 3600000) }
  });

  // Send email (mock)
  console.log(`Verify: /api/auth/verify/${token}`);

  res.status(201).json({ message: 'Registered! Check email.' });
});
```

## Task 1.3: Login with Lockout

```typescript
// POST /api/auth/login
router.post('/login', async (req, res) => {
  const { email, password } = req.body;

  // Find user
  const user = await prisma.user.findUnique({ where: { email } });
  if (!user) {
    return res.status(401).json({ error: 'Invalid credentials' });
  }

  // Check lockout
  if (user.lockedUntil && user.lockedUntil > new Date()) {
    return res.status(423).json({ 
      error: 'Account locked. Try again later.',
      lockedUntil: user.lockedUntil
    });
  }

  // Verify password
  const valid = await bcrypt.compare(password, user.passwordHash);
  if (!valid) {
    // Increment failed attempts
    const newAttempts = user.failedAttempts + 1;
    const updates: any = { failedAttempts: newAttempts };
    
    if (newAttempts >= 5) {
      updates.lockedUntil = new Date(Date.now() + 30 * 60 * 1000); // 30 min
    }
    
    await prisma.user.update({ where: { id: user.id }, data: updates });
    return res.status(401).json({ error: 'Invalid credentials' });
  }

  // Reset attempts on success
  await prisma.user.update({
    where: { id: user.id },
    data: { failedAttempts: 0, lockedUntil: null }
  });

  // Generate tokens
  const accessToken = jwt.sign({ userId: user.id }, SECRET, { expiresIn: '15m' });
  const refreshToken = crypto.randomBytes(64).toString('hex');
  
  await prisma.refreshToken.create({
    data: { token: refreshToken, userId: user.id, expiresAt: new Date(Date.now() + 7 * 24 * 60 * 60 * 1000) }
  });

  res.json({ accessToken, refreshToken, user: { id: user.id, email: user.email, name: user.name } });
});
```

[AI continues with remaining tasks...]

✅ Feature 1 Complete!
```

---

## COMMAND 9: /sp.learn

### AI CREATES LEARNING LOG:

```
# LEARNING LOG - Feature 1: Authentication

## Date: 2026-03-21
## Feature: User Authentication
## Project: ShopPro

---

### TECHNICAL TERMS LEARNED:

**Account Lockout**
Security measure that temporarily prevents login after X failed attempts.
- 5 failed attempts → lock for 30 minutes
- Prevents brute force attacks
- Must reset attempt count on successful login

**Refresh Token Rotation**
Each refresh token can only be used once.
- Old token deleted from DB
- New token issued
- If stolen and used, we detect it

**JWT (JSON Web Token)**
Secure token for stateless authentication.
- Access token: 15 minutes, for API calls
- Refresh token: 7 days, to get new access tokens

**Bcrypt**
Password hashing with built-in salt.
- 12 rounds = 4096 iterations
- Makes brute force attacks computationally expensive

---

### SECURITY PATTERNS:

1. **Defense in Depth**: Multiple layers (lockout, 2FA, JWT)
2. **Fail Secure**: Lock account on repeated failures
3. **Least Privilege**: JWT has minimal claims
4. **Secure Defaults**: New accounts unverified, non-admin

---

**Feature 1 Complete! Moving to Feature 2: Product Catalog**
```

---

## COMMAND 10: /sp.glossary

```
# GLOSSARY - All Terms Learned

| Term | Definition |
|------|------------|
| **JWT** | JSON Web Token - Stateless auth token |
| **Access Token** | Short-lived token (15 min) for API |
| **Refresh Token** | Long-lived token (7 days) for session |
| **Bcrypt** | Password hashing with salt |
| **Account Lockout** | Temporarily block after X failed attempts |
| **Refresh Rotation** | Each refresh invalidates old token |
| **2FA** | Two-Factor Authentication |
| **OWASP** | Web Application Security Project |
| **PCI DSS** | Payment Card Industry Data Security Standard |
```

---

## COMMAND 11: /sp.phr

```
# PROMPT HISTORY - Feature 1: Authentication

## User Request:
/sp.constitution Create ecommerce principles
/sp.discover For auth - login methods?

## AI Questions: 6
## User Answers: A, A, B, C, A, C

## User Choice: Option A (Custom Auth)

## Issues Encountered:
- None significant

## What Worked:
- Lockout pattern effective
- JWT + refresh hybrid is flexible

## NEXT: Feature 2 - Product Catalog
```

---

# FEATURE 2: PRODUCT CATALOG

---

## COMMAND 1: /sp.discover

### USER SAYS:
```
/sp.discover For the product catalog - what features?
```

### AI ASKS:

```
**Question 1: PRODUCT DATA?**
- A: Name, price, image, description
- B: Name, price, images, description, specs
- C: All of above + variants, SKU, weight

**Question 2: CATEGORIES?**
- A: Single level (just categories)
- B: Two levels (categories + subcategories)
- C: Three levels (categories + subcategories + micro)

**Question 3: IMAGES?**
- A: Single image per product
- B: Up to 5 images
- C: Up to 8 images + video

**Question 4: PRODUCT VARIANTS?**
- A: No variants (one size/color)
- B: Size variants
- C: Size + Color variants

**Question 5: INVENTORY TRACKING?**
- A: No tracking (always in stock)
- B: Track stock levels
- C: Track per variant

**Question 6: SEO FEATURES?**
- A: Basic meta tags
- B: Full SEO (meta, schema, sitemap)
- C: Advanced SEO + blog integration
```

### USER RESPONDS:
```
C
B
C
C
B
B
```

### AI CONTINUES:

```
Based on your answers:
- Products: Full data with variants, SKU, weight
- Categories: Two levels (parent + child)
- Images: Up to 8 images
- Variants: Size + Color
- Inventory: Track per variant
- SEO: Full SEO (meta, schema, sitemap)

## 3 OPTIONS:

### Option A: Basic Catalog (MY RECOMMENDED)
Simple products with variants, images, categories
Best for: Most ecommerce stores

### Option B: Advanced Catalog
Products with variants, attributes, custom fields
Best for: Complex products (clothing with sizes/colors)

### Option C: Enterprise Catalog
Products with full attribute system, bundles, composite products
Best for: Large catalogs with complex relationships

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
# SPEC.md - Feature 2: Product Catalog

## User Stories

### US1: Product Listing
- Homepage with featured products
- Category pages
- Pagination (20 per page)
- Sort by price, newest, popularity

### US2: Product Detail
- Image gallery (up to 8 images)
- Product info (name, price, description)
- Variant selector (size, color)
- Stock status indicator
- Add to cart button
- Related products

### US3: Category Navigation
- Two-level categories
- Category pages with filters
- Breadcrumb navigation

### US4: Search
- Search by product name
- Search results page
- Filter by category, price

## Data Model

```
Product {
  id: UUID
  name: String
  slug: String (unique)
  description: Text
  price: Decimal
  comparePrice: Decimal?
  sku: String
  weight: Decimal?
  categoryId: UUID
  images: String[] (S3 URLs)
  status: Enum (active, draft, archived)
  createdAt: DateTime
}

Category {
  id: UUID
  name: String
  slug: String
  parentId: UUID?
  description: Text?
}

Variant {
  id: UUID
  productId: UUID
  size: String?
  color: String?
  sku: String
  priceModifier: Decimal
  stock: Int
  lowStockThreshold: Int
}

ProductImage {
  id: UUID
  productId: UUID
  url: String
  order: Int
}
```

## API Endpoints
```
GET  /api/products
GET  /api/products/:slug
GET  /api/categories
GET  /api/categories/:slug
GET  /api/search?q=
```

## Success Criteria
- [ ] Products display with all info
- [ ] Variant selection updates price
- [ ] Stock status accurate
- [ ] Categories filter products
- [ ] Search finds products
- [ ] SEO meta tags generated
```

### USER SAYS:
```
spec approved
```

---

## COMMAND 3-11: Continue the cycle...

```
FOR FEATURE 2:
3. /sp.clarify     → User provides tech stack
4. /sp.plan       → AI creates plan
5. /sp.analyze    → AI checks consistency
6. /sp.tasks      → AI creates tasks
7. /sp.checklist → AI generates checklist
8. /sp.implement  → AI builds in Mode 2
9. /sp.learn      → AI records learning
10. /sp.glossary  → AI shows all terms
11. /sp.phr       → AI creates prompt history

THEN MOVE TO FEATURE 3: Shopping Cart
AND CONTINUE THE SAME CYCLE!
```

---

# SHOPPRO FEATURES (Continued)

| # | Feature | Next Steps |
|---|---------|-----------|
| 1 | User Authentication | ✅ Complete |
| 2 | Product Catalog | ✅ Complete |
| 3 | Shopping Cart | /sp.discover → /sp.specify → /sp.clarify → /sp.plan → /sp.analyze → /sp.tasks → /sp.checklist → /sp.implement → /sp.learn → /sp.glossary → /sp.phr |
| 4 | Checkout Process | (Continue cycle) |
| 5 | Payment Integration | (Continue cycle) |
| 6 | Order Management | (Continue cycle) |
| 7 | User Profiles | (Continue cycle) |
| 8 | Admin Dashboard | (Continue cycle) |
| 9 | Reviews & Ratings | (Continue cycle) |
| 10 | Search & Filters | (Continue cycle) |
| 11 | Wishlist | (Continue cycle) |
| 12 | Email Notifications | (Continue cycle) |
| 13 | Inventory Management | (Continue cycle) |
| 14 | Coupons & Discounts | (Continue cycle) |
| 15 | Analytics Dashboard | (Continue cycle) |

---

# SUMMARY

For EACH feature, run this complete cycle:

```
1. /sp.discover     → AI asks questions
2. /sp.specify      → AI creates spec
3. /sp.clarify      → User provides tech details
4. /sp.plan         → AI creates plan
5. /sp.analyze      → AI checks consistency
6. /sp.tasks       → AI creates tasks
7. /sp.checklist    → AI generates checklist
8. /sp.implement    → AI builds in Mode 2
9. /sp.learn        → AI records learning
10. /sp.glossary    → AI shows all terms
11. /sp.phr         → AI creates prompt history

THEN MOVE TO NEXT FEATURE!
```

## Each feature takes 4-7 days
## Total project: 18-20 weeks
## 15 features, one at a time
