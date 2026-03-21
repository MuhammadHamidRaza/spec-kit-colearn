# Full E-commerce Project: ShopSmart

## Overview

This is a **production-level ecommerce platform** example showing how to build a complete online store **one feature at a time**.

### Key Principle: ONE Feature At A Time

> **Don't try to build everything at once!**
> 
> Big projects like ecommerce have many features. Instead of planning everything and building everything, we:
> 1. Plan ALL features upfront (so we know the full scope)
> 2. Build ONE feature completely (spec → plan → tasks → implement → learn)
> 3. Move to next feature
> 4. Repeat until done

---

## Part 1: Planning the Full E-commerce Project

### Step 1: Constitution
```
/sp.constitution Create principles focused on: 
- Performance: Pages must load under 2 seconds
- Security: PCI compliance for payments, data encryption
- SEO: Full optimization for product discovery
- Scalability: Architecture that handles 10x traffic growth
- User Experience: Cart abandonment rate under 30%
- Mobile-first design approach
```

---

### Step 2: Specify (Full Project Vision)
```
/sp.specify Build ShopSmart - a complete ecommerce platform with:
- Product catalog with categories, search, and filters
- User accounts with registration, login, profiles
- Shopping cart with persistent storage
- Checkout process with address management
- Order management and history
- Payment integration with Stripe
- Admin dashboard for product management
- Wishlist and recently viewed items
- Reviews and ratings system
- Email notifications for orders
- Mobile responsive design
```

---

### Step 3: Clarify (Full Scope)
```
/sp.clarify 
- Products: Physical goods only (not digital)
- Users: Customers and admin users
- Payment: Stripe only (no PayPal in v1)
- Shipping: Real-time rates from UPS/FedEx API
- Inventory: Track stock levels
- Returns: Basic return request flow
- Mobile: React Native not needed, responsive web only
- Launch: MVP first, can add features later
```

---

## Part 2: Feature Planning (All Features)

Based on the full spec, here are the features we'll build **ONE AT A TIME**:

### Feature Roadmap

| # | Feature | Priority | Complexity |
|---|---------|----------|------------|
| 1 | User Authentication | HIGH | Medium |
| 2 | Product Catalog | HIGH | High |
| 3 | Shopping Cart | HIGH | Medium |
| 4 | Product Search & Filters | MEDIUM | High |
| 5 | Checkout Process | HIGH | High |
| 6 | Order Management | MEDIUM | Medium |
| 7 | Admin Dashboard | LOW | High |
| 8 | Wishlist | LOW | Low |
| 9 | Reviews & Ratings | LOW | Medium |
| 10 | Email Notifications | MEDIUM | Low |

---

## Part 3: Building Feature #1 - User Authentication

### Focus: Complete this ONE feature before moving to Feature #2

---

### Feature #1 Spec
```
/sp.specify For ShopSmart, build Feature #1: User Authentication System
- Email and password registration
- Email/password login with "Remember me"
- Password reset via email link
- User profile with name, email, phone
- Session management with JWT
- Account lockout after 5 failed attempts
- Email verification required before first order
```

---

### Feature #1 Clarify
```
/sp.clarify
- Users: Customers only (admins in Feature #7)
- Sessions: JWT with 7-day refresh tokens
- Password: Min 8 chars, require uppercase, number, special char
- Email: SendGrid for transactional emails
- Database: PostgreSQL for user data
```

---

### Feature #1 Plan
```
/sp.plan
- Backend: Node.js + Express + TypeScript
- Database: PostgreSQL with Prisma ORM
- Auth: JWT (access 15min, refresh 7 days)
- Email: SendGrid API
- Password: bcrypt with 12 rounds
- API: REST with JWT authentication
```

---

### Feature #1 Analyze
```
/sp.analyze
```
AI checks spec ↔ plan ↔ constitution for contradictions.

---

### Feature #1 Tasks
```
/sp.tasks
```
AI generates detailed task list.

---

### Feature #1 Checklist
```
/sp.checklist Generate security-focused checklist for auth system
```

---

### Feature #1 Implement
```
/sp.implement
```
AI writes code for ALL authentication tasks.

---

