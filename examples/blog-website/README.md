# Example Project 2: Blog Website

## Overview
This example shows how to build a full blog website with posts, comments, and categories.

---

## Project Setup

```bash
spec-kit-colearn init my-blog
cd my-blog
```

---

## AI Conversation Flow

### User → AI
```
I want to build a blog website where users can:
- Read blog posts
- Create and edit their own posts
- Add comments to posts
- Categorize posts by topic
```

---

### AI → User (Discovery Questions)

```
🤖 **DISCOVERY MODE - 4 Questions**

---

### Question 1: WHO are your users?

- A: Solo blogger (write posts myself)
- B: Multiple authors (team blog)
- C: Anyone can post (community blog)
- D: Content creators with followers

*Your choice?*

---

### Question 2: WHAT features?

- A: Basic (Posts + Comments) ← Recommended
- B: Medium (+ Categories + Tags + Search)
- C: Full ( + User profiles + Likes + Social sharing)

*Your choice?*

---

### Question 3: STACK?

- A: MERN (MongoDB, Express, React, Node)
- B: Next.js + PostgreSQL
- C: Python + Flask + SQLite
- D: (Your preference)

*Your choice?*

---

### Question 4: DEPLOYMENT?

- A: Static export (Vercel/Netlify free hosting)
- B: Full server (Render/Railway)
- C: Docker container

*Your choice?*

---

**Waiting for your answers...**
```

---

### User → AI
```
Solo blogger (A)
Medium features (B)
MERN stack (A)
Static export (A)
```

---

### AI → User (Options)

```
## 3 Implementation Options

### Option A: Next.js Static Blog (MY RECOMMENDATION)
**What:** Next.js 14 with App Router, MDX for posts, Tailwind CSS
**Pros:**
- Free hosting on Vercel
- Blazing fast with static generation
- Great SEO out of box
- MDX lets you write posts with React components
**Cons:**
- Needs rebuild for new posts (can use ISR for dynamic)
- Requires Vercel for best experience
**Best for:** Personal blogs, documentation sites

---

### Option B: Traditional React SPA
**What:** React + Vite, API routes, MongoDB Atlas
**Pros:**
- Faster development iteration
- Client-side navigation feels smooth
- Easy to add dynamic features
**Cons:**
- SEO challenges (need SSR or pre-rendering)
- Requires MongoDB Atlas free tier setup
**Best for:** Apps with user accounts and dynamic content

---

### Option C: Full CMS Integration
**What:** Next.js with Sanity.io or Contentful CMS
**Pros:**
- Beautiful admin dashboard
- Real-time preview
- Image optimization built-in
**Cons:**
- External service dependency
- Learning curve for CMS
**Best for:** Professional blogs with editorial workflow

---

**Which option? (A, B, or C)**
```

---

### User → AI
```
A
```

---

### AI → User (Spec Preview)

```
✅ **Option A: Next.js Static Blog**

---

# SPEC.md - Personal Blog

## 1. Overview
Next.js 14 static blog with MDX support for rich content.

## 2. Users
Solo blogger who writes posts using MDX files.

## 3. Features
### Posts
- MDX-based posts in `/posts` folder
- Frontmatter: title, date, excerpt, category, tags
- Reading time estimate
- Syntax highlighting for code blocks

### Categories & Tags
- Categories: Development, Design, Life
- Tags: flexible per-post labels
- Category and tag pages

### Comments
- Giscus (GitHub Discussions) for comments
- No database needed

### SEO
- Static generation for all pages
- Sitemap.xml auto-generated
- RSS feed

## 4. Design
- Minimal, clean typography-focused design
- Dark/Light mode toggle
- Responsive for mobile

## 5. Success Criteria
- [ ] All pages load in < 1 second
- [ ] Lighthouse score > 90
- [ ] SEO score 100

---

**Say "spec approved" to continue.**
```

---

### User → AI
```
spec approved
```

