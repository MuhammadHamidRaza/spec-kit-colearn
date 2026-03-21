# Social Network Platform - Full AI Co-Partner Conversation

## Installation

```bash
pip install spec-kit-colearn
npm install -g @muhammad-hamid-raza/spec-kit-colearn
```

---

## USER SAYS TO AI:
```
I want to build a social network like Twitter or Instagram.
```

---

## AI RESPONDS AS CO-PARTNER:

### AI SAYS:
```
🤖 **SENIOR ARCHITECT MODE ACTIVATED**

A social network is an exciting project! Let me understand your vision before we start.

---

**Question 1: What TYPE of social network?**

- A: Microblogging (short posts, like Twitter/X)
- B: Photo sharing (visual-first, like Instagram)
- C: Video sharing (TikTok-style)
- D: Professional network (LinkedIn-style)
- E: Community/focused (Reddit-style)

What type?

---

**Question 2: Who is your AUDIENCE?**

- A: General public (all ages)
- B: Young adults (18-35)
- C: Professionals (25-50)
- D: Niche community (specific interest)
- E: Enterprise/business

Who will use it?

---

**Question 3: What CONTENT will users share?**

- A: Text posts only
- B: Text + Images
- C: Text + Images + Videos
- D: Text + Images + Videos + Links
- E: All content types

What types of content?

---

**Question 4: What SOCIAL features?**

- A: Follow only (one-way)
- B: Follow + Friends (mutual follows)
- C: Followers + Following + Groups
- D: Full social graph (friends, groups, pages, events)

What social connections?

---

**Question 5: Should there be MESSAGING?**

- A: No direct messaging
- B: Basic DMs (one-on-one)
- C: DMs + Group chats
- D: DMs + Group chats + Voice/video calls

What messaging features?

---

**Question 6: What about MONETIZATION?**

- A: No monetization (free platform)
- B: Premium subscriptions
- C: Creator tipping/donations
- D: Ads platform
- E: All of the above

How to make money?

---

Please answer: A, B, C, D, or E for each question.
```

---

## USER RESPONDS:
```
A
B
B
C
C
A
```

---

## AI CONTINUES:

### AI SAYS:
```
Great choices! Here's what I understand:

**Type:** Microblogging (text + images)
**Audience:** Young adults (18-35)
**Content:** Text + Images
**Social:** Followers + Following + Groups
**Messaging:** DMs + Group chats
**Monetization:** Free (focus on growth first)

---

Now let me understand your scope better...

---

**Question 7: What should the FEED show?**

- A: Chronological (newest first)
- B: Algorithmic (based on engagement)
- C: Hybrid (algorithmic with chronological option)

How should content be ordered?

---

**Question 8: Should there be VERIFICATION?**

- A: No verification (keep it simple)
- B: Blue checkmark for notable accounts
- C: Multiple verification levels

Account verification?

---

**Question 9: How should NOTIFICATIONS work?**

- A: In-app only
- B: In-app + Email digest
- C: In-app + Email + Push

What notification channels?

---

**Question 10: What about PRIVACY?**

- A: Public posts only
- B: Public + Private posts
- C: Public + Private + Close Friends

Privacy options?

---

**Question 11: Any DISCOVERY features?**

- A: Search only
- B: Search + Trending topics
- C: Search + Trending + Explore page
- D: All + Recommended users

How do users discover content?

---

**Question 12: How should BLOCKING work?**

- A: Simple block (can't see each other)
- B: Block + Mute
- C: Block + Mute + Restrict

Moderation tools?

---

Please answer: A, B, C, or D for each!
```

---

## USER RESPONDS:
```
C
B
B
B
C
C
```

---

