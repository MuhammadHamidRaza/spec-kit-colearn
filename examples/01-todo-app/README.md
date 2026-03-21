# Todo App - Full AI Co-Partner Conversation

## Installation

```bash
pip install spec-kit-colearn
npm install -g @muhammad-hamid-raza/spec-kit-colearn
```

---

## USER SAYS TO AI:
```
I want to build a todo app.
```

---

## AI RESPONDS AS CO-PARTNER:

### AI SAYS:
```
🤖 **SENIOR ARCHITECT MODE ACTIVATED**

Before I create any spec, I need to understand your vision. Let me ask some questions as your co-partner...

---

**Question 1: WHO will use this todo app?**

- A: Solo user (just me)
- B: Small team (2-10 people)
- C: Large team (10+ people)
- D: Enterprise (many teams)

Which best describes your users?

---

**Question 2: WHAT kind of tasks will they manage?**

- A: Personal tasks only
- B: Work/project tasks
- C: Both personal and work
- D: Client/customer tasks

What type of tasks?

---

**Question 3: WHAT features are must-haves?**

- A: Basic (add, complete, delete tasks)
- B: Plus (due dates, categories, priorities)
- C: Plus (collaboration, comments, assignments)
- D: Full (all of above + integrations)

What level of features?

---

**Question 4: WHAT platform?**

- A: Web only
- B: Mobile only
- C: Desktop only
- D: All platforms (web + mobile + desktop)

Where should it work?

---

**Question 5: SHOULD tasks sync across devices?**

- A: Yes, real-time sync (cloud)
- B: Local only, no sync
- C: Sync on demand, manual

How about data sync?

---

**Question 6: WHAT about collaboration?**

- A: No collaboration (solo)
- B: Share lists with others
- C: Full team collaboration
- D: Guest access

Do you need sharing?

---

Please answer: A, B, C, or D for each question. Don't worry if you're unsure - I'll guide you!
```

---

## USER RESPONDS:
```
A
B
B
D
A
A
```

---

## AI CONTINUES:

### AI SAYS:
```
Perfect! Based on your answers, here's what I understand:

**Who:** Solo user
**What:** Work/project tasks with due dates, categories, priorities
**Features:** Medium complexity (not too simple, not over-engineered)
**Platform:** All platforms (web + mobile + desktop)
**Sync:** Real-time cloud sync
**Collaboration:** No (solo user)

---

Now let me present 3 implementation options:

## Option A: Simple Todo (MY RECOMMENDATION)
**What:** Clean, minimal todo app with all must-have features
**Pros:**
- Fast to build and launch
- Easy to use
- Works everywhere
- Real-time sync via Firebase
**Cons:**
- Limited customization
- No advanced features
**Best for:** Solo users who want simplicity

---

## Option B: Project-Focused Todo
**What:** Todo app organized by projects with tags and priorities
**Pros:**
- Better organization
- More flexible
- Filter and search powerful
**Cons:**
- Takes longer to build
- More complex UI
**Best for:** Users managing multiple projects

---

## Option C: Full-Featured Todo
**What:** Todo app with all features + calendar view + recurring tasks
**Pros:**
- Maximum features
- Most powerful
- Professional look
**Cons:**
- Most complex to build
- Steeper learning curve
**Best for:** Power users who want everything

---

**Which option feels right for you? (A, B, or C)**
```

---

## USER SAYS:
```
B
```

---

## AI SAYS:
```
Excellent choice! **Option B: Project-Focused Todo**

Now let me dig deeper to understand exactly what you need...

---

## DISCOVERY DEEP DIVE

**Question 7: How do you organize projects?**

- A: By area (Work, Personal, Health)
- B: By client (Client A, Client B)
- C: By goal (Launch Website, Learn React)
- D: Mix of all

How do you think about projects?

---

**Question 8: What priority levels?**

- A: 2 levels (Important, Not Important)
- B: 3 levels (High, Medium, Low)
- C: 5 levels (Urgent + 4 others)
- D: No priorities, just due dates

What makes sense for your workflow?

---

**Question 9: Should tasks repeat?**

- A: Yes (daily, weekly, monthly)
- B: No, one-time tasks only
- C: Maybe later

Do you need recurring tasks?

---

**Question 10: Any integrations?**

- A: No integrations
- B: Calendar sync (Google Calendar)
- C: Email/reminders
- D: All integrations

What integrations matter?

---

**Question 11: What's your deadline style?**

- A: Due dates required
- B: Due dates optional
- C: No due dates, just "today/tomorrow/this week"

How strict about dates?

---

Please answer: A, B, C, or D for each!
```

