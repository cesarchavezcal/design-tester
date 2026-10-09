---
name: pen-screen-by-screen
description: Follow user stories or planning documents to construct the user journey screen by screen, interaction by interaction. Progresses through the 5 behavioral states using Copy() delta cloning.
---

# Screen-by-Screen Interaction Progression (`/pen-screen-by-screen`)

Use this skill to build an outside-in, screen-by-screen interaction walkthrough from planning docs and stories.

---

## ⚡ The 5 Behavioral Interaction States

For every critical flow, author screens representing the 5 phases of interaction:

1. **Phase 1: Entry / Idle**:
   - The user's baseline view before interaction begins.
2. **Phase 2: Active Input / Focus**:
   - Input focused, keyboard visible, modal sheet sliding up, or dropdown menu expanded.
3. **Phase 3: In-Progress / Processing**:
   - Submit button in loading state, progress bar, or skeleton loaders active.
4. **Phase 4: Feedback / Recovery**:
   - Success confirmation, toast notification, or inline error validation banner with recovery action.
5. **Phase 5: Exit / Destination**:
   - The final landing state after flow completion (e.g. Order Confirmation screen or updated dashboard).

---

## 🛠️ Execution Discipline: Delta Cloning via `Copy()`

Always generate screen $N+1$ by cloning screen $N$:
```js
// Screen 1: Idle
s1 = Insert(document, { type: "frame", name: "Screen / 01-Idle", ... });

// Screen 2: Focus / Input Active
s2 = Copy(s1, document);
Update(s2, { name: "Screen / 02-Input-Active", x: 480 });
// update input field to focused state

// Screen 3: Processing
s3 = Copy(s2, document);
Update(s3, { name: "Screen / 03-Processing", x: 960 });
// update CTA to loading spinner

// Screen 4: Confirmation
s4 = Insert(document, { type: "frame", name: "Screen / 04-Confirmed", x: 1440, ... });
```
