# Ubiquitous Language & Design Domain Glossary (`GLOSSARY.md`)

This document defines the authoritative vocabulary for the product domain, Pen Dev canvas entities, and design system tokens. All AI agents and designers MUST use these terms consistently across specs, user flows, component names, and canvas frame labels.

---

## 1. Project Domain Definition

- **Project Name**: `CraftUI Studio`
- **Target Platforms**: `Web (1440x900) & Mobile iOS (393x852)`
- **Brand Archetype**: `Modern Minimal / High-Contrast Editorial`
- **Primary Product Mission**: `Create modular, commercial-grade UI templates, component systems, and end-to-end user flows for portfolio showcase and digital asset sales.`

---

## 2. Pen Dev Canvas & Geometry Terminology

| Term | Definition & Rules in Pen Dev |
|---|---|
| **Canvas** | The infinite 2D coordinate space provided by Pen Dev (`.pen`). Coordinates use $x$ increasing right and $y$ increasing downward. |
| **Document Root** | The top-level `document` container. Strictly reserved for screen artboards, flow container frames, and reusable component symbols. Loose shapes/text are forbidden at root. |
| **Screen Frame** | A top-level container frame representing an entire device viewport (e.g. `393x852` for mobile, `1440x900` for desktop). Must have `clip: true`. |
| **Placeholder Frame** | A frame currently being drafted or edited with `placeholder: true`. Must be unset once the frame's content is finalized. |
| **Flexbox Layout** | Primary layout mechanism on frames: `layout: "vertical"` or `"horizontal"`, `gap`, `padding`, `justifyContent`, and `alignItems`. |
| **Dynamic Sizing** | Layout-driven sizing behaviors: `fill_container` (stretches to parent bounds) and `fit_content` (shrinks to fit child content). |
| **Variable / Token** | Dollar-prefixed variable reference (e.g. `$color-primary`, `$spacing-md`) bound to theme definitions in `.pen`. |
| **Reusable Component** | A frame defined with `reusable: true`. Serves as the master symbol for component instances. |
| **Component Instance (`Ref`)** | An instance referencing a reusable component via `type: "ref"`, `ref: "<component_id>"`, with custom overrides in `descendants`. |
| **Slot Frame** | A container frame within a component marked with `slot: [...]` allowing instance callers to inject custom child components. |

---

## 3. UX Flows & Interaction Terminology

| Term | Definition |
|---|---|
| **User Flow** | A sequence of full UI screens representing an end-to-end user journey from entry trigger to goal completion. |
| **Interaction Badge** | A visual pill chip alongside a connector indicating the user gesture (e.g. `🏷️ [TAP]`, `🏷️ [TYPE]`, `🏷️ [SWIPE]`). |
| **Connector Arrow** | Directional vector path connecting a source interactive UI element to the destination state screen. |
| **Decision Branch** | A visual fork representing conditional outcomes (e.g. Valid Input ➔ Success Screen vs. Invalid Input ➔ Error Toast). |
| **State Variant** | A discrete visual state of a component or screen (Resting, Hover, Active, Loading, Disabled, Modal Overlay). |
| **Blueprint Wireframe** | Structural low-fidelity layout drafted using the `Blueprint Technical` archetype before visual polish. |

---

## 4. Design System Token Vocabulary

| Token Category | Naming Convention | Examples |
|---|---|---|
| **Colors** | `$color-[role]-[shade]` | `$color-primary`, `$color-surface-1`, `$color-text-primary`, `$color-danger` |
| **Typography** | `$font-[role]` | `$font-display`, `$font-body`, `$font-mono`, `$font-size-title`, `$font-size-body` |
| **Spacing** | `$spacing-[size]` | `$spacing-xs` (4px), `$spacing-sm` (8px), `$spacing-md` (16px), `$spacing-lg` (24px) |
| **Radii** | `$radius-[size]` | `$radius-sm` (4px), `$radius-md` (8px), `$radius-lg` (16px), `$radius-full` (9999px) |
| **Elevations** | `$elevation-[level]` | `$shadow-sm`, `$shadow-md`, `$shadow-lg` |