## AI SAYS:
```
Perfect! Now I have your complete vision:

### Your Social Network: ConnectHub

**Core:**
- Microblogging platform
- Target: Young adults
- Text + image posts
- Followers/following + groups

**Feed:**
- Hybrid: Algorithmic main feed + chronological option
- Trending topics
- Explore page

**Social:**
- Follow users
- Join groups
- Private posts option

**Messaging:**
- Direct messages (one-on-one)
- Group chats

**Privacy:**
- Public posts
- Private posts
- Block + mute + restrict

**Notifications:**
- In-app
- Email digest

**Verification:**
- Blue checkmark for notable accounts

---

Let me present your implementation options:

## Option A: Full Custom Build (MY RECOMMENDATION)
**What:** Build from scratch with React Native + Node.js
**Timeline:** 6-9 months
**Pros:**
- Full control
- Learn everything
- Scale unlimited
- No dependencies
**Cons:**
- Longest to build
- High complexity
- Maintain everything yourself
**Best for:** Serious entrepreneurs who want complete control

---

## Option B: Existing Platform Customization
**What:** Customize open-source (Mastodon, Diaspora)
**Timeline:** 2-3 months
**Pros:**
- Faster to launch
- Built-in features
- Active community
**Cons:**
- Limited customization
- Dependent on platform updates
**Best for:** Quick launch, community support

---

## Option C: Hybrid Approach
**What:** Open-source backend + custom frontend
**Timeline:** 4-5 months
**Pros:**
- Faster than full custom
- Unique UX
- Own data
**Cons:**
- Still complex
- Some dependencies
**Best for:** Balance of control and speed

---

**Which approach feels right? (A, B, or C)**

Also tell me:
- Is this for learning, a startup, or existing business?
- Do you have a team or solo developer?
```

---

## USER SAYS:
```
A
This is for a startup I'm building. I'm the solo developer but plan to hire later.
```

---

## AI SAYS:
```
Excellent! **Option A: Full Custom Build**

This is the right choice for a startup. You'll own everything, can scale infinitely, and will learn the architecture that powers social networks.

Let me create your comprehensive specification...

# SPEC.md - ConnectHub Social Network

## 1. Overview

A modern microblogging social network for young adults (18-35) featuring text and image posts, follower/following relationships, groups, direct messaging, and a hybrid algorithmic/chronological feed.

## 2. Tech Stack

- **Mobile:** React Native (iOS + Android)
- **Web:** React (Next.js for landing page)
- **Backend:** Node.js + Express
- **Database:** PostgreSQL + Redis
- **Storage:** AWS S3 for images
- **Real-time:** Socket.io
- **Search:** Elasticsearch
- **Hosting:** AWS (EC2, RDS, ElastiCache, S3)

## 3. Core Features

### 3.1 Authentication & Users

#### Registration & Login
- Email + password registration
- Social login (Google, Apple)
- Email verification required
- Password reset via email

#### User Profiles
- Display name (@handle)
- Bio (500 characters max)
- Profile picture
- Cover image
- Location (optional)
- Website link
- Birthday (optional)
- Join date
- Stats: Posts, Followers, Following

#### Profile Settings
- Edit profile information
- Change profile picture
- Change cover image
- Privacy settings
- Notification preferences
- Account security (change password)
- Deactivate account

#### Verification
- Blue checkmark for notable accounts
- Admin-initiated verification
- Verification badge display

---

### 3.2 Posts & Content

#### Creating Posts
- Text posts (280 characters - Twitter style)
- Image posts (up to 4 images)
- Image captions
- Hashtag extraction and linking
- @mention users (autocomplete)
- Location tag (optional)

#### Post Display
- Author info (avatar, name, handle, time)
- Post content
- Media display (images in grid)
- Engagement actions
- Share/retweet option

#### Post Engagement
- Like (heart icon)
- Comment (count displayed)
- Share/Retweet
- Bookmark
- Copy link
- Report post

---

### 3.3 Feed System

#### Main Feed (Algorithmic)
- Algorithm considers:
  - Engagement (likes, comments, shares)
  - Recency
  - Relationship (close friends weighted higher)
  - User interests
- "Show more" / "Show less" controls
- Chronological toggle option

#### Following Feed (Chronological)
- Newest posts from followed users first
- No algorithmic sorting

#### Trending Feed
- Trending hashtags
- Trending posts
- Trending users
- Based on 24-hour activity

#### Explore Page
- Discover new content
- Suggested users to follow
- Trending in categories
- Recent popular posts

---

### 3.4 Social Connections

#### Follow System
- Follow other users
- Unfollow
- Follower/following lists
- Follower/following counts
- Mutual followers highlighted

#### Close Friends
- Create close friends list
- Share close friends posts
- See close friends in separate section

#### Groups
- Create groups (public/private)
- Join public groups
- Request to join private groups
- Group roles (admin, moderator, member)
- Group posts
- Group feed
- Group settings

#### User Discovery
- Suggested users to follow
- "People you may know"
- Search by name/handle
- Filter by category/interests

---

### 3.5 Messaging

#### Direct Messages
- One-on-one conversations
- Message history
- Typing indicators
- Read receipts (optional toggle)
- Online/offline status
- Block users in DMs

#### Group Chats
- Create group conversations
- Add/remove members
- Group name and image
- Admin controls
- Leave group

#### Message Features
- Text messages
- Image sharing
- Message reactions
- Delete message
- Report message

---

### 3.6 Notifications

#### In-App Notifications
- New followers
- Post likes
- Post comments
- Comment replies
- Mentions
- Direct messages
- Group invitations
- System notifications

#### Notification Center
- All notifications list
- Mark as read
- Mark all as read
- Notification settings

#### Email Notifications (Digest)
- Daily digest option
- Weekly digest option
- Instant for important (DMs, mentions)

---

### 3.7 Privacy & Moderation

#### Privacy Settings
- Account privacy (public/private)
- Post visibility (public/followers/close friends)
- Location sharing toggle
- Discoverability settings

#### Blocking & Muting
- Block users
- Mute users (hide without unfollowing)
- Restrict users (limited interactions)
- Blocked users list

#### Content Moderation
- Report posts
- Report reasons:
  - Spam
  - Harassment
  - Misinformation
  - Violence
  - Other
- Admin review queue
- Content removal
- Warning system

---

### 3.8 Search

#### User Search
- Search by name
- Search by @handle
- Filter by:
  - Location
  - Verified accounts
  - Recent join

#### Post Search
- Full-text search
- Search by hashtag
- Search by @mention
- Date range filter

#### Trending
- Trending hashtags
- Trending topics
- Trending posts

---

## 4. Database Schema

```
Users: id, email, password_hash, handle, display_name, bio, avatar_url, cover_url, location, website, birthday, is_verified, is_private, is_active, email_verified, created_at, updated_at

