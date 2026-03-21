# Example Project 3: AI Customer Support Agent

## Overview
This example shows how to build an AI agent that handles customer support conversations.

---

## Project Setup

```bash
spec-kit-colearn init support-agent
cd support-agent
```

---

## AI Conversation Flow

### User → AI
```
I want to build an AI customer support agent that:
- Answers common questions
- Escalates to human when needed
- Stores conversation history
- Works via API
```

---

### AI → User (Discovery Mode)

```
🤖 **DISCOVERY MODE - 6 Questions**

---

### Question 1: WHAT type of agent?

- A: FAQ Bot (answers from knowledge base)
- B: Order Status Bot (integrates with database)
- C: Full Support Agent (multi-capability)
- D: (Describe your needs)

*Your choice?*

---

### Question 2: WHERE will it be deployed?

- A: Website chat widget
- B: WhatsApp/Telegram integration
- C: API for mobile app
- D: All of the above

*Your choice?*

---

### Question 3: WHAT's your data source?

- A: Static FAQ document
- B: Database of products/orders
- C: Real-time inventory/pricing
- D: Mix of all

*Your choice?*

---

### Question 4: HOW should it escalate?

- A: Always show human option
- B: Auto-escalate on keywords (refund, complaint)
- C: Auto-escalate after 3 failed attempts
- D: Never escalate (AI only)

*Your choice?*

---

### Question 5: WHAT analytics?

- A: Basic (chat count, resolution rate)
- B: Advanced (sentiment, topic analysis)
- C: None needed

*Your choice?*

---

### Question 6: LANGUAGE?

- A: English only
- B: Multiple languages
- C: User's browser language

*Your choice?*

---

**Waiting for your answers...**
```

---

### User → AI
```
C (Full Support Agent)
A (Website chat widget)
A (Static FAQ document)
B (Auto-escalate on keywords)
A (Basic analytics)
B (Multiple languages)
```

---

### AI → User (Options)

```
## 3 Implementation Options

### Option A: RAG-Based Agent (MY RECOMMENDATION)
**What:** Retrieval-Augmented Generation with your FAQ as knowledge base
**Pros:**
- Accurate answers from your content
- Easy to update knowledge base
- Good at handling variations of questions
- Can cite sources
**Cons:**
- Needs embedding setup (Pinecone/Weaviate)
- Requires LLM API (OpenAI/Anthropic)
**Best for:** FAQ bots, documentation helpers

---

### Option B: Rule-Based + LLM Hybrid
**What:** Keyword matching for common cases, LLM for complex queries
**Pros:**
- Fast for common questions
- Deterministic routing
- Lower LLM costs
**Cons:**
- Maintenance burden for rules
- May miss edge cases
**Best for:** High-volume, predictable queries

---

### Option C: Pure LLM with System Prompt
**What:** OpenAI GPT-4 with carefully crafted system prompt
**Pros:**
- Most flexible
- Handles any question
- No vector database needed
**Cons:**
- Expensive at scale
- May hallucinate
- No source citations
**Best for:** Small-scale or testing

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
✅ **Option A: RAG-Based Agent**

---

# SPEC.md - AI Customer Support Agent

## 1. Overview
RAG-based chatbot using FAQ documents as knowledge base with smart escalation.

## 2. Users
Website visitors seeking customer support.

## 3. Features

### Core Chat
- Real-time chat interface (React)
- Streaming responses
- Typing indicators
- Message history per session

### RAG Pipeline
- FAQ document chunking
- Embedding generation (OpenAI)
- Vector storage (Pinecone)
- Similarity search for answers

### Escalation
- Keyword detection (refund, cancel, speak to human)
- Confidence threshold (< 0.7 triggers escalation)
- Human handoff with full context

### Multi-language
- Auto-detect language
- Support: English, Spanish, French, German
- Language-specific FAQ chunks

### Analytics
- Total chats
- Resolution rate
- Average response time
- Escalation rate

## 4. Tech Stack
- Frontend: React + Vite
- Backend: FastAPI
- LLM: OpenAI GPT-3.5-turbo
- Embeddings: OpenAI text-embedding-ada-002
- Vector DB: Pinecone (free tier)

## 5. Success Criteria
- [ ] 80% of queries answered by RAG
- [ ] < 2 second response time
- [ ] 0 hallucinations on FAQ content
- [ ] Graceful escalation

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

# PLAN.md - AI Customer Support Agent

## Phase 1: Project Setup
- [ ] Initialize FastAPI backend
- [ ] Initialize React frontend
- [ ] Set up Pinecone account
- [ ] Configure OpenAI API

## Phase 2: FAQ Processing Pipeline
- [ ] Create FAQ loader (supports PDF, TXT, MD)
- [ ] Text chunking logic
- [ ] Embedding generation script
- [ ] Pinecone upload script

## Phase 3: RAG Backend
- [ ] /api/chat endpoint
- [ ] /api/embeddings endpoint
- [ ] /api/escalate endpoint
- [ ] Conversation history storage

## Phase 4: Chat Frontend
- [ ] Chat interface component
- [ ] Message bubbles (user/AI)
- [ ] Typing indicator
- [ ] Escalation UI

## Phase 5: Escalation System
- [ ] Keyword detection
- [ ] Confidence scoring
- [ ] Human handoff flow

## Phase 6: Analytics
- [ ] Chat session tracking
- [ ] Analytics dashboard
- [ ] Export reports

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

# TASKS.md - AI Customer Support Agent

## Task 1.1: Setup Backend
```bash
# Create project
mkdir backend && cd backend
python -m venv venv
source venv/bin/activate
pip install fastapi uvicorn openai pinecone-client python-dotenv pydantic

