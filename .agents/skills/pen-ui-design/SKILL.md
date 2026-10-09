---
name: pen-ui-design
description: Design production-quality, high-fidelity UI screens in Pen Dev (.pen). Follows strict flexbox layout rules, responsive container sizing, Google Fonts, and design token binding.
---

# Pen Dev High-Fidelity UI Design (`/pen-ui-design`)

Use this skill when designing high-fidelity screens, views, dashboards, and pages on the Pen Dev canvas (`designs/app.pen`).

---

## ⚡ Core Rules & Invariants

1. **Document Root Discipline**:
   - Every screen MUST be a top-level `frame` in `document`.
   - Never insert loose text, icons, cards, or buttons directly under `document`.
   - Set `clip: true` on every screen frame to prevent visual content overflow.
   - Use standard viewports: Mobile `393 x 852` (iOS) or Desktop `1440 x 900` / `1440 x 1024`.

2. **Flexbox Layout Discipline (No Unsupported CSS)**:
   - Use `layout: "vertical"` or `layout: "horizontal"` with `gap` and `padding`.
   - **DO NOT USE**: percentage strings (`"100%"`, `"50%"`), viewport units (`"100vh"`), `margin`, `alignItems: "stretch"` or `"baseline"`.
   - Use `fill_container` to stretch child frames to match their parent.
   - Use `fit_content` when a container should hug its contents.

3. **Text Sizing & Visibility**:
   - Text has NO fill color by default: You MUST set `fill: "$color-text-primary"` (or explicit hex).
   - Paragraphs and multi-line titles: MUST use `textGrowth: "fixed-width"` with `width: "fill_container"`.
   - Buttons, tags, single-line labels: use `textGrowth: "auto"` (default).

4. **Token Variable Binding**:
   - Reference theme tokens using the `$` prefix (`fill: "$color-primary"`, `gap: "$spacing-md"`, `cornerRadius: "$radius-md"`).

---

## 🛠️ Execution Example: Mobile Screen

```js
// 1. Create Screen Frame
screenId = Insert(document, {
  type: "frame",
  name: "Screen / Home / Dashboard",
  width: 393,
  height: 852,
  clip: true,
  layout: "vertical",
  fill: "$color-canvas",
  padding: [24, 20],
  gap: "$spacing-lg",
  placeholder: true
});

// 2. Header Block
headerId = Insert(screenId, {
  type: "frame",
  name: "Header",
  width: "fill_container",
  layout: "horizontal",
  justifyContent: "space_between",
  alignItems: "center"
});

Insert(headerId, {
  type: "text",
  name: "Greeting",
  content: "Good morning, Alex",
  fontFamily: "Inter",
  fontSize: 20,
  fontWeight: "bold",
  fill: "$color-text-primary"
});

// 3. Clear placeholder once done
Update(screenId, { placeholder: false });
```
