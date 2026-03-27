# YouAI Design System — "Precision Claw"

A dark-first, high-contrast interface with electric orange accents, sharp geometry, and monospace typography. Designed to feel technical and precise — like a tool built by engineers, for engineers.

---

## Color Palette

### Primary — "The Claw"
| Token | Value | Usage |
|-------|-------|-------|
| `primary.main` | `#FF6820` | Buttons, borders, highlights, interactive elements |
| `primary.light` | `#FF8F54` | Hover states, gradients |
| `primary.dark` | `#CC5210` | Active/pressed states |

### Secondary — "Data Stream"
| Token | Value | Usage |
|-------|-------|-------|
| `secondary.main` | `#00C4FF` | Secondary actions, state indicators, stepper gradients |
| `secondary.light` | `#40D4FF` | Hover |
| `secondary.dark` | `#0099CC` | Active |

### Backgrounds (Dark Mode — Primary)
| Token | Value | Usage |
|-------|-------|-------|
| `background.default` | `#08090D` | Canvas / page background |
| `background.paper` | `#0E1520` | Surfaces, cards, dialogs |
| Elevation 1 | `#141D2B` | Slightly raised surfaces |
| Elevation 2 | `#1C2535` | Modals, popovers |

### Backgrounds (Light Mode — Secondary)
| Token | Value | Usage |
|-------|-------|-------|
| `background.default` | `#F5F1EB` | Canvas |
| `background.paper` | `#FFFFFF` | Surfaces |

### Text
| Token | Value |
|-------|-------|
| Primary | `#E8EDF5` |
| Secondary | `rgba(160, 175, 200, 0.75)` |
| Disabled | `rgba(120, 140, 165, 0.4)` |

### Status Colors
| State | Value |
|-------|-------|
| Success | `#22c55e` |
| Error | `#f97373` |
| Warning | `#eab308` |
| Info | `#00C4FF` |

---

## Typography

Three fonts work in concert:

| Font | Role | Usage |
|------|------|-------|
| **Chakra Petch** | Display / Headings | Page titles, hero text, section headers |
| **IBM Plex Sans** | Body | Paragraphs, descriptions, labels |
| **JetBrains Mono** | UI Chrome | Buttons, chips, tabs, captions, input labels |

### Type Scale
| Variant | Size | Weight | Notes |
|---------|------|--------|-------|
| `h1` | 2.5–4.25rem | 700 | Uppercase, `letter-spacing: -0.02em` |
| `h2` | 1.75–2.5rem | 700 | `letter-spacing: -0.01em` |
| `h3` | 1.5–2rem | 600 | |
| `h4` | 1.5rem | 600 | |
| `h5` | 1.25rem | 500 | |
| `h6` | 1.1rem | 500 | |
| `body1` | 1rem | 400 | `line-height: 1.6` |
| `body2` | 0.9rem | 400 | Secondary color, `line-height: 1.5` |
| `caption` | 0.7rem | — | JetBrains Mono, uppercase, `letter-spacing: 0.12em` |
| `button` | 0.85rem | — | JetBrains Mono, uppercase, `letter-spacing: 0.08em` |

---

## Spacing

Base unit: **8px** (MUI `theme.spacing(1) = 8px`)

| Name | Value |
|------|-------|
| XS | 4px |
| SM | 8px |
| MD | 16px |
| LG | 24px |
| XL | 32px |
| 2XL | 48px |

---

## Shape & Borders

**Sharp geometry** — no rounded corners.

| Token | Value |
|-------|-------|
| Border radius (small) | `4px` |
| Border radius (medium) | `6px` |
| Border radius (large) | `8px` |
| Border radius (circle) | `50%` |

### Border Colors
| State | Value |
|-------|-------|
| Default | `rgba(255, 104, 32, 0.15)` |
| Subtle | `rgba(255, 104, 32, 0.25)` |
| Hover | `rgba(255, 104, 32, 0.40)` |
| Focus | `#FF6820` |

---