Posts: id, user_id, content, created_at, updated_at, like_count, comment_count, share_count, is_deleted

PostImages: id, post_id, image_url, order, created_at

PostLikes: id, post_id, user_id, created_at

PostShares: id, post_id, user_id, created_at

Comments: id, post_id, user_id, parent_id, content, created_at, updated_at, like_count

Follows: id, follower_id, following_id, created_at

CloseFriends: id, user_id, friend_id, created_at

Groups: id, name, slug, description, image_url, is_private, created_by, created_at

GroupMembers: id, group_id, user_id, role, joined_at

GroupPosts: id, group_id, user_id, post_id, created_at

Messages: id, conversation_id, sender_id, content, image_url, created_at, read_at

Conversations: id, type (direct/group), created_at

ConversationMembers: id, conversation_id, user_id, joined_at, last_read_at

Notifications: id, user_id, type, actor_id, post_id, comment_id, is_read, created_at

Reports: id, reporter_id, reported_user_id, post_id, reason, status, admin_notes, created_at, resolved_at

Hashtags: id, tag, post_count, created_at

PostHashtags: id, post_id, hashtag_id

UserSearchIndex: (Elasticsearch)

PostSearchIndex: (Elasticsearch)
```

## 5. API Endpoints

### Auth
- POST /api/auth/register
- POST /api/auth/login
- POST /api/auth/logout
- POST /api/auth/forgot-password
- POST /api/auth/reset-password
- POST /api/auth/verify-email

### Users
- GET /api/users/:id
- PUT /api/users/:id
- GET /api/users/:id/posts
- GET /api/users/:id/followers
- GET /api/users/:id/following
- POST /api/users/:id/follow
- DELETE /api/users/:id/follow
- POST /api/users/:id/block
- DELETE /api/users/:id/block

### Posts
- GET /api/posts (feed)
- POST /api/posts
- GET /api/posts/:id
- DELETE /api/posts/:id
- POST /api/posts/:id/like
- DELETE /api/posts/:id/like
- POST /api/posts/:id/share
- POST /api/posts/:id/report

### Comments
- GET /api/posts/:id/comments
- POST /api/posts/:id/comments
- PUT /api/comments/:id
- DELETE /api/comments/:id
- POST /api/comments/:id/like

### Messages
- GET /api/conversations
- GET /api/conversations/:id/messages
- POST /api/conversations
- POST /api/conversations/:id/messages
- PUT /api/conversations/:id/leave

### Notifications
- GET /api/notifications
- PUT /api/notifications/:id/read
- PUT /api/notifications/read-all

### Search
- GET /api/search/users
- GET /api/search/posts
- GET /api/search/trending

## 6. Real-time Events (Socket.io)

### Client Events
- join_room (conversation)
- leave_room
- send_message
- typing_start
- typing_stop

### Server Events
- new_message
- message_read
- user_online
- user_offline
- new_notification
- post_liked
- post_commented

## 7. Success Criteria

### Phase 1 MVP
- [ ] User registration and login
- [ ] Create text posts
- [ ] Follow/unfollow users
- [ ] Main feed (algorithmic)
- [ ] User profiles
- [ ] Like posts
- [ ] Comments
- [ ] Basic notifications

### Phase 2
- [ ] Image posts
- [ ] Direct messages
- [ ] Group chats
- [ ] Explore page
- [ ] Trending topics
- [ ] Search

### Phase 3
- [ ] Groups
- [ ] Close friends
- [ ] Advanced privacy
- [ ] Email notifications
- [ ] Verification
- [ ] Blocking/muting

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

# PLAN.md - ConnectHub Social Network

## Phase 1: Foundation & Core (8 weeks)

### 1.1 Project Setup
- [ ] GitHub repository
- [ ] React Native project (Expo)
- [ ] Backend (Node.js + Express)
- [ ] PostgreSQL database
- [ ] Redis cache
- [ ] AWS S3 bucket
- [ ] Project structure

### 1.2 Authentication
- [ ] User registration API
- [ ] Email verification
- [ ] Login with JWT
- [ ] Password reset
- [ ] Secure password hashing (bcrypt)

### 1.3 User Profiles
- [ ] Profile model
- [ ] Profile API endpoints
- [ ] Profile screen (mobile)
- [ ] Edit profile screen
- [ ] Profile picture upload
- [ ] Cover image upload

### 1.4 Posts & Feed
- [ ] Post model
- [ ] Create post API
- [ ] Feed API (chronological first)
- [ ] Home feed screen
- [ ] Create post screen
- [ ] Post detail screen

### 1.5 Social (Follow System)
- [ ] Follow model
- [ ] Follow/unfollow API
- [ ] Follower/following lists
- [ ] User profile connections
- [ ] Suggestion algorithm (basic)

### 1.6 Engagement
- [ ] Like model
- [ ] Like/unlike API
- [ ] Like animation
- [ ] Comment model
- [ ] Comment API
- [ ] Comments thread display

### 1.7 Notifications
- [ ] Notification model
- [ ] Notification API
- [ ] Notification screen
- [ ] Real-time notifications

---

## Phase 2: Media & Messaging (6 weeks)

### 2.1 Image Posts
- [ ] Image upload to S3
- [ ] Image compression
- [ ] Image post creation
- [ ] Image gallery display
- [ ] Multiple images (up to 4)

### 2.2 Direct Messages
- [ ] Conversation model
- [ ] Message model
- [ ] DMs API
- [ ] Messages list screen
- [ ] Chat screen
- [ ] Real-time messaging (Socket.io)
- [ ] Typing indicators
- [ ] Read receipts

### 2.3 Group Chats
- [ ] Group conversation model
- [ ] Group chat API
- [ ] Create group chat
- [ ] Add/remove members
- [ ] Group chat screen

### 2.4 Explore & Discovery
- [ ] Search API
- [ ] User search screen
- [ ] Explore screen
- [ ] Suggested users
- [ ] Trending hashtags

### 2.5 Hashtags
- [ ] Hashtag model
- [ ] Hashtag extraction
- [ ] Hashtag pages
- [ ] Trending hashtags

---

## Phase 3: Groups & Privacy (4 weeks)

### 3.1 Groups
- [ ] Group model
- [ ] Group API
- [ ] Create group screen
- [ ] Group profile
- [ ] Join/leave group
- [ ] Group posts
- [ ] Group feed
- [ ] Group members
- [ ] Admin controls

### 3.2 Privacy
- [ ] Privacy settings
- [ ] Post visibility options
- [ ] Close friends list
- [ ] Close friends posts
- [ ] Account privacy toggle

### 3.3 Blocking & Moderation
- [ ] Block/unblock API
- [ ] Mute API
- [ ] Restrict API
- [ ] Blocked users list
- [ ] Muted users list

---

## Phase 4: Polish & Launch (4 weeks)

### 4.1 Notifications
- [ ] Email digest setup
- [ ] Email templates
- [ ] Push notification setup
- [ ] Notification preferences

### 4.2 Verification
- [ ] Verification model
- [ ] Admin verification UI
- [ ] Verification badge display

### 4.3 Search Enhancement
- [ ] Elasticsearch setup
- [ ] Full-text search
- [ ] Advanced filters

### 4.4 Performance
- [ ] Feed caching (Redis)
- [ ] Image optimization
- [ ] Pagination optimization
- [ ] Load testing

### 4.5 Testing & Launch
- [ ] E2E testing
- [ ] Bug fixes
- [ ] App store submission
- [ ] Launch marketing

---

## Estimated Timeline: 22-24 weeks

**Each phase will be built using /sp commands: discover → specify → plan → tasks → implement → learn**

---

**Say "plan approved" to generate Phase 1 tasks!**
```

