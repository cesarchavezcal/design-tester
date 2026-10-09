# Design System Specification (`DESIGN.md`)

This document defines the baseline design tokens, theme variables, and component guidelines for **CraftUI Studio**. It infuses the **`nothing-design`** industrial aesthetic (Swiss typography, OLED monochrome, Doto dot-matrix, Space Grotesk, Space Mono, and Signal Red `#D71921`) and **`high-end-visual-design`** agency craft rules (Double-Bezel hardware enclosures, Island CTA buttons).

---

## 1. Brand Atmosphere & Archetype

- **Selected Archetype**: `Nothing Industrial / Swiss Monochromatic`
- **Design Philosophy**: Subtract, don't add. Monochrome is the canvas; color is an event. Type does the heavy lifting.
- **Surface Baselines**:
  - **Dark Mode (Default)**: Deep OLED Black (`#000000`), instrument panel glow.
  - **Light Mode**: Printed technical manual off-white (`#F5F5F5`), black ink, subtle white card elevation.

---

## 2. Color Palette & Semantic Roles

All tokens map directly to canvas variables in `designs/design-system.pen` (`$color-...`).

### Core Surfaces (Dual-Mode):
| Token | Dark (OLED) | Light (Technical Paper) | Role |
|---|---|---|---|
| **`$color-canvas`** | `#000000` | `#F5F5F5` | Infinite canvas & screen background |
| **`$color-surface-1`** | `#111111` | `#FFFFFF` | Base card surface, elevated modules |
| **`$color-surface-2`** | `#1A1A1A` | `#EBEBEB` | Raised cards, inputs, pressed states |
| **`$color-border`** | `#222222` | `#E0E0E0` | Subtle hairline dividers (1px) |
| **`$color-border-visible`** | `#333333` | `#CCCCCC` | Structural hardware outlines |

### Text Hierarchy (Monochrome Grayscale):
| Token | Dark | Light | Role |
|---|---|---|---|
| **`$color-text-display`** | `#FFFFFF` | `#000000` | Headlines, hero metrics, active titles (100%) |
| **`$color-text-primary`** | `#E8E8E8` | `#1A1A1A` | Primary body text, labels (90%) |
| **`$color-text-secondary`**| `#999999` | `#666666` | Supporting context, captions (60%) |
| **`$color-text-disabled`** | `#555555` | `#999999` | Monospace ALL CAPS instrument labels (40%) |

### Event & Status Colors:
| Token | Value | Role |
|---|---|---|
| **`$color-accent`** | `#D71921` | Signal Red: Active event indicator, urgent CTA (max 1 per screen) |
| **`$color-accent-subtle`**| `rgba(215,25,33,0.15)` | Signal red tint background for active chips |
| **`$color-success`** | `#4A9E5C` | Metric positive trend status (applied to number itself) |
| **`$color-warning`** | `#D4A843` | Attention / degraded state indicator |

---

## 3. Typography Scales (Font Discipline)

Maximum 2 font families (plus `Doto` for hero moments), 3 sizes, and 2 weights per view.

- **Display**: `"Doto"` (variable dot-matrix for hero numbers and prices)
- **Headings / Body**: `"Space Grotesk"` (Light 300, Regular 400, Medium 500, Bold 700)
- **Metadata / Instrument Labels**: `"Space Mono"` (Regular 400, Bold 700; always ALL CAPS)

| Role | Font Family | Size | Weight | Tracking | Usage |
|---|---|---|---|---|---|
| **Display Hero** | `Doto` | `48px` | `Bold` (700) | `-0.02em` | Primary KPI figures, prices |
| **Page Title** | `Space Grotesk` | `24px` | `SemiBold` (600) | `-0.01em` | Screen & board headers |
| **Body Regular** | `Space Grotesk` | `14px` | `Regular` (400) | `0` | Descriptions & form values |
| **Body Small** | `Space Grotesk` | `13px` | `Regular` (400) | `0` | Secondary item text |
| **Instrument Label**| `Space Mono` | `11px` | `Bold` (700) | `+0.08em` | ALL CAPS field & perimeter tags |
| **Metric / Code** | `Space Mono` | `13px` | `Regular` (400) | `0` | Timestamps, currency values |

