---
name: pen-illustrations
description: Create bespoke SVG illustrations, vector decorative art, and spot icons natively on the Pen Dev canvas using Generate({ type: "svg" }) and vector primitives.
---

# Pen Dev Illustrations & Vector Art (`/pen-illustrations`)

Use this skill when generating custom illustrations, empty-state graphics, hero visuals, or decorative vector assets on the canvas (`designs/app.pen` or `designs/design-system.pen`).

---

## ⚡ Illustration Rules & Invariants

1. **NEVER Hand-Draw Complex Characters or Logos**:
   - Do NOT attempt to hand-code complex illustration coordinates using dozens of manual paths and bezier curves. They look crude and error-prone.
   - Use Pen Dev's native `Generate("svg", frameId, prompt)` engine to produce clean, scalable vector illustrations.

2. **Stylistic Consistency**:
   - Ensure illustration color palettes match the project's theme variables (`$color-primary`, `$color-surface-2`).
   - Use consistent stroke weights and corner rounding across all spot illustrations in an app.

3. **Spot Illustrations & Empty States**:
   - Empty cart, search not found, payment success badge, onboarding hero illustration.

---

## 🛠️ Execution Example: Generating an SVG Illustration

```js
// 1. Create Illustration Container Frame
illustFrame = Insert(parentContainerId, {
  type: "frame",
  name: "Illustration / EmptyCart",
  width: 280,
  height: 200,
  layoutPosition: "auto",
  justifyContent: "center",
  alignItems: "center"
});

// 2. Generate Native SVG Artwork
Generate("svg", illustFrame, "Minimalist modern flat illustration of an empty shopping bag with clean cyan accents, solid lines, dark mode fintech aesthetic");
```