---

## USER SAYS:
```
plan approved
```

---

## AI SAYS:
```
Generating Phase 1 detailed tasks...

# TASKS.md - Phase 1: Foundation & Core

## Task 1.1.1: Project Setup
```bash
# Create Expo project
npx create-expo-app@latest ConnectHub --template blank-typescript

# Install dependencies
npx expo install @react-navigation/native @react-navigation/bottom-tabs
npx expo install @react-navigation/stack
npx expo install react-native-screens react-native-safe-area-context
npx expo install @react-native-async-storage/async-storage
npx expo install axios date-fns
npx expo install react-native-vector-icons
npx expo install expo-image-picker expo-image

# Backend setup
mkdir backend && cd backend
npm init -y
npm install express cors helmet dotenv pg bcryptjs jsonwebtoken socket.io
npm install -D typescript @types/node @types/express @types/cors @types/bcryptjs @types/jsonwebtoken ts-node nodemon
```

## Task 1.1.2: Database Setup
```sql
-- PostgreSQL schema
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  email VARCHAR(255) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  handle VARCHAR(50) UNIQUE NOT NULL,
  display_name VARCHAR(100),
  bio TEXT,
  avatar_url VARCHAR(500),
  cover_url VARCHAR(500),
  location VARCHAR(100),
  website VARCHAR(500),
  is_verified BOOLEAN DEFAULT FALSE,
  is_private BOOLEAN DEFAULT FALSE,
  is_active BOOLEAN DEFAULT TRUE,
  email_verified BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE posts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  content TEXT NOT NULL,
  like_count INTEGER DEFAULT 0,
  comment_count INTEGER DEFAULT 0,
  share_count INTEGER DEFAULT 0,
  is_deleted BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE follows (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  follower_id UUID REFERENCES users(id) ON DELETE CASCADE,
  following_id UUID REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMP DEFAULT NOW(),
  UNIQUE(follower_id, following_id)
);

