# E-commerce Platform - Full AI Co-Partner Conversation

## Installation

```bash
pip install spec-kit-colearn
npm install -g @muhammad-hamid-raza/spec-kit-colearn
```

---

## USER SAYS TO AI:
```
I want to build an ecommerce website like Amazon or Shopify.
```

---

## AI RESPONDS AS CO-PARTNER:

### AI SAYS:
```
🤖 **SENIOR ARCHITECT MODE ACTIVATED**

I love this vision! Building an ecommerce platform is exciting. But before I create any spec, let me understand your goals better.

---

**Question 1: What TYPE of ecommerce?**

- A: General marketplace (sell anything, like Amazon)
- B: Single brand store (your own products only, like Shopify)
- C: Multi-vendor marketplace (multiple sellers, like Etsy)
- D: Subscription box (recurring products, like Dollar Shave Club)

What type of ecommerce?

---

**Question 2: What PRODUCTS will you sell?**

- A: Physical products (clothing, electronics, etc.)
- B: Digital products (courses, ebooks, software)
- C: Services (consulting, coaching)
- D: Mix of above

What do you plan to sell?

---

**Question 3: What's your BUDGET for building?**

- A: Minimum viable (MVP, launch fast, $500-2000)
- B: Professional (solid features, $2000-10000)
- C: Enterprise (full-featured, $10000+)
- D: Open-ended (build it right, no budget limit)

What investment level?

---

**Question 4: What's your TIMELINE?**

- A: ASAP (launch in 2-4 weeks)
- B: 1-2 months
- C: 3-6 months
- D: No rush, build it perfect

When do you want to launch?

---

**Question 5: Do you HAVE products to sell?**

- A: Yes, I have products ready
- B: No, need to source/find products
- C: Planning to dropship
- D: I'm building for someone else

What's your situation?

---

**Question 6: What PAYMENT methods?**

- A: Stripe only (cards, Apple Pay, Google Pay)
- B: Stripe + PayPal
- C: Multiple gateways
- D: Not decided yet

Which payment providers?

---

Please answer: A, B, C, or D for each question.
```

---

## USER RESPONDS:
```
B
A
B
C
A
A
```

---

## AI CONTINUES:

### AI SAYS:
```
Excellent! Here's what I understand:

**Type:** Single brand store (your own products)
**Products:** Physical goods
**Budget:** Professional ($2000-10000)
**Timeline:** 3-6 months
**Products:** Have products ready to sell
**Payment:** Stripe only

---

Now let me understand your FULL vision...

---

**Question 7: What CATEGORIES of products?**

- A: One category (niche store, e.g., only sneakers)
- B: 2-5 categories
- C: 5-10 categories
- D: Many categories (like Amazon)

How many product types?

---

**Question 8: What ADMIN features?**

- A: Basic (add products, see orders)
- B: Medium (inventory, reports, coupons)
- C: Full (analytics, integrations, automation)

How much admin control?

---

**Question 9: What CUSTOMER features?**

- A: Basic (browse, cart, checkout)
- B: Medium (wishlist, reviews, accounts)
- C: Full (advanced search, compare, recommendations)

What customer experience?

---

**Question 10: Do you need SHIPPING integration?**

- A: Flat rate shipping only
- B: Real-time carrier rates (UPS, FedEx, USPS)
- C: Free shipping with minimum order
- D: Local pickup only

Shipping approach?

---

**Question 11: Should there be SUBSCRIPTIONS?**

- A: No subscription products
- B: Subscription box products
- C: Membership/subscription pricing

Any subscription model?

---

**Question 12: What about RETURNS?**

- A: No returns policy
- B: Basic return requests (email)
- C: Full return portal (self-service)

How handle returns?

---

Please answer: A, B, C, or D for each!
```

---

## USER RESPONDS:
```
B
B
B
B
A
B
```

---