---

## USER RESPONDS:
```
A
B
A
A
B
```

---

## AI SAYS:
```
Perfect! Now I have a complete picture:

### Your Todo App: Project Tasks Pro

**Core Features:**
- Projects organized by area (Work, Personal, Health)
- Tasks within projects
- 3 priority levels (High, Medium, Low)
- Due dates (optional, not required)
- Recurring tasks (daily, weekly, monthly)
- No integrations in v1 (keep it simple!)

---

Let me now create the specification. Say **"spec approved"** to proceed, or ask me to modify anything.

# SPEC.md - Project Tasks Pro

## 1. Overview
A project-based todo app for solo users to organize work and personal tasks.

## 2. Users
Solo users managing tasks across different areas of life.

## 3. Core Features

### Projects
- Create/edit/delete projects
- Project has: name, color, icon
- Default projects: Work, Personal, Health
- Project view shows all tasks

### Tasks
- Create/edit/delete tasks
- Task has: title, description, due date, priority, project
- Mark task as complete
- Move tasks between projects
- Priority levels: High (red), Medium (yellow), Low (green)
- Due dates: Optional field

### Recurring Tasks
- Daily recurring
- Weekly recurring (select days)
- Monthly recurring (select date)
- Auto-create next occurrence when completed

### Task Views
- Today view (tasks due today + overdue)
- This Week view (next 7 days)
- All Tasks view
- Project view

### Data Sync
- Real-time sync across devices
- Offline support with sync on reconnect
- Data stored in cloud (Firebase)

## 4. User Flows

### Adding a Task
1. User taps "+" button
2. Enters task title
3. Optionally: select project, due date, priority
4. Taps "Save"
5. Task appears in appropriate view

### Completing a Task
1. User swipes right on task
2. Task moves to "Completed" section
3. If recurring, next occurrence created
4. Task can be uncompleted

### Organizing Projects
1. User goes to Projects tab
2. Can create/edit/delete projects
3. Assign color and icon to each
4. Drag to reorder

## 5. Technical

### Stack
- Frontend: React (web), React Native (mobile)
- Backend: Firebase (Auth + Firestore)
- Sync: Real-time via Firestore listeners

### Data Model
```
Project: { id, name, color, icon, order, createdAt }
Task: { id, title, description, dueDate, priority, projectId, isCompleted, isRecurring, recurrenceRule, completedAt, createdAt }
```

## 6. Success Criteria
- [ ] User can create projects
- [ ] User can create tasks with all fields
- [ ] Tasks sync across devices in real-time
- [ ] Recurring tasks work correctly
- [ ] App loads in under 2 seconds
- [ ] Works on web, iOS, Android

---

**Say "spec approved" to proceed to planning, or tell me what to change.**
```

---

## USER SAYS:
```
spec approved
```

---

## AI SAYS:
```
Creating implementation plan...

# PLAN.md - Project Tasks Pro

## Phase 1: Project Setup
**Duration:** 1-2 days

Tasks:
- [ ] Initialize React web app with Vite
- [ ] Initialize React Native mobile app (Expo)
- [ ] Set up Firebase project
- [ ] Configure Firebase Auth
- [ ] Configure Firestore database
- [ ] Set up project structure (components, screens, services)
- [ ] Install dependencies

## Phase 2: Project Management
**Duration:** 2-3 days

Tasks:
- [ ] Create Project model
- [ ] Create Project list screen
- [ ] Create Project form (add/edit)
- [ ] Project color picker
- [ ] Project icon picker
- [ ] Delete project with confirmation
- [ ] Default projects on first launch

## Phase 3: Task Management
**Duration:** 3-4 days

Tasks:
- [ ] Create Task model
- [ ] Create Task list item component
- [ ] Create Task form (add/edit)
- [ ] Priority selector (High/Medium/Low)
- [ ] Due date picker
- [ ] Project selector
- [ ] Mark task complete/incomplete
- [ ] Swipe to complete
- [ ] Delete task

## Phase 4: Views & Filtering
**Duration:** 2 days

Tasks:
- [ ] Today view
- [ ] This Week view
- [ ] All Tasks view
- [ ] Project view
- [ ] Filter by priority
- [ ] Sort by date/priority
- [ ] Empty states

## Phase 5: Recurring Tasks
**Duration:** 2 days

Tasks:
- [ ] Recurring toggle
- [ ] Recurrence rule selector (daily/weekly/monthly)
- [ ] Weekly day picker
- [ ] Monthly date picker
- [ ] Auto-create next occurrence on complete
- [ ] Stop recurring option

## Phase 6: Data Sync
**Duration:** 3-4 days

Tasks:
- [ ] Firebase authentication
- [ ] Sign up/Sign in screens
- [ ] Firestore sync for projects
- [ ] Firestore sync for tasks
- [ ] Real-time listeners
- [ ] Offline support
- [ ] Sync status indicator

## Phase 7: Polish
**Duration:** 2 days

Tasks:
- [ ] Loading states
- [ ] Error handling
- [ ] Pull to refresh
- [ ] Empty states
- [ ] Onboarding for first launch
- [ ] App icon and splash screen

## Phase 8: Testing
**Duration:** 2 days

Tasks:
- [ ] Test on web browser
- [ ] Test on iOS simulator
- [ ] Test on Android emulator
- [ ] Test sync between devices
- [ ] Test recurring task logic

**Total Estimated Time:** 17-21 days

---

**Say "plan approved" to generate detailed tasks, or ask me to adjust anything.**
```