---

### AI → User (Plan)

```
---

# PLAN.md - Personal Blog

## Phase 1: Project Setup
- [ ] Initialize Next.js 14 project
- [ ] Install MDX, Tailwind, syntax highlighter
- [ ] Configure Next.js for static export

## Phase 2: Core Components
- [ ] Layout component (header, footer)
- [ ] Post card component
- [ ] Navigation
- [ ] Theme toggle

## Phase 3: Post System
- [ ] MDX configuration
- [ ] Frontmatter parsing
- [ ] Post listing page (/)
- [ ] Individual post page (/posts/[slug])

## Phase 4: Categories & Tags
- [ ] Category pages (/category/[name])
- [ ] Tag pages (/tag/[name])
- [ ] Category/Tag listing

## Phase 5: Comments
- [ ] Giscus integration
- [ ] Comment component

## Phase 6: SEO
- [ ] sitemap.xml
- [ ] robots.txt
- [ ] RSS feed

**Say "plan approved" to generate tasks.**
```

---

### User → AI
```
plan approved
```

---

### AI → User (Tasks)

```
---

# TASKS.md - Personal Blog

## Task 1.1: Initialize Next.js
```
- [ ] npx create-next-app@latest . --typescript --tailwind --app
- [ ] npm install @next/mdx @mdx-js/loader gray-matter reading-time
- [ ] npm install -D rehype-highlight @tailwindcss/typography
```

## Task 2.1: Create Layout
```tsx
// src/components/Layout.tsx
- [ ] Header with logo and nav links
- [ ] Footer with copyright
- [ ] ThemeProvider wrapper
```

## Task 3.1: MDX Configuration
```js
// next.config.mjs
- [ ] Add @next/mdx configuration
- [ ] Configure MDX options
- [ ] Add rehype plugins
```

## Task 4.1: Post Listing Page
```tsx
// src/app/page.tsx
- [ ] Fetch all posts from /posts
- [ ] Sort by date
- [ ] Display as post cards
- [ ] Add pagination (10 per page)
```

[... more tasks ...]

**Say "tasks approved" to start building.**
```

---

### User → AI
```
tasks approved
```

---

### AI → User (Implementation)

```
🔨 **MODE 2: CODING WORKER**

Implementing Task 1.1...

✅ Task 1.1: Next.js initialized

✅ Task 1.2: Dependencies installed

✅ Task 1.3: Folder structure created

[... implements all tasks ...]

---

Running build test...
```bash
npm run build
```
✅ Build successful!

---

## Blog Complete!

Creating first sample post...

---

📚 **LEARNING LOG - Blog Website**

### Technical Terms Learned:
- **MDX**: Markdown + JSX - write Markdown with React components embedded
- **Static Site Generation (SSG)**: Pre-building all pages at build time for speed
- **ISR (Incremental Static Regeneration)**: Update static pages without full rebuild
- **Frontmatter**: YAML metadata at the top of Markdown files
- **Syntax Highlighting**: Colorize code blocks for readability
- **Sitemap.xml**: File that helps search engines discover your pages

### Decisions Made:
- Chose MDX for flexibility in content creation
- Used static export for free Vercel hosting
- Implemented dark mode with CSS variables

---

Run `/sp.glossary` anytime to review all learned terms.
```

---

## Blog Project Structure

```
my-blog/
├── SPEC.md
├── PLAN.md
├── TASKS.md
├── posts/
│   ├── my-first-post.mdx
│   └── learning-nextjs.mdx
├── src/
│   ├── app/
│   │   ├── page.tsx
│   │   ├── posts/[slug]/page.tsx
│   │   └── category/[name]/page.tsx
│   └── components/
│       ├── Layout.tsx
│       ├── PostCard.tsx
│       └── ThemeToggle.tsx
├── public/
└── history/
    └── prompts/
        └── blog/
            └── learning-log.md
```