## AI SAYS:
```
Perfect! Now I have your complete vision:

### Your Ecommerce Platform: ShopPro

**Core Setup:**
- Single brand store
- Physical products
- 2-5 product categories
- Professional features

**Customer Experience:**
- Browse and search products
- Shopping cart with persistence
- Wishlist
- Product reviews
- User accounts with order history
- Advanced search with filters

**Admin Features:**
- Product management
- Inventory tracking
- Order management
- Coupon/discount codes
- Basic reports
- Return request portal

**Payments & Shipping:**
- Stripe payments (cards, Apple Pay, Google Pay)
- Real-time shipping rates (UPS, FedEx, USPS)
- Free shipping option

---

Let me present implementation options:

## Option A: Custom Build (MY RECOMMENDATION)
**What:** Build with Next.js + Stripe + PostgreSQL
**Timeline:** 3-4 months
**Pros:**
- Full control and customization
- Better long-term maintenance
- No platform lock-in
- Scale to millions of products
**Cons:**
- Longer to build
- Need to handle hosting yourself
**Best for:** Serious businesses with budget for development

---

## Option B: Headless Commerce
**What:** Medusa.js or Saleor (open-source) + custom frontend
**Timeline:** 2-3 months
**Pros:**
- Pre-built backend handles complex ecommerce logic
- Custom frontend for unique design
- Open-source, no lock-in
**Cons:**
- Still need customization
- Learning curve
**Best for:** Teams with some technical experience

---

## Option C: Shopify Plus
**What:** Use Shopify platform with customizations
**Timeline:** 1-2 months
**Pros:**
- Fastest to launch
- Built-in hosting, security, payments
- Easy for non-technical owners
**Cons:**
- Monthly fees ($2000+/month)
- Platform lock-in
- Customization limited
**Best for:** Quick launch, less technical team

---

**Which approach feels right for you? (A, B, or C)**

Also tell me:
- Do you have a developer, or do you need everything built for you?
- Do you have hosting/domain already?
```

---

## USER SAYS:
```
A
I have a developer (me) and I want to learn how to build it.
I have hosting already.
```

---

## AI SAYS:
```
Perfect! **Option A: Custom Build with Next.js**

This is a great choice! You'll learn:
- Modern frontend with Next.js 14
- Backend with Node.js + PostgreSQL
- Payment integration with Stripe
- Ecommerce best practices

Let me now create your comprehensive specification...

# SPEC.md - ShopPro Ecommerce Platform

## 1. Overview

A production-ready single-brand ecommerce platform for selling physical products online with a premium customer experience.

## 2. Tech Stack

- **Frontend:** Next.js 14 (App Router)
- **Backend:** Node.js + Express
- **Database:** PostgreSQL + Prisma
- **Payments:** Stripe
- **Images:** AWS S3 + CloudFront
- **Hosting:** Vercel (frontend) + Railway (backend)

## 3. Features

### Customer Features

#### 3.1 Product Catalog
- Home page with featured products
- Category pages (2 levels: parent + child)
- Product listing with pagination (20 per page)
- Product detail page with:
  - Image gallery (up to 8 images)
  - Product info (name, price, description)
  - Variant selection (size, color)
  - Stock status indicator
  - Add to cart button
  - Add to wishlist
  - Related products
- Advanced search with filters:
  - Category filter
  - Price range slider
  - Rating filter
  - Sort by (price, newest, popularity)

#### 3.2 Shopping Cart
- Persistent cart (stored in database)
- Add/remove/update quantities
- Cart summary (subtotal, shipping estimate)
- Save for later
- Move to wishlist
- Coupon code application
- Guest cart (email to merge later)

#### 3.3 User Accounts
- Registration with email verification
- Login with email/password
- Password reset via email
- Profile management:
  - Personal info
  - Addresses (up to 5)
  - Set default address
- Order history
- Wishlist
- Email preferences

#### 3.4 Checkout
- Multi-step checkout:
  1. Cart review
  2. Shipping address
  3. Shipping method
  4. Payment
  5. Confirmation
- Address book integration
- Real-time shipping rates
- Stripe Payment Elements
- Order confirmation email

#### 3.5 Order Management
- View all orders
- Order details page
- Order status tracking
- Shipping tracking with carrier links
- Invoice download
- Cancel order (before shipping)
- Return request

#### 3.6 Wishlist
- Add/remove products
- Move to cart
- Share wishlist (optional)
- Price drop notifications

#### 3.7 Reviews
- Submit review (1-5 stars + text)
- One review per product per user
- Edit review within 30 days
- Photo uploads (up to 3)
- Admin approval for reviews
- Helpful/unhelpful votes
- Average rating on products

### Admin Features

#### 3.8 Admin Dashboard
- Overview stats (sales, orders, visitors)
- Recent orders list
- Low stock alerts
- Quick actions

#### 3.9 Product Management
- Create/edit/delete products
- Product variants (size, color)
- Inventory tracking
- Bulk upload (CSV)
- Image management
- SEO fields

#### 3.10 Order Management
- View all orders
- Update order status
- Process refunds
- Print packing slips
- Export orders (CSV)

#### 3.11 Coupon Management
- Create coupons:
  - Percentage discount
  - Fixed amount
  - Free shipping
- Usage limits (per user, total)
- Expiry dates
- Minimum order amount

#### 3.12 Inventory Management
- Stock levels per variant
- Low stock threshold
- Automatic stock deduction
- Inventory history log

## 4. Database Schema

```
Users: id, email, password_hash, name, phone, email_verified, created_at
Addresses: id, user_id, name, street, city, state, zip, country, is_default
Products: id, name, slug, description, price, compare_price, images, category_id, status, created_at
Categories: id, name, slug, parent_id, description
Variants: id, product_id, size, color, sku, price_modifier, stock, low_stock_threshold
Orders: id, user_id, status, subtotal, shipping, tax, total, shipping_address, stripe_payment_id, created_at
OrderItems: id, order_id, variant_id, quantity, price
CartItems: id, user_id, guest_id, variant_id, quantity, saved_for_later
Reviews: id, user_id, product_id, rating, text, photos, approved, created_at
Coupons: id, code, type, value, min_order, usage_limit, usage_count, expires_at
```

## 5. API Endpoints

### Products
- GET /api/products (list with filters)
- GET /api/products/[slug]
- GET /api/products/[id]/related
- GET /api/categories
- GET /api/categories/[slug]

### Cart
- GET /api/cart
- POST /api/cart/items
- PUT /api/cart/items/[id]
- DELETE /api/cart/items/[id]
- POST /api/cart/coupon

### Auth
- POST /api/auth/register
- POST /api/auth/login
- POST /api/auth/logout
- POST /api/auth/forgot-password
- POST /api/auth/reset-password

### Checkout
- POST /api/checkout/create-payment-intent
- POST /api/checkout/confirm
- GET /api/orders
- GET /api/orders/[id]

### Admin
- CRUD /api/admin/products
- CRUD /api/admin/orders
- CRUD /api/admin/coupons
- GET /api/admin/dashboard

## 6. Success Criteria

- [ ] Home page loads in < 2 seconds
- [ ] Checkout completes in < 5 steps
- [ ] Mobile responsive (all pages)
- [ ] SEO optimized (meta tags, sitemap)
- [ ] Stripe payments work end-to-end
- [ ] Inventory syncs on every order
- [ ] Email notifications sent
- [ ] Admin can manage all products/orders

---

**Say "spec approved" to proceed to planning!**
```