### Feature #1 Learn
```
/sp.learn
```
AI records:
- JWT tokens, bcrypt, refresh token rotation
- Prisma ORM patterns
- SendGrid integration
- Session security best practices

---

### Feature #1 Glossary
```
/sp.glossary
```
Review all terms learned.

---

### ✅ FEATURE #1 COMPLETE!

```
ShopSmart/
├── SPEC.md                    ← Full project spec
├── PLAN.md                    ← Full project plan
├── constitution.md             ← Project principles
├── features/
│   └── 01-user-auth/
│       ├── spec.md            ← Feature spec
│       ├── plan.md            ← Feature plan
│       ├── tasks.md           ← Task list
│       └── code/              ← All auth code
├── history/
│   └── prompts/
│       └── 01-user-auth/
│           ├── learning-log.md ← What we learned
│           └── phr.md         ← Prompt history
└── SPEC.md
```

---

## Part 4: Building Feature #2 - Product Catalog

### Now move to Feature #2 - Don't touch Feature #1 anymore!

---

### Feature #2 Spec
```
/sp.specify For ShopSmart, build Feature #2: Product Catalog
- Product listing page with pagination (20 per page)
- Product detail page with images, description, price
- Category pages with subcategories
- Product variants (size, color)
- Image gallery with zoom
- Stock status indicator
- Related products section
- SEO meta tags for each product
```

---

### Feature #2 Clarify
```
/sp.clarify
- Categories: 2 levels (parent + child)
- Images: Up to 8 per product, stored in S3
- Variants: Size and color combinations
- Inventory: Track stock per variant
- Pricing: Base price + variant modifiers
- Currency: USD only in v1
```

---

### Feature #2 Plan
```
/sp.plan
- Frontend: Next.js 14 with App Router
- Backend: Existing Express API extended
- Database: PostgreSQL + Prisma (existing schema extended)
- Images: AWS S3 with CloudFront CDN
- Search: PostgreSQL full-text search (Elasticsearch in v2)
- Caching: Redis for product cache
```

---

### Feature #2 Tasks
```
/sp.tasks
```

---

### Feature #2 Implement
```
/sp.implement
```

---

### Feature #2 Learn
```
/sp.learn
```
Records:
- Next.js App Router patterns
- Image optimization
- Database indexing
- CDN caching strategies

---

## Part 5: Feature Roadmap Continues

### After Feature #2, continue with:

| # | Feature | Commands |
|---|---------|----------|
| 3 | Shopping Cart | `/sp.specify` → `/sp.clarify` → `/sp.plan` → `/sp.tasks` → `/sp.implement` → `/sp.learn` |
| 4 | Product Search & Filters | Same pattern |
| 5 | Checkout Process | Same pattern |
| 6 | Order Management | Same pattern |
| 7 | Admin Dashboard | Same pattern |
| 8 | Wishlist | Same pattern |
| 9 | Reviews & Ratings | Same pattern |
| 10 | Email Notifications | Same pattern |

---

## Part 6: Project Structure After ALL Features

```
ShopSmart/
├── .specify/
│   ├── memory/
│   │   └── constitution.md
│   ├── specs/
│   │   ├── 01-user-auth/
│   │   ├── 02-product-catalog/
│   │   ├── 03-shopping-cart/
│   │   ├── 04-search-filters/
│   │   ├── 05-checkout/
│   │   ├── 06-orders/
│   │   ├── 07-admin-dashboard/
│   │   ├── 08-wishlist/
│   │   ├── 09-reviews/
│   │   └── 10-email-notifications/
│   └── templates/
├── history/
│   ├── prompts/
│   │   ├── 01-user-auth/
│   │   │   ├── learning-log.md
│   │   │   └── phr.md
│   │   ├── 02-product-catalog/
│   │   │   └── ...
│   │   └── (one folder per feature)
│   └── adr/
│       ├── jwt-strategy.md
│       ├── database-choice.md
│       └── image-storage.md
├── frontend/
│   ├── app/              (Next.js)
│   ├── components/
│   └── lib/
├── backend/
│   ├── src/
│   │   ├── routes/
│   │   ├── controllers/
│   │   ├── services/
│   │   └── models/
│   └── prisma/
│       └── schema.prisma
├── infrastructure/
│   ├── docker-compose.yml
│   └── terraform/
└── SPEC.md                (Master spec - updated with each feature)
```

