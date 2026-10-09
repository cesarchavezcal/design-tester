---
name: pen-user-flows
description: Create end-to-end user flows on the Pen Dev canvas based on planning docs. Renders full production UI for each interaction state, linked with directional vector arrows, gesture action badges, and decision branches.
---

# Pen Dev User Flow Mapping (`/pen-user-flows`)

Use this skill to convert planning documents, user stories, and sequence diagrams into cohesive, visually linked user flows on the Pen Dev canvas (`designs/app.pen`).

---

## ⚡ Architectural Principles

1. **Full UI Representation**:
   - Each step in the flow is represented by a complete, high-fidelity screen frame (e.g. `Screen 1: Cart View`, `Screen 2: Promo Sheet Open`, `Screen 3: Payment Active`).
   - The user sees authentic production UI for every phase of their journey.

2. **Delta Updates via `Copy()`**:
   - Do NOT redraw identical screens from scratch.
   - Use `nextScreenId = Copy(prevScreenId, document)` and modify only the delta interaction state (e.g. focused text input, error toast, opened modal).
   - This prevents visual drift across the flow and keeps canvas generation lightning fast.

3. **Directional Vector Connectors**:
   - Draw connector paths (`type: "path"`) with arrowheads linking the interactive trigger element (button, input, row) on the source screen to the destination screen.

4. **Interaction Action Badges**:
   - Place a pill chip frame on each connector path specifying the gesture:
     - `🏷️ [TAP] "Apply Coupon"`
     - `🏷️ [TYPE] "SAVE20"`
     - `🏷️ [SWIPE] Dismiss Sheet`
     - `🏷️ [AUTH] FaceID Triggered`

5. **Decision Diamonds & Branching**:
   - For conditional flows (e.g. Success vs Error), create branch splits leading to separate outcome screens.

---

## 🛠️ Execution Example: Multi-Screen Flow

```js
// 1. Initial State Screen
s1 = Insert(document, {
  type: "frame", name: "Flow / Checkout / 01-Cart",
  width: 393, height: 852, clip: true, x: 0, y: 0,
  layout: "vertical", fill: "$color-canvas", padding: 20
});
// (build screen 1 content...)

// 2. Clone for Step 2 (Delta State)
s2 = Copy(s1, document);
Update(s2, {
  name: "Flow / Checkout / 02-Promo-Active",
  x: 480, y: 0 // offset to the right
});
// Update s2 with opened promo sheet or active input...

// 3. Action Gesture Badge between screens
badge = Insert(document, {
  type: "frame", name: "ActionBadge / TapPromo",
  x: 405, y: 400, layout: "horizontal", padding: [6, 12],
  cornerRadius: 9999, fill: "$color-surface-2", stroke: "$color-primary"
});
Insert(badge, {
  type: "text", content: "🏷️ [TAP] Promo Input",
  fontSize: 12, fill: "$color-text-primary"
});

// 4. Connector Arrow
Insert(document, {
  type: "path", name: "Connector / S1->S2",
  geometry: "M 393 420 L 480 420",
  stroke: "$color-primary", strokeWidth: 2
});
```