---

## USER SAYS:
```
spec approved
```

---

## AI SAYS:
```
Creating comprehensive implementation plan...

# PLAN.md - ShopPro Ecommerce Platform

## Phase 1: Project Foundation (2 weeks)

### 1.1 Infrastructure Setup
- [ ] Set up GitHub repository
- [ ] Initialize Next.js 14 project
- [ ] Initialize Node.js + Express backend
- [ ] Set up PostgreSQL database
- [ ] Configure Prisma ORM
- [ ] Set up AWS S3 bucket for images
- [ ] Configure CloudFront CDN
- [ ] Set up Vercel (frontend) and Railway (backend)

### 1.2 Database Schema
- [ ] Design Prisma schema
- [ ] Run migrations
- [ ] Create seed data for testing
- [ ] Set up database backups

### 1.3 Authentication
- [ ] User registration with email
- [ ] Email verification flow
- [ ] Login with JWT
- [ ] Password reset via email
- [ ] Session management
- [ ] Protected routes middleware

---

## Phase 2: Product Catalog (3 weeks)

### 2.1 Home Page
- [ ] Hero banner section
- [ ] Featured products grid
- [ ] Category showcase
- [ ] Newsletter signup
- [ ] Footer with links

### 2.2 Category Pages
- [ ] Category listing page
- [ ] Subcategory listing
- [ ] Breadcrumb navigation
- [ ] Category sidebar filters
- [ ] Product grid with pagination

### 2.3 Product Detail Page
- [ ] Image gallery with zoom
- [ ] Product info section
- [ ] Variant selector
- [ ] Stock status
- [ ] Add to cart
- [ ] Add to wishlist
- [ ] Related products
- [ ] Reviews section

### 2.4 Search & Filters
- [ ] Search bar with autocomplete
- [ ] Filter sidebar
- [ ] Price range slider
- [ ] Rating filter
- [ ] Sort options
- [ ] URL state management

---

## Phase 3: Shopping Cart (2 weeks)

### 3.1 Cart Functionality
- [ ] Cart context/state
- [ ] Add to cart
- [ ] Update quantities
- [ ] Remove items
- [ ] Save for later
- [ ] Move to wishlist
- [ ] Cart summary
- [ ] Coupon code input

### 3.2 Persistence
- [ ] Guest cart (cookie-based)
- [ ] User cart (database)
- [ ] Cart merge on login
- [ ] Cart expiration for guests

---

## Phase 4: User Accounts (2 weeks)

### 4.1 Profile Management
- [ ] Profile page
- [ ] Edit personal info
- [ ] Change password
- [ ] Profile picture upload

### 4.2 Address Management
- [ ] Address list
- [ ] Add new address
- [ ] Edit address
- [ ] Delete address
- [ ] Set default address
- [ ] Address validation

### 4.3 Order History
- [ ] Orders list page
- [ ] Order details page
- [ ] Reorder functionality
- [ ] Track shipment
- [ ] Download invoice
- [ ] Cancel order
- [ ] Request return

---

## Phase 5: Checkout (3 weeks)

### 5.1 Checkout Flow
- [ ] Cart review step
- [ ] Address selection/entry
- [ ] Shipping method selection
- [ ] Real-time rate calculation
- [ ] Stripe Payment Elements
- [ ] Order confirmation

### 5.2 Shipping Integration
- [ ] EasyPost API integration
- [ ] Rate shopping (show all carriers)
- [ ] Address validation
- [ ] Delivery estimates

### 5.3 Payment Processing
- [ ] Stripe Payment Intents
- [ ] Handle failed payments
- [ ] Webhook handling
- [ ] Idempotency keys
- [ ] Receipt generation

---

## Phase 6: Admin Dashboard (3 weeks)

### 6.1 Dashboard Overview
- [ ] Sales stats cards
- [ ] Orders chart
- [ ] Recent orders table
- [ ] Low stock alerts
- [ ] Quick actions

### 6.2 Product Management
- [ ] Product list with search
- [ ] Product form (create/edit)
- [ ] Image upload to S3
- [ ] Variant management
- [ ] Inventory editor
- [ ] Bulk CSV upload

### 6.3 Order Management
- [ ] Orders list with filters
- [ ] Order details view
- [ ] Update status
- [ ] Process refund
- [ ] Print packing slip
- [ ] Export to CSV

### 6.4 Coupon Management
- [ ] Coupon list
- [ ] Create coupon form
- [ ] Usage tracking
- [ ] Auto-expiry

---

## Phase 7: Reviews & Wishlist (1 week)

### 7.1 Reviews
- [ ] Submit review form
- [ ] Review display
- [ ] Photo upload
- [ ] Admin approval queue
- [ ] Helpful votes
- [ ] Average rating calculation

### 7.2 Wishlist
- [ ] Add/remove from wishlist
- [ ] Wishlist page
- [ ] Move to cart
- [ ] Share wishlist

---

## Phase 8: Polish & Launch (2 weeks)

### 8.1 Testing
- [ ] End-to-end checkout test
- [ ] Mobile testing
- [ ] Performance optimization
- [ ] Security audit

### 8.2 SEO
- [ ] Meta tags for all pages
- [ ] Sitemap.xml
- [ ] Robots.txt
- [ ] Structured data
- [ ] Open Graph images

### 8.3 Email
- [ ] Order confirmation email
- [ ] Shipping notification
- [ ] Delivery notification
- [ ] Password reset email
- [ ] Review request email

### 8.4 Launch
- [ ] DNS configuration
- [ ] SSL certificates
- [ ] Production environment variables
- [ ] Monitoring setup
- [ ] Backup verification

---

## Estimated Timeline: 18-20 weeks

**Total Features: 40+**
**Each feature will be built using /sp.specify → /sp.plan → /sp.tasks → /sp.implement → /sp.learn cycle**

---

**Say "plan approved" to generate detailed tasks for Phase 1!**
```