---

## USER SAYS:
```
plan approved
```

---

## AI SAYS:
```
Generating detailed tasks...

# TASKS.md - Project Tasks Pro

## Task 1.1: Initialize React Web App
```
- [ ] Run: npm create vite@latest todo-web -- --template react
- [ ] Install: npm install
- [ ] Install: npm install firebase react-router-dom
- [ ] Install: npm install @chakra-ui/react @emotion/react @emotion/styled framer-motion
- [ ] Create folder structure: src/{components,screens,services,hooks,context}
- [ ] Create App.jsx with React Router
- [ ] Create index.css with global styles
```

## Task 1.2: Initialize React Native App
```
- [ ] Run: npx create-expo-app todo-mobile
- [ ] Install: npx expo install firebase @react-navigation/native @react-navigation/bottom-tabs
- [ ] Install: npx expo install react-native-paper date-fns
- [ ] Create folder structure
- [ ] Create App.js
```

## Task 1.3: Set Up Firebase
```
- [ ] Create Firebase project at console.firebase.google.com
- [ ] Enable Authentication (Email/Password)
- [ ] Enable Firestore Database
- [ ] Get Firebase config keys
- [ ] Create src/services/firebase.js
- [ ] Export auth and db instances
```

## Task 2.1: Create Project Model
```javascript
// src/models/Project.js
- [ ] Create Project class/object structure
- [ ] Fields: id, name, color, icon, order, createdAt
- [ ] Create default projects array
```

## Task 2.2: Project List Screen
```jsx
// src/screens/ProjectListScreen.jsx
- [ ] Fetch projects from Firestore
- [ ] Display as grid of project cards
- [ ] Each card shows: name, color, task count
- [ ] Tap card to view project tasks
- [ ] FAB to add new project
```

## Task 2.3: Project Form
```jsx
// src/components/ProjectForm.jsx
- [ ] Input for project name
- [ ] Color picker (12 preset colors)
- [ ] Icon picker (20 preset icons)
- [ ] Save and Cancel buttons
- [ ] Validation (name required)
```

## Task 3.1: Task List Item
```jsx
// src/components/TaskItem.jsx
- [ ] Checkbox for completion
- [ ] Task title
- [ ] Priority indicator (colored dot)
- [ ] Due date badge
- [ ] Recurring icon if applicable
- [ ] Swipe actions (complete, delete)
- [ ] Tap to edit
```

## Task 3.2: Task Form
```jsx
// src/components/TaskForm.jsx
- [ ] Input for title (required)
- [ ] Textarea for description (optional)
- [ ] Project selector dropdown
- [ ] Priority radio buttons (High/Medium/Low)
- [ ] Due date picker
- [ ] Recurring toggle + options
- [ ] Save and Cancel buttons
```

## Task 3.3: Mark Complete Logic
```javascript
// src/services/taskService.js
- [ ] Function: completeTask(taskId)
- [ ] Update isCompleted: true
- [ ] Set completedAt: now
- [ ] If recurring, create next occurrence
- [ ] Function: uncompleteTask(taskId)
```

## Task 4.1: Today View
```jsx
// src/screens/TodayScreen.jsx
- [ ] Fetch tasks where dueDate = today OR dueDate < today AND !isCompleted
- [ ] Group: Overdue (top), Today (bottom)
- [ ] Show date headers
- [ ] Empty state if no tasks
```

## Task 4.2: This Week View
```jsx
// src/screens/WeekScreen.jsx
- [ ] Fetch tasks where dueDate within next 7 days
- [ ] Group by day
- [ ] Show day headers
- [ ] Empty state if no tasks
```

## Task 5.1: Recurrence Logic
```javascript
// src/utils/recurrence.js
- [ ] Function: calculateNextOccurrence(task, completedDate)
- [ ] Handle daily recurrence
- [ ] Handle weekly recurrence (specific days)
- [ ] Handle monthly recurrence (specific date)
- [ ] Return next due date
```

## Task 6.1: Firebase Auth
```javascript
// src/services/authService.js
- [ ] Function: signUp(email, password)
- [ ] Function: signIn(email, password)
- [ ] Function: signOut()
- [ ] Function: getCurrentUser()
- [ ] Create AuthContext for app-wide access
```

## Task 6.2: Real-time Sync
```javascript
// src/hooks/useProjects.js
- [ ] useEffect to subscribe to projects collection
- [ ] Real-time updates via onSnapshot
- [ ] Optimistic UI updates
- [ ] Handle offline gracefully
```

## Task 7.1: Loading & Error States
```jsx
// src/components/LoadingSpinner.jsx
- [ ] Show spinner during data fetch
- [ ] Show error message if fetch fails
- [ ] Retry button

