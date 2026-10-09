---
name: pen-prototyping
description: Create interactive prototypes, micro-interaction states, component variants (hover, active, disabled), and screen transitions (modals, sheets, toast banners) in Pen Dev.
---

# Pen Dev Interactive Prototyping (`/pen-prototyping`)

Use this skill when designing interactive states, component variants, and screen transitions on the Pen Dev canvas (`designs/app.pen` or `designs/design-system.pen`).

---

## ⚡ Interaction States & Transitions

### 1. Component State Matrix
Every interactive component (Buttons, Inputs, Cards, Toggles) must have explicit variant representations:
- **Default / Resting**: Base state with default token fills and borders.
- **Hover / Focus**: Accent stroke highlight (`$color-primary`), subtle elevation increase.
- **Active / Pressed**: Darker shade fill (`$color-primary-hover`), slight scale or inset.
- **Disabled**: Dimmed opacity (`0.4`), non-interactive styling.
- **Loading**: Replaced label with spinner glyph or pulsating skeleton fill.

### 2. Screen-Level Transition Overlays
- **Bottom Sheet Presentation**: Semi-transparent dark backdrop overlay (`rgba(0,0,0,0.6)`) with a rounded top container sliding up from bottom.
- **Modal Dialogue**: Centered container with drop shadow, darkened backdrop, title, action buttons.
- **Toast / Notification**: Floating pill container positioned at the top or bottom of the screen with status icon and auto-dismiss indicator.

---

## 🛠️ Execution Example: Bottom Sheet Overlay

```js
// 1. Overlay Container Frame covering full screen
sheetScreen = Copy(baseScreenId, document);
Update(sheetScreen, {
  name: "Screen / Checkout / State-BottomSheetOpen",
  x: 480, y: 0
});

// 2. Dimmed Backdrop
backdrop = Insert(sheetScreen, {
  type: "frame",
  name: "Backdrop",
  layoutPosition: "absolute",
  x: 0, y: 0,
  width: "fill_container",
  height: "fill_container",
  fill: "rgba(0, 0, 0, 0.65)"
});

// 3. Sliding Bottom Sheet Container
sheet = Insert(sheetScreen, {
  type: "frame",
  name: "BottomSheet",
  layoutPosition: "absolute",
  x: 0, y: 352, // positioned at bottom half
  width: 393,
  height: 500,
  cornerRadius: [24, 24, 0, 0],
  fill: "$color-surface-1",
  padding: [16, 20],
  layout: "vertical",
  gap: 16
});

// Drag Handle
Insert(sheet, {
  type: "rectangle",
  name: "Handle",
  width: 40,
  height: 4,
  cornerRadius: 2,
  fill: "$color-border"
});
```