---

## 4. Spacing, Radii & Agency Craft Invariants

### Spacing Scale:
- **`$spacing-2xs`**: `4px` (Icon-to-label gaps)
- **`$spacing-xs`**: `8px` (Internal chip & badge padding)
- **`$spacing-sm`**: `12px` (Tight component gaps)
- **`$spacing-md`**: `16px` (Standard container padding)
- **`$spacing-lg`**: `24px` (Section & module breathing room)
- **`$spacing-xl`**: `32px` (Major layout divisions)

### Corner Radii:
- **`$radius-sm`**: `4px` (Monospace tags, keyboard shortcut chips)
- **`$radius-md`**: `8px` (Form fields, secondary buttons)
- **`$radius-lg`**: `14px` (Inner core cards)
- **`$radius-xl`**: `20px` (Outer hardware shells, sheets)
- **`$radius-full`**: `9999px` (Pills, circular island button wrappers)

### Agency Craft Standards (`high-end-visual-design` & `ui-ux-pro-max`):
1. **The Double-Bezel Hardware Enclosure**:
   - Outer shell frame: `fill: "rgba(255,255,255,0.03)"`, `padding: 6`, `cornerRadius: 20`, `stroke: "$color-border"`.
   - Inner core card: `cornerRadius: 14`, `fill: "$color-surface-1"`.
2. **Nested Island CTA Buttons**:
   - Interactive button styled as a generous pill or 10px radius with an inner circular icon chip flush with the button's right padding.
3. **Accessibility**:
   - All interactive touch targets on mobile viewports strictly exceed `44 x 44px` with a minimum `8px` buffer.
   - Text contrast against backgrounds strictly exceeds WCAG 4.5:1.

---

## 5. Reusable Component Catalog (`designs/design-system.pen`)

| Component | Node ID / Symbol | Description & Variants |
|---|---|---|
| **`Button / Island CTA`** | `comp-btn-island` | Primary action button with Signal Red fill and nested circular icon chip wrapper. |
| **`Button / Secondary`** | `comp-btn-secondary` | High-contrast OLED button: White fill with black text or hairline outline. |
| **`Button / Ghost`** | `comp-btn-ghost` | Monospace ghost button with subtle hover underline. |
| **`Input / Technical Field`** | `comp-input-text` | Space Mono ALL CAPS label (`0.08em` tracking), hairline field box, shortcut slot. |
| **`Input / Search`** | `comp-input-search` | Search box with Lucide icon and technical `⌘K` keyboard badge. |
| **`Card / Double-Bezel KPI`** | `comp-card-kpi` | Double-bezel shell with Doto 36px hero metric, Space Mono delta trend. |
| **`Card / Double-Bezel Pricing`**| `comp-card-pricing` | Double-bezel hardware enclosure with price, feature checklist (`[✓]`), and Island CTA. |
| **`Table / Data Row`** | `comp-table-row` | Monospace timestamp, status dot, avatar initials, and transaction metrics. |
| **`Nav / Technical Rail`** | `comp-nav-sidebar` | 240px desktop instrument rail with dot-matrix logo mark and uppercase nav items. |
| **`Nav / Mobile TabBar`** | `comp-nav-tabbar` | 393x64px OLED black navigation bar with 44px touch targets and red active signal dot. |
| **`Overlay / Modal Dialog`** | `comp-overlay-modal`| Hardware dialog card with uppercase header and dual action buttons. |
| **`Overlay / Toast`** | `comp-overlay-toast`| Pill notification with status icon and monospace status message. |
| **`Flow / Gesture Chip`** | `comp-flow-badge` | Monospace uppercase gesture badges (`🏷️ [TAP]`, `🏷️ [TYPE]`, `🏷️ [SWIPE]`). |
