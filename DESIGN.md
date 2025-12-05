# Eden Design Document

*Living document. Early days.*

---

## What is Eden?

Eden is the AI product. It's what you use.

If Orchard is the compute provider (the inference engine, the backend), then Eden is everything else - the interface, the experience, the daily driver.

Easy to learn. Easy to master. General purpose. Always available.

---

## The Relationship

```
┌─────────────────────────────────────────────────────────────────┐
│  EDEN - the product                                              │
│    What you see. What you use. What you talk to.                 │
├─────────────────────────────────────────────────────────────────┤
│  ORCHARD - the compute                                           │
│    Inference. Structured generation. GPU kernels.                │
└─────────────────────────────────────────────────────────────────┘
```

Eden consumes Orchard. Eden is B2C. Orchard is infrastructure.

---

## The Problem Right Now

People use AI through a dozen fragmented products:
- Claude.ai for some things
- ChatGPT for others
- Gemini for Google-integrated stuff
- Cursor for coding
- Claude Code for CLI work
- Voice assistants for quick queries

Each is siloed. None share context. Switching between them means starting over.

Eden wants to be the ONE thing. The daily driver.

---

## MVP: Getting to Daily Driver

To become the daily driver, Eden needs to:

### 1. Be Always Available

Not an app you launch and quit. Infrastructure. A daemon. Something that's just *there*.

The foundation for everything else.

### 2. Know Your Context

This is where the import/sync work comes in. Not because Eden IS a data aggregator, but because you can't be a daily driver if you don't know what the user has been doing.

**Import from existing providers:**
- Claude, ChatGPT, Gemini, Cursor, Claude Code
- Preserve everything: messages, images, branches, timestamps
- Unified format that can represent any source

**Keep it updated:**
- Incremental sync as users continue using other products
- The migration to Eden happens gradually, not overnight

### 3. Connect to External Services

Eden manages your connections:

**OAuth (user accounts)**
- Google (Drive, Calendar, etc.)
- Spotify
- GitHub
- Others as needed

**API Keys (AI providers)**
- Anthropic, OpenAI, Google AI
- For using their models through Eden
- Or for agents that need to act on your behalf

**Per-agent access control**
- Not every agent needs all permissions
- Fine-grained control over what can access what

### 4. Have Agents That Do Things

Agents are workers. They act on your behalf.

**Examples:**
- Request a data export from a platform
- Navigate a dashboard and copy an API key
- Process a gigabyte data dump in parallel (swarm)
- Monitor for new data and integrate it

The agent infrastructure needs to support:
- Parallel execution
- Task coordination
- Autonomous action (within permissions)

### 5. Be the Interface

Eventually: chat UI, voice-first interaction, whatever modalities make sense.

But the interface comes after the foundation is solid.

---

## Design Philosophy: The Room of Requirement

Eden's interface is guided by a multi-faceted design philosophy that draws from architecture, spatial computing, and a touch of magic.

### The Governing Metaphor

**The Room of Requirement** - A space that becomes what you need. Contains more than its physical dimensions allow. Adapts, reconfigures, reveals.

This isn't decoration. It's the core principle: the interface is a *space*, not a surface.

---

### The Six Pillars

#### 1. The Cockpit Principle

The screen is a **windshield**, not a page. The user sits in a command position, looking *through* the interface into a space beyond.

- Every element is instrumentation, positioned with pilot intentionality
- Nothing decorative - everything functional, but beautiful in its function
- The HUD serves the mission

#### 2. Physical Inches, Not Pixels

Design the interface like **furniture**. Like architecture. The screen is a physical object with real dimensions.

- A button is the size a thumb wants to press
- Margins are breathing room, not arbitrary numbers
- Design for a body sitting in front of glass
- Think in inches, not pixels

#### 3. The Skyscraper Constraint

The screen is fixed. You can't make it bigger. But you can make the space *inside* feel infinite.

- **Depth over sprawl** - layers, z-space, things that recede and approach
- Not scrolling, but *navigation through volume*
- The fixed window opens onto an unbounded world

#### 4. Harry Potter Spatial Magic

Small spaces that feel vast. The tent that's a mansion inside.

- **Depth and parallax** - layers moving at different speeds
- **Negative space that implies vastness** - emptiness as expansion
- **Transitions that reveal** - places *emerge*, you don't navigate *to* them
- **Focus as expansion** - attention causes the relevant to fill perception

#### 5. Renaissance Proportion

Classical harmony. Every element in its divine ratio.

- Not arbitrary spacing - *harmonic* spacing
- Visual hierarchy that feels discovered, not designed
- The cathedral effect: feeling small but elevated
- Golden ratios, intentional proportion, nothing accidental

#### 6. Organic Integration (Frank Lloyd Wright)

UI that feels like it **grew from the ground**. Not widgets bolted onto a canvas.

- Elements emerge from each other, have roots
- Fallingwater doesn't sit *next to* the waterfall - it's *part of* it
- Eden's interface shouldn't feel like software on a screen
- It should feel like the screen *became* this

---

### Visual Expression: AI That Draws

Eden's AI doesn't just speak - it **shows**.

#### Moondream SVG Generation

Moondream can generate segmentation masks as SVG paths. This enables:

- AI that *points* to things, not just describes them
- Dynamic shapes that highlight, isolate, annotate
- Structured visual data, not just pixels

#### Manim as Physics Engine

The animation layer. Things don't just appear - they have physics.

- Elements **emerge, grow, settle** into place
- Transformations feel natural, not jarring
- The "3Blue1Brown" visual language - mathematical, precise, alive

#### The Pipeline

```
Moondream perception → SVG paths → Manim animation → SwiftUI rendering
```

The boundary between "content" and "interface" dissolves. The AI shapes the visual space directly.

---

### What This Produces

An interface that is:

- **Spatial** - not flat, but deep
- **Architectural** - Renaissance bones, organic flesh
- **Magical** - impossible spaces that feel natural
- **Alive** - things move, emerge, respond
- **Unified** - AI expression and UI are the same medium

This is **spatial computing without the goggles**. The screen becomes a portal.

---

## Open Questions

- Storage model (not necessarily a database - TBD)
- Agent framework (proxy-base-agent? fresh start?)
- First external integration (Google/Gemini seems tractable)
- Identity model (how does Eden know "you"?)
- Local-first vs cloud

---

## What This Document Is

A snapshot of early thinking. Will evolve as we build.

The goal isn't to spec everything out. The goal is to capture the vision and find the right abstractions.

---

*Last updated: December 2024*