---

## USER SAYS:
```
plan approved
```

---

## AI SAYS:
```
Generating detailed tasks for Phase 1...

# TASKS.md - Phase 1: Project Foundation

## Task 1.1.1: GitHub Repository Setup
```
- [ ] Create GitHub repo: shoppro-ecommerce
- [ ] Initialize with README
- [ ] Add .gitignore for Node.js
- [ ] Create develop and main branches
- [ ] Add LICENSE (MIT)
- [ ] Set up branch protection rules
```

## Task 1.1.2: Initialize Next.js 14
```bash
# Create Next.js app
npx create-next-app@14 frontend --typescript --tailwind --app
cd frontend
npm install

# Install dependencies
npm install @prisma/client @stripe/stripe-js @stripe/react-stripe-js axios date-fns
npm install -D prisma
```

## Task 1.1.3: Initialize Express Backend
```bash
# Create backend folder
mkdir backend && cd backend
npm init -y
npm install express cors helmet dotenv pg
npm install -D typescript @types/express @types/node ts-node nodemon

# Create tsconfig.json
# Create src/index.ts
# Create src/routes
# Create src/controllers
# Create src/services
```

## Task 1.1.4: Set Up PostgreSQL
```
- [ ] Create Railway database
- [ ] Get connection string
- [ ] Add to .env
- [ ] Test connection
- [ ] Note connection limits
```

## Task 1.1.5: Configure Prisma
```bash
# Initialize Prisma
npx prisma init