// src/components/ErrorBoundary.jsx
- [ ] Catch JavaScript errors
- [ ] Show friendly error message
- [ ] Log errors
```

---

**Say "tasks approved" to enter MODE 2 and start building!**
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

I will now build your todo app systematically. Starting with Phase 1...

---

## Building Phase 1: Project Setup

### Task 1.1: Initialize React Web App

Creating project structure...

```bash
npm create vite@latest todo-web -- --template react
cd todo-web
npm install
npm install firebase react-router-dom
npm install @chakra-ui/react @emotion/react @emotion/styled framer-motion
```

✅ **Phase 1.1 Complete!**

---

### Task 1.2: Set Up Firebase

Creating Firebase configuration...

```javascript
// src/services/firebase.js
import { initializeApp } from 'firebase/app';
import { getAuth } from 'firebase/auth';
import { getFirestore } from 'firebase/firestore';

const firebaseConfig = {
  apiKey: "YOUR_API_KEY",
  authDomain: "YOUR_PROJECT.firebaseapp.com",
  projectId: "YOUR_PROJECT_ID",
  // ... other config
};

const app = initializeApp(firebaseConfig);
export const auth = getAuth(app);
export const db = getFirestore(app);
```

✅ **Phase 1.2 Complete!**

---

[AI continues building all tasks systematically...]

---

## After ALL Tasks Complete

AI runs `/sp.learn` automatically:

---

## LEARNING LOG - Project Tasks Pro

### Technical Terms Learned:

**React Context** - A way to share state across components without prop drilling. Like a global variable for your app.

**Firebase Firestore** - A NoSQL cloud database. Data stored as collections and documents. Real-time sync built-in.

**Recurring Task Logic** - Algorithm to calculate next due date based on recurrence rule and completion date.

**Optimistic UI Updates** - Update the UI immediately, then sync with server in background. Makes app feel faster.

**React Native Expo** - Framework to build React Native apps. Easier setup, runs on iOS/Android/Web.

---

### Decisions Made:

- Chose Chakra UI for consistent design system
- Used Firestore for real-time sync
- Implemented offline support with local cache
- Kept v1 simple: no integrations

---

### Concepts to Explore Later:

- Push notifications
- Calendar integrations
- Widget support
- Team collaboration

---

**Run `/sp.glossary` anytime to review all learned terms across projects!**
```

---

## /sp Commands Summary

| Command | When |
|---------|------|
| `/sp.constitution` | First, set principles |
| `/sp.discover` | User says what they want, AI asks questions |
| `/sp.specify` | AI creates spec based on answers |
| `/sp.plan` | AI creates implementation plan |
| `/sp.tasks` | AI creates detailed tasks |
| `/sp.implement` | AI builds the feature (Mode 2) |
| `/sp.learn` | AI records what was learned |
| `/sp.glossary` | Anytime, review all terms |
