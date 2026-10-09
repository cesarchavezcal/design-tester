## 🎨 Design Deliverables Overview

<!-- High-level 2-3 sentence summary of what screens, flows, or components this PR introduces -->

---

## 📸 Canvas Screen Previews

| Screen / Flow Name | Viewport | Preview Image |
|---|---|---|
| `Screen 1: [Name]` | Mobile (`393x852`) | `![Preview](docs/previews/screen-1.png)` |
| `Screen 2: [Name]` | Mobile (`393x852`) | `![Preview](docs/previews/screen-2.png)` |

---

## 🔄 User Flow & Interaction Sequence

<!-- Describe the interaction trigger, gesture badges, and state transitions -->
- **Entry Trigger**: `[e.g. Tap on 'Cart' button]`
- **Interaction Steps**:
  1. `[Screen 1]` ➔ Action: `🏷️ [TAP] "Apply Promo"`
  2. `[Screen 2]` ➔ Action: `🏷️ [TYPE] "SAVE20"`
  3. `[Screen 3]` ➔ State: Success Toast & Updated Total
- **Decision Branches**: `[e.g. Valid coupon vs Expired coupon]`

---

## 🧩 Reusable Components & Tokens Modified

- [ ] New component symbols added to `designs/design-system.pen`
- [ ] Theme variables updated in `docs/design-system/DESIGN.md`
- [ ] `progress.md` updated with completion evidence

---

## ⚡ Canvas Health Checklist

- [ ] Ran `./init.sh` cleanly with zero errors
- [ ] Document root contains ONLY screen frames and reusable components
- [ ] All frames use dynamic sizing (`fill_container`, `fit_content`) without layout clipping
- [ ] Removed all temporary `placeholder: true` flags