# Create schema (see schema below)
# Run prisma generate
# Run prisma migrate dev
# Create prisma seed script
```

### Prisma Schema
```prisma
model User {
  id            String    @id @default(cuid())
  email         String    @unique
  passwordHash  String
  name          String?
  phone         String?
  emailVerified Boolean   @default(false)
  createdAt     DateTime  @default(now())
  updatedAt     DateTime  @updatedAt
  addresses     Address[]
  orders        Order[]
  cartItems     CartItem[]
  reviews       Review[]
  wishlistItems WishlistItem[]
}

model Address {
  id        String   @id @default(cuid())
  userId    String
  user      User     @relation(fields: [userId], references: [id])
  name      String
  street    String
  city      String
  state     String
  zip       String
  country   String   @default("US")
  isDefault Boolean  @default(false)
  createdAt DateTime @default(now())
}

model Product {
  id           String    @id @default(cuid())
  name         String
  slug         String    @unique
  description  String
  price        Decimal
  comparePrice Decimal?
  categoryId   String
  category     Category  @relation(fields: [categoryId], references: [id])
  images       String[]  // Array of S3 URLs
  status       String    @default("active") // active, draft, archived
  variants     Variant[]
  reviews      Review[]
  createdAt    DateTime  @default(now())
  updatedAt    DateTime  @updatedAt
}

model Category {
  id          String     @id @default(cuid())
  name        String
  slug        String     @unique
  description String?
  parentId    String?
  parent      Category?  @relation("CategoryHierarchy", fields: [parentId], references: [id])
  children    Category[] @relation("CategoryHierarchy")
  products    Product[]
}

model Variant {
  id                   String   @id @default(cuid())
  productId            String
  product              Product  @relation(fields: [productId], references: [id])
  size                 String?
  color                String?
  sku                  String   @unique
  priceModifier        Decimal  @default(0)
  stock                Int      @default(0)
  lowStockThreshold    Int      @default(5)
  orderItems           OrderItem[]
  cartItems            CartItem[]
  wishlistItems        WishlistItem[]
}

model Order {
  id                String      @id @default(cuid())
  userId            String?
  user              User?       @relation(fields: [userId], references: [id])
  email             String
  status            String      @default("pending")
  subtotal          Decimal
  shipping          Decimal     @default(0)
  tax               Decimal     @default(0)
  total             Decimal
  shippingAddress    Json
  stripePaymentId    String?
  stripeSessionId    String?
  items             OrderItem[]
  createdAt         DateTime    @default(now())
  updatedAt         DateTime    @updatedAt
}

model OrderItem {
  id        String  @id @default(cuid())
  orderId   String
  order     Order   @relation(fields: [orderId], references: [id])
  variantId String
  variant   Variant @relation(fields: [variantId], references: [id])
  quantity  Int
  price     Decimal
}

model CartItem {
  id           String   @id @default(cuid())
  userId      String?
  user         User?    @relation(fields: [userId], references: [id])
  sessionId   String?   // For guest carts
  variantId   String
  variant     Variant  @relation(fields: [variantId], references: [id])
  quantity    Int
  savedForLater Boolean @default(false)
  createdAt   DateTime @default(now())
}

model Review {
  id        String   @id @default(cuid())
  userId    String
  user      User     @relation(fields: [userId], references: [id])
  productId String
  product   Product  @relation(fields: [productId], references: [id])
  rating    Int      // 1-5
  text      String
  photos    String[] // S3 URLs
  approved  Boolean  @default(false)
  helpful   Int      @default(0)
  createdAt DateTime @default(now())
}

model Coupon {
  id          String   @id @default(cuid())
  code        String   @unique
  type        String   // percentage, fixed, freeShipping
  value       Decimal
  minOrder    Decimal?
  usageLimit  Int?
  usageCount  Int      @default(0)
  expiresAt   DateTime?
  active      Boolean  @default(true)
  createdAt   DateTime @default(now())
}