CREATE TABLE post_likes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  post_id UUID REFERENCES posts(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMP DEFAULT NOW(),
  UNIQUE(post_id, user_id)
);

CREATE TABLE comments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  post_id UUID REFERENCES posts(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  parent_id UUID REFERENCES comments(id) ON DELETE CASCADE,
  content TEXT NOT NULL,
  like_count INTEGER DEFAULT 0,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE notifications (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  type VARCHAR(50) NOT NULL,
  actor_id UUID REFERENCES users(id) ON DELETE SET NULL,
  post_id UUID REFERENCES posts(id) ON DELETE CASCADE,
  comment_id UUID REFERENCES comments(id) ON DELETE CASCADE,
  is_read BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Indexes
CREATE INDEX idx_posts_user_id ON posts(user_id);
CREATE INDEX idx_posts_created_at ON posts(created_at DESC);
CREATE INDEX idx_follows_follower ON follows(follower_id);
CREATE INDEX idx_follows_following ON follows(following_id);
CREATE INDEX idx_notifications_user ON notifications(user_id, created_at DESC);
```

## Task 1.2.1: User Registration API
```typescript
// POST /api/auth/register
// src/routes/auth.ts

router.post('/register', async (req, res) => {
  try {
    const { email, password, handle, displayName } = req.body;
    
    // Validate email format
    if (!email || !email.includes('@')) {
      return res.status(400).json({ error: 'Invalid email' });
    }
    
    // Validate password strength
    if (password.length < 8) {
      return res.status(400).json({ error: 'Password must be at least 8 characters' });
    }
    
    // Check email not taken
    const emailExists = await db.query(
      'SELECT id FROM users WHERE email = $1',
      [email]
    );
    if (emailExists.rows.length > 0) {
      return res.status(400).json({ error: 'Email already registered' });
    }
    
    // Check handle not taken
    const handleExists = await db.query(
      'SELECT id FROM users WHERE handle = $1',
      [handle]
    );
    if (handleExists.rows.length > 0) {
      return res.status(400).json({ error: 'Handle already taken' });
    }
    
    // Hash password
    const passwordHash = await bcrypt.hash(password, 12);
    
    // Create user
    const result = await db.query(
      `INSERT INTO users (email, password_hash, handle, display_name)
       VALUES ($1, $2, $3, $4)
       RETURNING id, email, handle, display_name, created_at`,
      [email, passwordHash, handle, displayName || handle]
    );
    
    const user = result.rows[0];
    
    // Generate verification token
    const verificationToken = jwt.sign(
      { userId: user.id, type: 'email_verification' },
      process.env.JWT_SECRET,
      { expiresIn: '24h' }
    );
    
    // Send verification email (mock for now)
    console.log(`Verification link: ${process.env.APP_URL}/verify/${verificationToken}`);
    
    res.status(201).json({
      message: 'User created successfully',
      user: {
        id: user.id,
        email: user.email,
        handle: user.handle,
        displayName: user.displayName
      }
    });
  } catch (error) {
    console.error('Registration error:', error);
    res.status(500).json({ error: 'Registration failed' });
  }
});
```

## Task 1.4.1: Create Post Screen (Mobile)
```tsx
// src/screens/CreatePostScreen.tsx
import { useState } from 'react';
import { View, TextInput, TouchableOpacity, StyleSheet, Alert } from 'react-native';
import { useNavigation } from '@react-navigation/native';

export function CreatePostScreen() {
  const [content, setContent] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const navigation = useNavigation();
  const maxLength = 280;
  
  const handlePost = async () => {
    if (!content.trim()) {
      Alert.alert('Error', 'Post cannot be empty');
      return;
    }
    
    if (content.length > maxLength) {
      Alert.alert('Error', `Post must be under ${maxLength} characters`);
      return;
    }
    
    setIsLoading(true);
    try {
      await api.post('/posts', { content });
      navigation.goBack();
    } catch (error) {
      Alert.alert('Error', 'Failed to create post');
    } finally {
      setIsLoading(false);
    }
  };
  
  return (
    <View style={styles.container}>
      <View style={styles.inputContainer}>
        <TextInput
          style={styles.input}
          placeholder="What's happening?"
          placeholderTextColor="#657786"
          multiline
          maxLength={maxLength}
          value={content}
          onChangeText={setContent}
        />
      </View>
      
      <View style={styles.footer}>
        <Text style={styles.charCount}>
          {content.length}/{maxLength}
        </Text>
        
        <TouchableOpacity
          style={[styles.postButton, !content.trim() && styles.postButtonDisabled]}
          onPress={handlePost}
          disabled={isLoading || !content.trim()}
        >
          <Text style={styles.postButtonText}>
            {isLoading ? 'Posting...' : 'Post'}
          </Text>
        </TouchableOpacity>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#FFFFFF',
    padding: 16
  },
  inputContainer: {
    flex: 1
  },
  input: {
    fontSize: 18,
    color: '#14171A',
    textAlignVertical: 'top',
    minHeight: 100
  },
  footer: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingTop: 12,
    borderTopWidth: 1,
    borderTopColor: '#E1E8ED'
  },
  charCount: {
    fontSize: 14,
    color: '#657786'
  },
  postButton: {
    backgroundColor: '#1DA1F2',
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 20
  },
  postButtonDisabled: {
    backgroundColor: '#AAB8C2'
  },
  postButtonText: {
    color: '#FFFFFF',
    fontWeight: 'bold',
    fontSize: 16
  }
});
```

## Task 1.5.1: Follow System API
```typescript
// POST /api/users/:id/follow
router.post('/:userId/follow', authMiddleware, async (req, res) => {
  try {
    const currentUserId = req.user.id;
    const targetUserId = req.params.userId;
    
    if (currentUserId === targetUserId) {
      return res.status(400).json({ error: 'Cannot follow yourself' });
    }
    
    // Check if target user exists
    const userExists = await db.query(
      'SELECT id, is_private FROM users WHERE id = $1',
      [targetUserId]
    );
    if (userExists.rows.length === 0) {
      return res.status(404).json({ error: 'User not found' });
    }
    
    const isPrivate = userExists.rows[0].is_private;
    
    // Check if already following
    const alreadyFollowing = await db.query(
      'SELECT id FROM follows WHERE follower_id = $1 AND following_id = $2',
      [currentUserId, targetUserId]
    );
    if (alreadyFollowing.rows.length > 0) {
      return res.status(400).json({ error: 'Already following this user' });
    }
    
    // Create follow
    await db.query(
      'INSERT INTO follows (follower_id, following_id) VALUES ($1, $2)',
      [currentUserId, targetUserId]
    );
    
    // Update follower count
    await db.query(
      'UPDATE users SET followers_count = followers_count + 1 WHERE id = $1',
      [targetUserId]
    );
    
    // Create notification
    await db.query(
      `INSERT INTO notifications (user_id, type, actor_id)
       VALUES ($1, 'follow', $2)`,
      [targetUserId, currentUserId]
    );
    
    res.json({ message: 'Followed successfully' });
  } catch (error) {
    console.error('Follow error:', error);
    res.status(500).json({ error: 'Failed to follow user' });
  }
});
```

---

**Say "tasks approved" to start building Phase 1!**
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

Building Phase 1: Foundation & Core...

## Task 1.1.1: Project Setup

Creating Expo project...

```bash
npx create-expo-app@latest ConnectHub --template blank-typescript
cd ConnectHub

