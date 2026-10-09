# Architectural & Design Decisions Memory (`MEMORY.md`)

This file records durable design decisions, brand guidelines, and canvas architectural patterns established during the project lifecycle.

---

## 1. Project Inception & Onboarding

- **Template**: Spawned from `cesarchavezcal/pen-dev-designer`.
- **Primary Tooling**: Pen Dev (`pen.dev`), `pencil` MCP server, `pen` CLI.
- **Design Philosophy**: Outside-In Product Design. Structure and behavioral state flows precede visual decorations. Token-first and component-driven canvas architecture.

---

## 2. Active Design System Conventions

*Record established brand choices, color palettes, and typographic hierarchies here once onboarded via `/init-project`.*

- **Brand Archetype**: `Modern Minimal / High-Contrast Editorial`
- **Primary Palette**:
  - Canvas: `#090D16` (Deep Slate)
  - Primary Accent: `#6366F1` (Electric Indigo)
  - Secondary Accent: `#00E5FF` (Vibrant Cyan)
  - Surfaces: Surface-1 `#111827`, Surface-2 `#1F2937`, Border `#283548`
- **Typography Scale**: Display & Body: `Inter` (Google Fonts), Monospace: `JetBrains Mono`
- **Target Viewports**:
  - Mobile: `393 x 852` (iOS standard baseline)
  - Desktop: `1440 x 900` (Web standard baseline)

---

## 3. Log of Key Design Decisions

| Date | Decision | Context & Rationale | Canvas / File Impact |
|---|---|---|---|
| 2026-10-09 | Initial Template Setup | Initialized clean Pen Dev Design Agent template repository | `designs/app.pen`, `designs/design-system.pen` |
| 2026-10-09 | ADR-001: Commercial UI Template Architecture | Configured CraftUI Studio for portfolio showcase and marketplace digital asset sales. Established shared token foundation in `designs/design-system.pen` and multi-viewport templates in `designs/app.pen`. | `GLOSSARY.md`, `MEMORY.md`, `docs/design-system/DESIGN.md`, `feature_list.json` |