model WishlistItem {
  id        String   @id @default(cuid())
  userId    String
  user      User     @relation(fields: [userId], references: [id])
  variantId String
  variant   Variant  @relation(fields: [variantId], references: [id])
  createdAt DateTime @default(now())
}
```

## Task 1.1.6: AWS S3 Setup
```
- [ ] Create AWS account
- [ ] Create S3 bucket: shoppro-images
- [ ] Configure CORS
- [ ] Create IAM user for uploads
- [ ] Store credentials in .env
- [ ] Test image upload
```

## Task 1.2.1: User Registration
```typescript
// POST /api/auth/register
- [ ] Validate email format
- [ ] Check email not already registered
- [ ] Hash password with bcrypt (12 rounds)
- [ ] Create user in database
- [ ] Generate email verification token
- [ ] Send verification email via SendGrid
- [ ] Return success response
```

## Task 1.2.2: Email Verification
```typescript
// GET /api/auth/verify/:token
- [ ] Validate token
- [ ] Find user by token
- [ ] Mark email as verified
- [ ] Invalidate token
- [ ] Return success
```

## Task 1.2.3: Login
```typescript
// POST /api/auth/login
- [ ] Find user by email
- [ ] Compare password
- [ ] Generate JWT access token (15 min)
- [ ] Generate refresh token (7 days)
- [ ] Store refresh token in database
- [ ] Return tokens
```

---

**Say "tasks approved" to enter MODE 2 and start building Phase 1!**
```

---

## USER SAYS:
```
tasks approved
```

---

## AI SAYS:
```
🔨 **MODE 2: CODING WORKER ACTIVATED**

Starting Phase 1: Project Foundation...

---

## Task 1.1.1: GitHub Repository Setup

Creating repository...

```bash
# Create repo on GitHub
gh repo create shoppro-ecommerce --public --gitignore=Node

# Clone locally
git clone https://github.com/yourusername/shoppro-ecommerce.git
cd shoppro-ecommerce

# Create folder structure
mkdir frontend backend
touch README.md LICENSE

# Initial commit
git add .
git commit -m "Initial commit"
git push -u origin main
git checkout -b develop
```

✅ **Task 1.1.1 Complete!**

---

## Task 1.1.2: Initialize Next.js 14

```bash
cd frontend
npx create-next-app@14 . --typescript --tailwind --app --eslint --src-dir --import-alias "@/*"

# Install core dependencies
npm install @prisma/client @stripe/stripe-js @stripe/react-stripe-js axios date-fns zustand

# Install dev dependencies
npm install -D prisma @types/node
```

✅ **Task 1.1.2 Complete!**

---

[AI continues building all tasks...]

---

## Phase 1 Complete!

✅ All Phase 1 tasks finished

**Now ready for Phase 2: Product Catalog**

Should I continue with Phase 2 (Product Catalog)? Each phase will use the same workflow:
1. AI explains Phase goals
2. Creates detailed tasks
3. Builds everything in Mode 2
4. Records learning

**Say "continue" to proceed to Phase 2, or "stop" if you need a break!**
```

---

## USER SAYS:
```
continue
```

---

## AI SAYS:
```
## Phase 2: Product Catalog

### Phase 2 Discovery

Before I create tasks for product catalog, let me confirm our approach...

**Question: Product Images Strategy**

- A: Manual upload (admin uploads to S3)
- B: Image URL from manufacturer/distributor
- C: Both options

How should product images be managed?

---

**Question: How many sample products for testing?**

- A: 5 products (quick demo)
- B: 20 products (realistic testing)
- C: 50 products (stress test search/pagination)

How many test products?

---

Please answer: A, B, or C for each!
```

---

## USER RESPONDS:
```
A
B
```

---

