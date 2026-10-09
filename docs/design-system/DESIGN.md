# Design System Specification (`DESIGN.md`)

This document defines the baseline design tokens, theme variables, and component guidelines for the project. When initializing a new project via `/init-project`, the onboarding interview populates these values to match your chosen brand identity.

---

## 1. Brand Atmosphere & Archetype

- **Selected Archetype**: `Modern Minimal / High-Contrast Editorial`
- **Design Personality**: Premium, sleek, high-contrast, commercial-ready typography and metrics.
- **Canvas Surface Baseline**: Deep Slate Dark Mode (`#090D16`) with high-contrast surfaces.

---

## 2. Color Palette & Semantic Roles

All colors defined here map 1:1 to theme variables in `designs/design-system.pen` (`$color-...`).

### Core Palette:
- **`$color-primary`**: `#6366F1` (Electric Indigo: primary action CTA, active highlights)
- **`$color-primary-hover`**: `#4F46E5` (Interactive hover/pressed state)
- **`$color-primary-muted`**: `rgba(99, 102, 241, 0.15)` (Subtle selection highlight, tag fill)
- **`$color-secondary`**: `#00E5FF` (Vibrant Cyan: secondary metrics, badges, charts)

### Surfaces & Backgrounds:
- **`$color-canvas`**: `#090D16` (Infinite canvas and screen background)
- **`$color-surface-1`**: `#111827` (Elevated cards, list containers, modals)
- **`$color-surface-2`**: `#1F2937` (Nested cards, inputs, pressed states)
- **`$color-border`**: `#283548` (Hairline container strokes and dividers)

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

## 5. Reusable Component Catalog (`designs/design-system.pen`)

| Component | Node ID / Symbol | Description & Variants |
|---|---|---|
| **`Button`** | `comp-button` | Primary, Secondary, Destructive, Ghost. Variants: Default, Hover, Disabled. |
| **`InputField`** | `comp-input-field` | Label, placeholder text, icon slot, helper text. States: Default, Focused, Error. |
| **`Card`** | `comp-card` | Container frame with `$color-surface-1`, padding `$spacing-md`, corner radius `$radius-lg`. |
| **`NavBar`** | `comp-nav-bar` | Top navigation bar with logo slot, title, and action buttons. |
| **`TabBar`** | `comp-tab-bar` | Bottom mobile navigation bar (5 icon items with active highlight). |
| **`InteractionBadge`**| `comp-action-badge` | Pill chip used on flow connectors (`🏷️ [TAP]`, `🏷️ [TYPE]`, `🏷️ [SWIPE]`). |