# Install all dependencies
npx expo install @react-navigation/native @react-navigation/bottom-tabs
npx expo install @react-navigation/stack
npx expo install react-native-screens react-native-safe-area-context
npx expo install @react-native-async-storage/async-storage
npx expo install axios date-fns
npx expo install expo-image-picker expo-image
npx expo install @react-native-community/netinfo

# Install backend dependencies
mkdir backend && cd backend
npm init -y
npm install express cors helmet dotenv pg bcryptjs jsonwebtoken socket.io uuid
npm install -D typescript @types/node @types/express ts-node nodemon
```

✅ **Task 1.1.1 Complete!**

---

## Task 1.2.1: User Registration

Creating auth routes...

```typescript
// backend/src/routes/auth.ts
import { Router } from 'express';
import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import { db } from '../config/database';

const router = Router();

router.post('/register', async (req, res) => {
  try {
    const { email, password, handle, displayName } = req.body;
    
    // Validation
    if (!email || !email.includes('@')) {
      return res.status(400).json({ error: 'Invalid email' });
    }
    
    if (password.length < 8) {
      return res.status(400).json({ error: 'Password must be at least 8 characters' });
    }
    
    if (!handle || handle.length < 3) {
      return res.status(400).json({ error: 'Handle must be at least 3 characters' });
    }
    
    // Hash password
    const passwordHash = await bcrypt.hash(password, 12);
    
    // Create user
    const result = await db.query(
      `INSERT INTO users (email, password_hash, handle, display_name)
       VALUES ($1, $2, $3, $4)
       RETURNING id, email, handle, display_name, created_at`,
      [email, passwordHash, handle, displayName || handle]
    );
    
    const user = result.rows[0];
    
    res.status(201).json({
      message: 'Welcome to ConnectHub!',
      user: {
        id: user.id,
        email: user.email,
        handle: user.handle,
        displayName: user.displayName
      }
    });
  } catch (error) {
    console.error('Registration error:', error);
    res.status(500).json({ error: 'Registration failed' });
  }
});