## AI SAYS:
```
Got it!
- Admin uploads images to S3
- 20 test products for realistic testing

Let me create Phase 2 tasks...

# TASKS.md - Phase 2: Product Catalog

## Task 2.1.1: Home Page - Hero Banner
```jsx
// src/app/page.tsx
- [ ] Hero section with background image
- [ ] Headline: "Welcome to ShopPro"
- [ ] Subheadline: "Quality products, fast delivery"
- [ ] CTA button: "Shop Now" → /products
- [ ] Responsive design (mobile-friendly)
```

## Task 2.1.2: Featured Products Section
```tsx
// src/components/FeaturedProducts.tsx
- [ ] Fetch featured products from API
- [ ] Display as 4-column grid
- [ ] Product card: image, name, price, quick-add button
- [ ] "View All" link to /products
- [ ] Responsive: 4 → 2 → 1 columns
```

## Task 2.1.3: Product Card Component
```tsx
// src/components/ProductCard.tsx
- [ ] Product image with hover zoom effect
- [ ] Product name (truncate if long)
- [ ] Price display (sale price in red if discounted)
- [ ] Rating stars (if reviews exist)
- [ ] Add to cart button
- [ ] Add to wishlist heart icon
- [ ] Loading skeleton state
```

## Task 2.2.1: Category Listing Page
```tsx
// src/app/categories/page.tsx
- [ ] Page title: "Shop by Category"
- [ ] Grid of category cards
- [ ] Each card: image, name, product count
- [ ] Click → category page
```

## Task 2.2.2: Category Page
```tsx
// src/app/category/[slug]/page.tsx
- [ ] Fetch category and subcategories
- [ ] Breadcrumb: Home → Parent → Child
- [ ] Category banner/description
- [ ] Subcategory pills (clickable)
- [ ] Active filters display
- [ ] Product grid with pagination
```

## Task 2.3.1: Product Detail Page Layout
```tsx
// src/app/product/[slug]/page.tsx
- [ ] Two-column layout: images | info
- [ ] Loading state with skeleton
- [ ] Error state if product not found
- [ ] 404 page if slug invalid
```

## Task 2.3.2: Image Gallery
```tsx
// src/components/ImageGallery.tsx
- [ ] Main image display (large)
- [ ] Thumbnail strip below
- [ ] Click thumbnail → update main
- [ ] Click main image → open lightbox
- [ ] Lightbox: full-screen, arrows to navigate
- [ ] Touch swipe on mobile
```

## Task 2.3.3: Product Info Section
```tsx
// src/components/ProductInfo.tsx
- [ ] Product name (h1)
- [ ] Price: current price, crossed-out original if sale
- [ ] Rating display (stars + review count)
- [ ] Short description
- [ ] Stock status: "In Stock" / "Low Stock" / "Out of Stock"
```

## Task 2.3.4: Variant Selector
```tsx
// src/components/VariantSelector.tsx
- [ ] Size selector (if variants have sizes)
- [ ] Color selector (visual swatches)
- [ ] Dynamic price update
- [ ] Stock check for selected variant
- [ ] "Out of Stock" disable for unavailable variants
```

## Task 2.3.5: Add to Cart
```tsx
// src/components/AddToCartButton.tsx
- [ ] Quantity selector (1-10)
- [ ] "Add to Cart" button
- [ ] Success: show cart drawer
- [ ] Out of stock: disabled button
- [ ] Loading state during API call
```

## Task 2.4.1: Search Component
```tsx
// src/components/SearchBar.tsx
- [ ] Search input with icon
- [ ] Debounced API call (300ms)
- [ ] Show autocomplete dropdown
- [ ] Show top 5 matching products
- [ ] "View all results" link
- [ ] Recent searches (localStorage)
```

## Task 2.4.2: Filter Sidebar
```tsx
// src/components/FilterSidebar.tsx
- [ ] Category filter (checkboxes)
- [ ] Price range slider (min/max)
- [ ] Rating filter (star buttons)
- [ ] Clear all filters button
- [ ] Mobile: slide-out drawer
```

## Task 2.4.3: Product Grid
```tsx
// src/components/ProductGrid.tsx
- [ ] Grid layout: 3 columns → 2 → 1
- [ ] Sort dropdown: Relevance, Price Low-High, Price High-Low, Newest
- [ ] Pagination or infinite scroll
- [ ] "Showing X of Y products"
- [ ] Empty state if no results
```

---

**Say "tasks approved" to start building Phase 2!**
```

---

## USER SAYS:
```
tasks approved
```

---

## AI SAYS:
```
🔨 **MODE 2: CODING WORKER ACTIVATED**

Building Phase 2: Product Catalog...

## Task 2.1.1: Home Page - Hero Banner

Creating hero section...

```tsx
// src/app/page.tsx
export default function HomePage() {
  return (
    <div className="min-h-screen">
      {/* Hero Section */}
      <section className="relative bg-gray-900 text-white">
        <div className="absolute inset-0 bg-gradient-to-r from-black/70 to-black/40" />
        <div className="relative max-w-7xl mx-auto px-4 py-24 sm:py-32">
          <h1 className="text-4xl sm:text-6xl font-bold mb-4">
            Welcome to ShopPro
          </h1>
          <p className="text-xl sm:text-2xl text-gray-200 mb-8">
            Quality products, fast delivery, excellent service
          </p>
          <Link
            href="/products"
            className="inline-block bg-white text-gray-900 px-8 py-3 rounded-lg font-semibold hover:bg-gray-100 transition"
          >
            Shop Now →
          </Link>
        </div>
      </section>
      
      {/* Featured Products Section */}
      <FeaturedProducts />
    </div>
  );
}
```

✅ **Task 2.1.1 Complete!**

---

## Task 2.3.4: Variant Selector

Creating variant selection logic...

```tsx
// src/components/VariantSelector.tsx
import { useState } from 'react';

