---
name: pen-story-components
description: Read user stories, planning docs, and acceptance criteria to author atomic, isolated feature components with their variant states on the Pen Dev canvas.
---

# Story-Driven Component Authoring (`/pen-story-components`)

Use this skill to convert agile user story requirements and acceptance criteria into reusable feature components and cards on the canvas.

---

## ⚡ Methodology

1. **Acceptance Criteria Extraction**:
   - Extract data fields (labels, values, metadata, status indicators).
   - Extract user actions (tap, toggle, select, edit, delete).
   - Identify edge states (empty list, truncated text, max limit).

2. **Atomic Component Framing**:
   - Build the component as an isolated frame with `reusable: true`.
   - Wrap interactive targets with explicit touch targets (minimum `44x44px` on mobile).
   - Implement slot frames for flexible content injection.

3. **Variant State Checklist**:
   - Create variants side-by-side: `Default`, `Active / Selected`, `Loading Skeleton`, and `Error / Disabled`.

---

## 🛠️ Execution Example: Product Cart Item Component

```js
// Story: As a buyer, I want to see product thumbnail, title, price, and quantity stepper in my cart.
cartItemMaster = Insert(document, {
  type: "frame",
  name: "Component / Cart / ItemRow",
  reusable: true,
  width: "fill_container",
  layout: "horizontal",
  padding: 16,
  gap: 16,
  fill: "$color-surface-1",
  cornerRadius: "$radius-md",
  alignItems: "center"
});

// Thumbnail Media Slot
thumbId = Insert(cartItemMaster, {
  type: "frame", name: "Thumbnail",
  width: 64, height: 64, cornerRadius: "$radius-sm",
  fill: "$color-surface-2"
});

// Title & Price Vertical Column
colId = Insert(cartItemMaster, {
  type: "frame", name: "InfoCol",
  width: "fill_container", layout: "vertical", gap: 4
});
Insert(colId, {
  type: "text", name: "Title", content: "Product Title",
  fontSize: 14, fontWeight: "bold", fill: "$color-text-primary"
});
Insert(colId, {
  type: "text", name: "Price", content: "$45.00",
  fontSize: 14, fill: "$color-primary"
});

// Stepper Target
stepperId = Insert(cartItemMaster, {
  type: "frame", name: "QuantityStepper",
  layout: "horizontal", gap: 8, alignItems: "center"
});
```