# Create structure
backend/
├── app/
│   ├── __init__.py
│   ├── main.py
│   ├── api/
│   │   ├── chat.py
│   │   └── embeddings.py
│   ├── services/
│   │   ├── rag.py
│   │   └── escalation.py
│   └── models/
│       └── schemas.py
├── scripts/
│   ├── embed_faq.py
│   └── upload_pinecone.py
└── .env
```

## Task 2.1: FAQ Loader
```python
# backend/app/services/faq_loader.py
- [ ] Support .txt, .md, .pdf
- [ ] Clean and normalize text
- [ ] Split into chunks (500 chars, 50 overlap)
- [ ] Return list of chunks with metadata
```

## Task 3.1: Chat Endpoint
```python
# backend/app/api/chat.py
- [ ] POST /api/chat
- [ ] Validate request (message, session_id)
- [ ] Generate embedding for query
- [ ] Search Pinecone for similar chunks
- [ ] Build context prompt
- [ ] Call OpenAI Chat API
- [ ] Calculate confidence score
- [ ] Return response or trigger escalation
```

## Task 4.1: Chat Interface
```tsx
// frontend/src/components/ChatWidget.tsx
- [ ] Floating button (bottom-right)
- [ ] Chat window (400x500)
- [ ] Message list with scroll
- [ ] Input field
- [ ] Send button
- [ ] Typing indicator
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

---

## Task 1.1: Backend Setup

Creating FastAPI project...
Installing dependencies...

✅ Task 1.1 Complete

---

## Task 2.1: FAQ Loader

Creating backend/app/services/faq_loader.py...

✅ Task 2.1 Complete

---

## Task 3.1: Chat Endpoint

Creating RAG pipeline...

```python
# Pseudo-code for RAG
query_embedding = openai.embeddings.create(
    model="text-embedding-ada-002",
    input=user_message
)

results = pinecone.query(
    vector=query_embedding.data[0].embedding,
    top_k=3
)

context = "\n\n".join([r['text'] for r in results['matches']])

response = openai.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[
        {"role": "system", "content": f"Answer based on this FAQ:\n{context}"},
        {"role": "user", "content": user_message}
    ]
)
```

✅ Task 3.1 Complete

---

## Task 4.1: Chat Interface

Creating React components...

✅ Task 4.1 Complete

---

## Testing

```bash
# Backend test
curl -X POST http://localhost:8000/api/chat \
  -H "Content-Type: application/json" \
  -d '{"message": "How do I reset my password?", "session_id": "test"}'

# Response
{
  "response": "To reset your password, click the 'Forgot Password' link on the login page...",
  "confidence": 0.92,
  "sources": ["faq.md:45-52"]
}
```

✅ All tests passing!

---

## Agent Complete!

---

📚 **LEARNING LOG - AI Support Agent**

### Technical Terms Learned:
- **RAG (Retrieval-Augmented Generation)**: AI technique that retrieves relevant documents and uses them to generate better answers
- **Embeddings**: Numerical representations of text that capture meaning - similar concepts have similar numbers
- **Vector Database**: Database optimized for storing and searching embeddings (Pinecone, Weaviate, Chroma)
- **Chunking**: Splitting documents into smaller pieces for better retrieval
- **Confidence Score**: How sure the AI is about its answer (0-1 scale)
- **Escalation**: Transferring conversation to human agent when AI can't help
- **Streaming**: Sending responses token-by-token as they're generated (feels faster)
- **Session ID**: Unique identifier linking related messages together

### Decisions Made:
- Chose RAG over pure prompt for accurate FAQ answers
- Used confidence threshold for escalation
- Streaming responses for better UX

### Concepts to Explore Later:
- Fine-tuning vs RAG tradeoffs
- Multi-modal RAG (images, PDFs)
- Agentic RAG with tool use
- Evaluation metrics for RAG systems
```

---

## Agent Project Structure

```
support-agent/
├── SPEC.md
├── PLAN.md
├── TASKS.md
├── backend/
│   ├── app/
│   │   ├── main.py
│   │   ├── api/
│   │   │   └── chat.py
│   │   └── services/
│   │       ├── rag.py
│   │       └── escalation.py
│   └── scripts/
│       └── embed_faq.py
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   └── ChatWidget.tsx
│   │   └── App.tsx
│   └── package.json
├── faq/
│   └── knowledge-base.md
└── history/
    └── prompts/
        └── support-agent/
            └── learning-log.md
```