interface Variant {
  id: string;
  size?: string;
  color?: string;
  stock: number;
  priceModifier: number;
}

interface Props {
  variants: Variant[];
  basePrice: number;
  onSelect: (variant: Variant) => void;
}

export function VariantSelector({ variants, basePrice, onSelect }: Props) {
  const [selectedSize, setSelectedSize] = useState<string>('');
  const [selectedColor, setSelectedColor] = useState<string>('');
  
  const sizes = [...new Set(variants.map(v => v.size).filter(Boolean))];
  const colors = [...new Set(variants.map(v => v.color).filter(Boolean))];
  
  const selectedVariant = variants.find(
    v => v.size === selectedSize && v.color === selectedColor
  );
  
  const getPrice = () => {
    if (selectedVariant) {
      return basePrice + Number(selectedVariant.priceModifier);
    }
    return basePrice;
  };
  
  return (
    <div className="space-y-4">
      {sizes.length > 0 && (
        <div>
          <label className="block font-medium mb-2">Size</label>
          <div className="flex gap-2">
            {sizes.map(size => {
              const hasStock = variants.some(v => v.size === size && v.stock > 0);
              return (
                <button
                  key={size}
                  onClick={() => setSelectedSize(size)}
                  disabled={!hasStock}
                  className={`px-4 py-2 border rounded ${
                    selectedSize === size
                      ? 'border-black bg-black text-white'
                      : hasStock
                      ? 'border-gray-300 hover:border-black'
                      : 'border-gray-200 text-gray-300 cursor-not-allowed'
                  }`}
                >
                  {size}
                </button>
              );
            })}
          </div>
        </div>
      )}
      
      {selectedVariant && (
        <p className="text-lg font-semibold">
          Price: ${getPrice().toFixed(2)}
        </p>
      )}
    </div>
  );
}
```

✅ **Task 2.3.4 Complete!**

---

[AI continues building remaining tasks...]

---

## After All Phases Complete

AI runs `/sp.learn`...

---

## LEARNING LOG - ShopPro Ecommerce

### Technical Terms Learned:

**Prisma ORM** - Type-safe database queries with auto-completion. Instead of writing raw SQL, you write JavaScript that Prisma converts to efficient queries.

**Stripe Payment Intents** - A payment flow where you create an "intent" to charge, confirm it on the frontend, and finalize on the backend. Safer than direct charges.

**Variant Products** - Same product with different options (size S/M/L, color red/blue). Each combination is a separate database record with its own SKU and stock.

**Headless Commerce** - Separating the frontend (head) from the backend (body). You control the shopping experience while using ready-made commerce infrastructure.

**Real-time Shipping Rates** - Fetching live rates from carriers (UPS, FedEx) based on package weight and destination. API calls to EasyPost or Shippo.

**Favicon** - The small icon in browser tabs. Must be 32x32px PNG or ICO file.

---

### Decisions Made:

- Used Next.js 14 App Router for modern React patterns
- Prisma for type-safe database operations
- Stripe Elements for PCI-compliant payment forms
- Zustand for simple cart state management
- CloudFront CDN for fast image delivery

---

### Concepts to Explore Later:

- GraphQL API for more flexible queries
- Elasticsearch for advanced search
- Recommendation engine for "customers also bought"
- Subscription/recurring billing with Stripe
- Multi-currency support

---

**Run `/sp.glossary` anytime to review all learned terms!**

---

## /sp Command Flow Summary

```
FOR EACH FEATURE/PHASE:
1. /sp.discover     → AI asks questions
2. /sp.specify     → AI creates spec
3. /sp.plan        → AI creates plan
4. /sp.tasks       → AI creates tasks
5. /sp.implement   → AI builds (Mode 2)
6. /sp.learn       → AI records learning
7. /sp.glossary    → Review all terms
```

## Project Complete Structure

```
shoppro/
├── frontend/          (Next.js 14)
│   ├── src/
│   │   ├── app/        (App Router pages)
│   │   ├── components/ (Reusable components)
│   │   ├── lib/        (Utilities, API clients)
│   │   └── styles/     (Global styles)
│   └── public/
├── backend/           (Express + Node)
│   ├── src/
│   │   ├── routes/    (API routes)
│   │   ├── controllers/
│   │   ├── services/
│   │   └── middleware/
│   └── prisma/
│       └── schema.prisma
├── .specify/
│   ├── memory/constitution.md
│   └── specs/         (One folder per phase)
└── history/           (Learning logs, PHRs)
```
