# Design System Specification (`DESIGN.md`)

This document defines the baseline design tokens, theme variables, and component guidelines for the project. When initializing a new project via `/init-project`, the onboarding interview populates these values to match your chosen brand identity.

---

## 1. Brand Atmosphere & Archetype

- **Selected Archetype**: `Blueprint Technical`
- **Design Personality**: Clean, structured, high-contrast, token-driven.
- **Canvas Surface Baseline**: Dark or Light mode according to archetype.

---

## 2. Color Palette & Semantic Roles

All colors defined here map 1:1 to theme variables in `designs/design-system.pen` (`$color-...`).

### Core Palette:
- **`$color-primary`**: `#00E5FF` (Accent fill, active CTA, interactive highlight)
- **`$color-primary-hover`**: `#00B4D8` (Interactive hover/pressed state)
- **`$color-primary-muted`**: `rgba(0, 229, 255, 0.15)` (Subtle selection highlight, tag fill)

### Surfaces & Backgrounds:
- **`$color-canvas`**: `#0A0F1D` (Infinite canvas and screen background)
- **`$color-surface-1`**: `#111A2E` (Elevated cards, list containers, modals)
- **`$color-surface-2`**: `#1B2742` (Nested cards, inputs, pressed states)
- **`$color-border`**: `#263659` (Hairline container strokes and dividers)

### Text Hierarchy:
- **`$color-text-primary`**: `#FFFFFF` (High contrast headings, values, labels)
- **`$color-text-secondary`**: `#94A3B8` (Descriptions, subtitles, metadata)
- **`$color-text-tertiary`**: `#64748B` (Placeholders, disabled text)

### Semantic Feedback:
- **`$color-success`**: `#10B981` (Completed flows, valid inputs)
- **`$color-warning`**: `#F59E0B` (Pending states, caution banners)
- **`$color-danger`**: `#EF4444` (Error toasts, destructive CTAs, validation errors)

---

## 3. Typography Scales

All typography uses Google Fonts available natively in Pen Dev.

- **Display Font**: `Inter` (or `Space Grotesk`, `Plus Jakarta Sans`)
- **Body Font**: `Inter`
- **Monospace Font**: `JetBrains Mono`

| Role | Font Family | Size | Weight | Line Height | Letter Spacing |
|---|---|---|---|---|---|
| **Display Title** | `$font-display` | `32px` | `Bold` (700) | `1.2` | `-0.02em` |
| **Heading 1** | `$font-display` | `24px` | `SemiBold` (600) | `1.25` | `-0.01em` |
| **Heading 2** | `$font-display` | `18px` | `SemiBold` (600) | `1.3` | `0` |
| **Body Large** | `$font-body` | `16px` | `Regular` (400) | `1.5` | `0` |
| **Body Regular** | `$font-body` | `14px` | `Regular` (400) | `1.4` | `0` |
| **Caption / Label** | `$font-body` | `12px` | `Medium` (500) | `1.3` | `+0.01em` |
| **Code / Metric** | `$font-mono` | `14px` | `Regular` (400) | `1.4` | `0` |

---

## 4. Spacing, Radii & Layout Metrics

### Spacing Scale:
- **`$spacing-2xs`**: `4px`
- **`$spacing-xs`**: `8px`
- **`$spacing-sm`**: `12px`
- **`$spacing-md`**: `16px`
- **`$spacing-lg`**: `24px`
- **`$spacing-xl`**: `32px`
- **`$spacing-2xl`**: `48px`

### Corner Radii:
- **`$radius-sm`**: `4px` (Tags, chips, small badges)
- **`$radius-md`**: `8px` (Inputs, secondary buttons)
- **`$radius-lg`**: `12px` (Cards, primary modals)
- **`$radius-xl`**: `16px` (Sheets, elevated panels)
- **`$radius-full`**: `9999px` (Pill avatars, round icon buttons)

---

## 5. Agency-Tier Structural Specifications (`high-end-visual-design`)

To avoid generic AI layout clichés, all interactive components and cards in Pen Dev should follow these hardware-inspired structural conventions:

### Double-Bezel Card Enclosure
High-end interfaces use layered nested bezels instead of flat 1px outlines:
- **Outer Shell Frame**:
  - `padding`: `6px`
  - `cornerRadius`: `$radius-xl` (`24px` or `20px`)
  - `fill`: `rgba(255, 255, 255, 0.04)` (dark mode) or `rgba(0, 0, 0, 0.03)` (light mode)
  - `stroke`: `1px solid $color-border`
- **Inner Core Card**:
  - `cornerRadius`: `18px` (mathematically concentric: Outer Radius minus Outer Padding)
  - `fill`: `$color-surface-1`
  - `padding`: `$spacing-lg` (`24px`) or `$spacing-md` (`16px`)

### Nested Island CTA Buttons
Interactive buttons feature an enclosed circular icon badge:
- **Button Container**: Height `48px` to `52px`, `cornerRadius: $radius-full` (or `$radius-md`), `padding: 8px 8px 8px 20px`.
- **Text Label**: `$font-body`, `Medium` (500) or `SemiBold` (600), `fill: $color-text-primary`.
- **Island Action Frame**: Nested circular frame at the trailing edge (`36 x 36px` or `32 x 32px`), `cornerRadius: 9999px`, background with higher contrast or primary tint, enclosing the action arrow or glyph.

---

## 6. Accessibility & Touch Standards (`ui-ux-pro-max`)

- **Minimum Touch Targets**: All interactive buttons, icon buttons, and form inputs on mobile screens MUST maintain a minimum bounding box of **`44 x 44px`** with an **`8px`** minimum separation gap.
- **Contrast Ratios**: Body text (`$color-text-secondary`) must strictly maintain a **4.5:1** contrast ratio against the parent surface. Headings (`$color-text-primary`) must achieve **7:1** contrast.
- **Visual Styles Catalog**: Supports all 84 style presets from `ui-ux-pro-max` (Minimalist Clean, Industrial Brutalist, Cyberpunk HUD, Neumorphic Soft, Swiss Editorial, Glassmorphism, Luxury Editorial).

---

## 7. Reusable Component Catalog (`designs/design-system.pen`)

| Component | Node ID / Symbol | Description & Variants |
|---|---|---|
| **`Button`** | `comp-button` | Primary, Secondary, Destructive, Ghost. Variants: Default, Hover, Disabled. Features Island CTA structure. |
| **`InputField`** | `comp-input-field` | Label, placeholder text, icon slot, helper text. States: Default, Focused, Error. |
| **`Card`** | `comp-card` | Double-bezel enclosure: Outer shell (`padding: 6`, `radius: 24`), inner core (`radius: 18`, `$color-surface-1`). |
| **`NavBar`** | `comp-nav-bar` | Top navigation bar with logo slot, title, and action buttons. |
| **`TabBar`** | `comp-tab-bar` | Bottom mobile navigation bar (5 icon items with active highlight, min `44px` height). |
| **`InteractionBadge`**| `comp-action-badge` | Pill chip used on flow connectors (`🏷️ [TAP]`, `🏷️ [TYPE]`, `🏷️ [SWIPE]`). |