---

## Key Lessons from Ecommerce Example

### Lesson 1: ONE Feature At A Time
```
❌ WRONG: Plan everything, build everything, hope it works
✅ RIGHT: Build feature 1 completely → learn → build feature 2 → learn → ...
```

### Lesson 2: Each Feature Gets Its Own /sp Cycle
```
For EACH feature:
1. /sp.specify        → Define feature requirements
2. /sp.clarify        → Answer discovery questions
3. /sp.plan           → Technical implementation plan
4. /sp.analyze        → Check for contradictions
5. /sp.tasks          → Generate task list
6. /sp.checklist      → Quality validation
7. /sp.implement      → Build the feature
8. /sp.learn          → Record what was learned
9. /sp.glossary       → Review all terms
10. /sp.phr           → Create prompt history
```

### Lesson 3: Update Master Spec After Each Feature
```
After each feature is complete:
- Update SPEC.md with what was built
- Update PLAN.md if architecture changed
- Keep constitution.md stable
```

### Lesson 4: Learning Compounds
```
Feature 1 Learning: JWT, bcrypt, Prisma
Feature 2 Learning: Next.js, S3, CDN
Feature 3 Learning: State management, localStorage

By Feature 10: You know the full stack!
```

### Lesson 5: Each Feature Is Independent
```
Feature 1: Auth works ✓
Feature 2: Products work ✓
Feature 3: Cart works ✓

If Feature 3 has bugs → Fix Feature 3 only
Don't rewrite Feature 1 or 2!
```

---

## /sp Commands Used in Ecommerce Project

| Command | Purpose |
|---------|---------|
| `/sp.constitution` | Set ecommerce principles (once at start) |
| `/sp.specify` | Define each feature requirements |
| `/sp.clarify` | Answer questions for each feature |
| `/sp.plan` | Technical plan for each feature |
| `/sp.analyze` | Check consistency |
| `/sp.tasks` | Generate tasks for each feature |
| `/sp.checklist` | Quality checklist for each feature |
| `/sp.implement` | Build each feature |
| `/sp.learn` | Record learning after each feature |
| `/sp.glossary` | Review all terms (run anytime) |
| `/sp.phr` | Prompt history for each feature |
| `/sp.adr` | Architecture decisions (when significant) |

---

## Summary: How to Build Big Projects

```
┌─────────────────────────────────────────────────────────────────┐
│                    BIG PROJECT WORKFLOW                          │
├─────────────────────────────────────────────────────────────────┤
│                                                                  │
│  1. CONSTITUTION (once)                                          │
│     /sp.constitution → Set principles for entire project         │
│                                                                  │
│  2. MASTER SPEC (once)                                          │
│     /sp.specify → Define ALL features                            │
│     /sp.clarify → Answer questions about full scope             │
│                                                                  │
│  3. BUILD FEATURES (one at a time)                              │
│     ┌──────────────────────────────────────────┐                │
│     │  Feature #N:                              │                │
│     │  /sp.specify                             │                │
│     │  /sp.clarify                              │                │
│     │  /sp.plan                                 │                │
│     │  /sp.analyze                              │                │
│     │  /sp.tasks                                │                │
│     │  /sp.checklist                            │                │
│     │  /sp.implement                            │                │
│     │  /sp.learn                                │                │
│     │  ✅ Feature #N COMPLETE                   │                │
│     │  ↓                                        │                │
│     │  Move to Feature #N+1                      │                │
│     └──────────────────────────────────────────┘                │
│                                                                  │
│  4. AFTER ALL FEATURES                                          │
│     Run /sp.glossary to see everything learned                  │
│                                                                  │
└─────────────────────────────────────────────────────────────────┘
```

---

## Next Steps for Users

Now you understand how to build big projects:

1. **Plan big** - Know all features upfront
2. **Build small** - One feature at a time
3. **Learn always** - Record what each feature teaches
4. **Don't rush** - Each feature builds on previous learning
5. **Review often** - Use /sp.glossary to reinforce knowledge
