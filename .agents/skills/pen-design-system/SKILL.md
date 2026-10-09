---
name: pen-design-system
description: Build, maintain, and structure design systems on the Pen Dev canvas. Manages theme variables (colors, typography, spacing, radii) and reusable component libraries with slot frames.
---

# Pen Dev Design System Architecture (`/pen-design-system`)

Use this skill when constructing or expanding the design system canvas (`designs/design-system.pen`) and documentation (`docs/design-system/DESIGN.md`).

---

## ⚡ Core Architecture

1. **Theme Variables Block (`SetVariables`)**:
   - Variables are defined at the root document level and referenced with the `$` prefix.
   - Categorized into colors, numbers, booleans, and strings.

2. **Master Component Symbols (`reusable: true`)**:
   - Every reusable UI component is defined in a master component symbol frame with `reusable: true`.
   - Placed at the top or dedicated area of `designs/design-system.pen`.

3. **Slot Frames**:
   - Container frames within components marked with `slot: [...]` allowing instance callers to inject custom child components.

4. **Component Instances (`Ref`)**:
   - Screen artboards reference components via `type: "ref"`, `ref: "<component_id>"`, with custom text and property overrides in `descendants`.

---

## 🛠️ Execution Example: Theme Variables & Reusable Button

```js
// 1. Define Design Tokens
SetVariables({
  "color-primary": { type: "color", value: "#00E5FF" },
  "color-surface-1": { type: "color", value: "#111A2E" },
  "spacing-sm": { type: "number", value: 12 },
  "spacing-md": { type: "number", value: 16 },
  "radius-md": { type: "number", value: 8 }
});

// 2. Master Reusable Button Component
btnMasterId = Insert(document, {
  type: "frame",
  name: "Component / Button / Primary",
  reusable: true,
  layout: "horizontal",
  padding: [12, 24],
  cornerRadius: "$radius-md",
  fill: "$color-primary",
  justifyContent: "center",
  alignItems: "center"
});

btnLabelId = Insert(btnMasterId, {
  type: "text",
  name: "Label",
  content: "Button CTA",
  fontFamily: "Inter",
  fontSize: 14,
  fontWeight: "bold",
  fill: "#0A0F1D"
});

// 3. Screen instantiates the button via Ref
Insert(screenContainerId, {
  type: "ref",
  name: "Instance / PrimaryButton",
  ref: btnMasterId,
  descendants: {
    [btnLabelId]: { content: "Complete Purchase" }
  }
});
```