## Shadows & Glows

Prefer **border + glow effects** over drop shadows.

| Token | Value |
|-------|-------|
| Subtle | `0 1px 0 rgba(255, 104, 32, 0.10)` |
| Focus ring | `0 0 0 2px rgba(255, 104, 32, 0.25)` |
| Card hover | `4px 0 20px rgba(255, 104, 32, 0.12)` |
| Glow | `0 0 20px rgba(255, 104, 32, 0.35)` |

---

## Component Patterns

### Buttons
- Font: JetBrains Mono, uppercase, `letter-spacing: 0.08em`
- Border radius: 4px
- **Contained**: Orange fill, glowing `box-shadow` on hover
- **Outlined**: Transparent fill, orange `1px` border, light background on hover
- **Text**: No border, orange text, subtle background on hover

### Cards
- Background: `background.paper`
- Border: `1px solid` (default opacity), left accent `2px solid primary`
- Border radius: 6px
- Hover: enhanced border opacity + left glow (`4px 0 20px rgba(255,104,32,0.12)`)
- No elevation shadow — border-focused

### Dialogs / Modals
- Background: Elevation 2 (`#1C2535`)
- Border: subtle 1px orange-tinted border
- Border radius: 8px

### Text Fields & Inputs
- Font: JetBrains Mono
- Border radius: 4px
- Focus: orange border + `0 0 0 2px rgba(255,104,32,0.25)` glow
- Label: secondary text color → orange on focus

### Chips
- Background: `alpha(primary, 0.12)`
- Text: orange
- Font: JetBrains Mono, 0.75rem
- Filled variant: orange background, white text

### Tabs
- Font: JetBrains Mono, uppercase, `letter-spacing: 0.1em`, 0.75rem
- Active indicator: 2px height, orange

### Stepper (Wizard)
- Connector: gradient from orange (`#FF6820`) to cyan (`#00C4FF`)
- Inactive steps: circular icon with border
- Active/completed: gradient fill

### Scrollbar
- Track: `background.paper`
- Thumb: `primary.main` (orange)

---

## Motion & Animation

Transitions: `all 0.2s ease` (fast) / `all 0.3s ease` (normal)
Always respect `prefers-reduced-motion`.

| Animation | Description |
|-----------|-------------|
| **Glitch** | 2–3px pixel-shift on hover for interactive elements |
| **Glow Pulse** | Radiating `box-shadow` from 0 → 4px spread |
| **Scanline** | Vertical movement for hero/background sections |
| **Fade In Up** | Entry animation: 24px translate + opacity (page loads) |

---

## Texture & Background

A **dot-grid overlay** (24px spacing, orange at 4% opacity) sits over the page background. This creates a subtle technical grid texture — the "OpenClaw" aesthetic. Do not overlay this on cards or surfaces; use it only on the page canvas.

---

## Responsive Breakpoints

| Name | Min Width |
|------|-----------|
| xs | 0px |
| sm | 600px |
| md | 960px |
| lg | 1280px |
| xl | 1920px |

Mobile: use `MobileStepper` for wizard navigation. Cards collapse to single-column below `sm`.

---

## Design Principles

1. **Dark-first** — the dark theme is primary; light mode is secondary.
2. **Border over shadow** — use colored borders and glows instead of drop shadows.
3. **Monospace for UI chrome** — JetBrains Mono on all interactive labels (buttons, tabs, chips, captions). Prose and descriptions use IBM Plex Sans.
4. **Electric orange as the single dominant accent** — do not introduce new accent colors. Secondary cyan (`#00C4FF`) is reserved for gradients and state indicators.
5. **Sharp geometry** — max 8px border radius. No pill buttons or fully rounded cards.
6. **Uppercase interactive text** — buttons, tabs, and captions are all-caps.
7. **Accessible focus states** — every interactive element must have a visible orange focus ring.
8. **Reduced motion respect** — wrap all keyframe animations in `@media (prefers-reduced-motion: no-preference)`.
