# Design Agent Skills Catalog (`SKILLS.md`)

This repository integrates 44 workspace-installed and ecosystem agent skills purpose-built for product design, design intelligence, UX planning, and native Pen Dev (`pen.dev`) canvas manipulation.

---

## 1. The 10 Dedicated Pen Dev Canvas Skills

| Skill | Trigger / Command | Purpose | Core Deliverable |
|---|---|---|---|
| **`pen-dev`** | `/pen-dev` | Core Pen Dev engine, flexbox layout rules, and `.pen` schema. | Canvas foundations & MCP execution |
| **`pen-ui-design`** | `/pen-ui-design` | High-fidelity UI screen generation with dynamic sizing (`fill_container`). | Production UI screens in `designs/app.pen` |
| **`pen-user-flows`** | `/pen-user-flows` | Screen-by-screen flow mapping with vector connector arrows and action gesture badges. | Connected multi-screen user flows |
| **`pen-wireframing`** | `/pen-wireframing` | Low-fidelity structural wireframing using the `Blueprint Technical` archetype. | Blueprint wireframe artboards |
| **`pen-prototyping`** | `/pen-prototyping` | Interactive state modeling (hover, active, sheet overlay, modal, error toast). | Interactive state variants & transitions |
| **`pen-design-system`** | `/pen-design-system`| Theme variable management (`colors`, `numbers`, `radii`) and reusable components. | Token sheet & reusable component symbols |
| **`pen-story-components`**| `/pen-story-components`| Converts agile user story acceptance criteria into isolated atomic components. | Reusable component symbols with slots |
| **`pen-screen-by-screen`**| `/pen-screen-by-screen`| Progressive delta-cloning (`Copy()`) from entry trigger to goal state. | Step-by-step interaction sequence |
| **`pen-branding`** | `/pen-branding` | Brand identity creation: color harmonies, typography scales, logo marks, moodboards. | Brand identity guidelines on canvas |
| **`pen-illustrations`** | `/pen-illustrations` | Vector illustration and SVG artwork generation via `Generate({ type: "svg" })`. | Bespoke SVG illustrations & decorative art |

---

## 2. Design Intelligence & Agency Visual Standards

| Skill | Trigger / Command | Purpose |
|---|---|---|
| **`ui-ux-pro-max`** | `/ui-ux-pro-max` | Query searchable local database of 84 styles, 192 color palettes, 74 font pairings, 98 UX guidelines, and touch targets (min 44×44px). |
| **`high-end-visual-design`** | `/high-end-visual-design`| Enforce $150k+ agency standards: double-bezel card enclosures, nested island CTA buttons, and strict anti-slop rules banning generic AI cliches. |
| **`brandkit`** | `/brandkit` | Studio-grade brand guidelines boards, logo construction grids, and sparse editorial typography systems. |
| **`impeccable`** | `/impeccable` | Comprehensive design critique, audit, and refinement: `/critique`, `/audit`, `/bolder`, `/quieter`, `/harden`, `/polish`. |
| **`design-taste-frontend`** | `/design-taste-frontend` | Anti-slop frontend taste engine ensuring layouts never look templated. |
| **`minimalist-ui`** | `/minimalist-ui` | Clean editorial aesthetic: warm monochrome palette, typographic contrast, and flat bento layouts. |
| **`industrial-brutalist-ui`** | `/industrial-brutalist-ui`| Raw mechanical aesthetic: Swiss typographic print, declassified blueprints, and high information density. |

---

## 3. Product Discovery, Architecture & UX Skills

| Skill | Trigger / Command | Purpose |
|---|---|---|
| **`product-function`** | `/product-function` | Model features as minimal transformation functions $y = f(x)$ with 10x Scope-Stripping before design. |
| **`information-architecture-review`** | `/information-architecture`, `/ia` | Generate sitemaps, screen hierarchies, navigation trees, and sequence diagrams. |
| **`ooux`** | `/ooux` | Extract real-world entities, core content vs metadata, object cards, and relationship matrices. |
| **`product-description`** | `/product-description` | Map outside-in behavioral UX state charts across 5 interaction phases (Entry, Resting, Active, Feedback, Exit). |
| **`grill-me` / `grilling`** | `/grill-me`, `/grill` | Interactively stress-test requirements, user stories, and ambiguous edge cases before drawing frames. |
| **`grill-with-docs`** | `/grill-with-docs` | Validate design decisions against platform Human Interface Guidelines (HIG, Material 3, Web). |
| **`research`** | `/research` | Investigate competitor UX patterns, design archetypes, and industry benchmarks. |
| **`domain-modeling`** | `/domain-modeling` | Model data entities and state transitions before laying out data tables and complex forms. |
| **`prototype`** | `/prototype` | Build rapid throwaway visual experiments to sanity-check interaction models before building design system components. |

---

## 4. UX Copy, Microcopy & Communication Skills

| Skill | Trigger / Command | Purpose |
|---|---|---|
| **`ux-copy`** | `/ux-copy` | Write and review intentional UX microcopy, error messages, empty states, and high-conversion CTAs. |
| **`unslop`** | `/unslop` | Polish copy and documentation, aggressively eliminating AI tells and corporate filler. |
| **`writing-beats`** | `/writing-beats` | Sequence complex user flow narratives beat-by-beat, screen-by-screen. |
| **`writing-fragments`** | `/writing-fragments` | Brainstorm raw microcopy fragments, button labels, and onboarding tips. |
| **`writing-shape`** | `/writing-shape` | Shape raw copy fragments into cohesive UI strings, modals, and design specs. |
| **`writing-for-agents`** | `/writing-for-agents` | Author and refine design skill instructions, `AGENTS.md`, and prompt guides. |
| **`i-have-adhd`** | `/i-have-adhd` | Action-first, numbered, ADHD-optimised output style with immediate next steps. |

---

## 5. Agent Lifecycle, Governance & Utility Skills

| Skill | Trigger / Command | Purpose |
|---|---|---|
| **`init-project`** | `/init-project` | Bootstrap a new design project: interview brand style, configure viewports, and scaffold `.pen` files. |
| **`to-questionnaire`** | `/to-questionnaire` | Convert unaligned UI decisions into clear questionnaires for stakeholders. |
| **`handoff` / `claude-handoff`**| `/handoff` | Compact in-flight canvas state and open design tasks into a restartable handoff note. |
| **`ask-matt` / `wayfinder`** | `/ask-matt`, `/wayfinder`| Route to the right design skill or flow when unsure where to begin. |
| **`wait-what`** | `/wait-what` | Pause and repitch when a visual concept, palette, or layout proposal didn't land. |
| **`loop-me`** | `/loop-me` | Interactive loop grilling on workflow specs. |
| **`pr` & `retro`** | `/pr`, `/retro` | Automate GitHub PR opening with design preview image attachments, and run design retrospectives. |
