---
name: pen-wireframing
description: Create structural wireframes on the Pen Dev canvas using the Blueprint Technical style archetype. Validates spatial layout, content hierarchy, and information density before high-fidelity visual design.
---

# Pen Dev Blueprint Wireframing (`/pen-wireframing`)

Use this skill when drafting low-fidelity structural wireframes on the Pen Dev canvas (`designs/app.pen`).

---

## 📐 Blueprint Technical Style Archetype

The **Blueprint Technical** archetype strips away decorative distractions (colors, photos, complex shadows) to focus 100% on spatial hierarchy and user interaction patterns.

### Blueprint Visual Rules:
- **Canvas / Surface Background**: Blueprint Navy (`#0B192C` or `#0F172A`) or Grid Paper.
- **Wireframe Strokes**: Cyan/Electric Blue hairline strokes (`#00E5FF` or `#38BDF8`, `strokeWidth: 1`).
- **Containers**: Semi-transparent schematic boxes with dashed or hairline borders.
- **Typography**: Monospace or technical sans (`JetBrains Mono`, `Space Grotesk`).
- **Images / Icons**: Placeholder boxes with diagonal cross-hairs or icon glyphs labeled with dimensions (e.g. `[ Image: 320x180 ]`).
- **Copy**: Actual structural microcopy (no lorem ipsum where business domain terms exist).

---

## 🛠️ Execution Example: Blueprint Screen

```js
// 1. Create Blueprint Screen Frame
bpScreen = Insert(document, {
  type: "frame",
  name: "Wireframe / ProductDetails / Blueprint",
  width: 393,
  height: 852,
  clip: true,
  layout: "vertical",
  fill: "#0B192C",
  padding: [24, 20],
  gap: 16
});

// 2. Image Placeholder Block
imgPlaceholder = Insert(bpScreen, {
  type: "frame",
  name: "Placeholder / HeroImage",
  width: "fill_container",
  height: 240,
  stroke: "#00E5FF",
  strokeWidth: 1,
  justifyContent: "center",
  alignItems: "center"
});

Insert(imgPlaceholder, {
  type: "text",
  content: "[ HERO MEDIA 353 x 240 ]",
  fontFamily: "JetBrains Mono",
  fontSize: 12,
  fill: "#00E5FF"
});

// 3. Structural Title & Price Rows
titleRow = Insert(bpScreen, {
  type: "frame",
  name: "Row / Title & Price",
  width: "fill_container",
  layout: "vertical",
  gap: 8
});

Insert(titleRow, {
  type: "text",
  content: "PRODUCT TITLE HEADLINE",
  fontFamily: "JetBrains Mono",
  fontSize: 18,
  fontWeight: "bold",
  fill: "#FFFFFF"
});
```
