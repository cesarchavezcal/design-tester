---
name: pen-branding
description: Create branding identities, logo marks, color harmony palettes, typography pairings, and brand guidelines on the Pen Dev canvas.
---

# Pen Dev Branding & Visual Identity (`/pen-branding`)

Use this skill when defining or expanding the visual brand identity of a product on the canvas (`designs/design-system.pen`).

---

## ⚡ Brand System Deliverables

1. **Brand Moodboard & Personality**:
   - Establish brand tone (e.g. Modern Fintech, Brutalist Minimal, Playful Consumer, Enterprise Security).
2. **Color Harmony Palette**:
   - Primary Accent, Secondary Support, Neutral Canvas & Surface ramp, Semantic indicators (Success, Warning, Danger).
3. **Typography Pairings**:
   - Pairing Display Sans/Serif with high-legibility Body sans and Monospace accents (e.g. `Space Grotesk` + `Inter` + `JetBrains Mono`).
4. **Vector Logo & Monogram**:
   - Generate vector logo artwork using Pen Dev's native SVG generator:
     ```js
     logoFrame = Insert(parent, { type: "frame", name: "LogoMark", width: 48, height: 48 });
     Generate("svg", logoFrame, "Minimalist geometric electric lightning bolt monogram logo, clean vector lines");
     ```
5. **Brand Guidelines Board**:
   - A dedicated canvas artboard laying out the brand overview, color swatches with hex/variable names, typography specimen scale, and do's/don'ts.