export default router;
```

✅ **Task 1.2.1 Complete!**

---

[AI continues building remaining tasks...]

---

## After Phase 1 Complete

AI runs `/sp.learn`...

---

## LEARNING LOG - ConnectHub Social Network

### Technical Terms Learned:

**JWT (JSON Web Tokens)** - A secure way to authenticate users. The server signs a token, and the client sends it with each request. Like a digital ID card that expires.

**Socket.io** - A library for real-time communication. Instead of the client constantly asking "any new messages?", the server pushes updates instantly. Like a walkie-talkie instead of email.

**Bcrypt** - A password hashing algorithm that includes built-in "salt" (random data). Even if two users have the same password, their hashes are different. Makes passwords much harder to crack.

**PostgreSQL** - A powerful relational database. Great for complex queries and relationships. Social networks need it because of all the connections between users.

**Redis** - An in-memory data store. Much faster than disk-based databases for frequently-accessed data. Perfect for caching feeds and session data.

**Chronological vs Algorithmic Feed** - Chronological shows posts in time order. Algorithmic shows posts based on relevance (engagement, your interests, close friends). Hybrid gives you both options.

**Optimistic UI** - Update the interface IMMEDIATELY when user takes action, even before the server confirms. Then sync in background. Makes the app feel instant and responsive.

---

### Decisions Made:

- Used Expo for faster React Native development
- PostgreSQL for relational data (users, follows, posts)
- Redis for caching feeds and session data
- Socket.io for real-time notifications and DMs
- JWT for stateless authentication

---

### Concepts to Explore Later:

- GraphQL for flexible data fetching
- Elasticsearch for powerful search
- AWS S3 + CloudFront for image delivery
- Machine learning for feed algorithm
- Push notifications with Firebase Cloud Messaging
- Video uploads and streaming

---

**Run `/sp.glossary` anytime to review all learned terms!**

---

## /sp Command Flow Summary

```
FOR EACH PHASE/FEATURE:
1. /sp.discover     → AI asks questions, user answers
2. /sp.specify     → AI creates detailed spec
3. /sp.plan        → AI creates implementation plan
4. /sp.tasks       → AI creates detailed tasks
5. /sp.implement   → AI builds in Mode 2
6. /sp.learn       → AI records learning
7. /sp.glossary    → Review all terms anytime
```

## Project Complete Structure

```
ConnectHub/
├── mobile/              (React Native / Expo)
│   ├── src/
│   │   ├── screens/     (App screens)
│   │   ├── components/    (Reusable UI)
│   │   ├── services/     (API calls)
│   │   ├── context/      (State management)
│   │   └── hooks/       (Custom hooks)
│   └── app.json
├── backend/             (Node.js + Express)
│   ├── src/
│   │   ├── routes/      (API endpoints)
│   │   ├── controllers/  (Request handlers)
│   │   ├── services/     (Business logic)
│   │   ├── models/      (Data models)
│   │   ├── middleware/   (Auth, validation)
│   │   └── config/      (DB, Socket.io)
│   └── prisma/
├── .specify/
│   ├── memory/constitution.md
│   └── specs/
│       ├── 01-foundation/
│       ├── 02-media-messaging/
│       ├── 03-groups-privacy/
│       └── 04-polish-launch/
└── history/
    ├── prompts/
    │   ├── 01-foundation/
    │   ├── 02-media-messaging/
    │   └── ...
    └── adr/
```
