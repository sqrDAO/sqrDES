---
design-system: "YouAI"
version: "1.1.0"
colors:
  background: "#08090D"
  surface: "#0E1520"
  elevation-1: "#141D2B"
  elevation-2: "#1C2535"
  text-primary: "#E8EDF5"
  text-secondary: "rgba(160, 175, 200, 0.75)"
  text-disabled: "rgba(120, 140, 165, 0.4)"
  accent: "#FF6820"
  accent-light: "#FF8F54"
  accent-dark: "#CC5210"
  secondary: "#00C4FF"
  secondary-light: "#40D4FF"
  secondary-dark: "#0099CC"
  semantic-success: "#22c55e"
  semantic-error: "#f97373"
  semantic-warning: "#eab308"
  semantic-info: "#00C4FF"
  light-background: "#F5F1EB"
  light-surface: "#FFFFFF"
typography:
  display:
    fontFamily: "'Chakra Petch', sans-serif"
    fontWeight: 700
    textTransform: "uppercase"
    letterSpacing: "-0.02em"
  body:
    fontFamily: "'IBM Plex Sans', system-ui, sans-serif"
    fontWeight: 400
    fontSize: "1rem"
    lineHeight: 1.6
  ui:
    fontFamily: "'JetBrains Mono', 'SF Mono', Menlo, monospace"
    fontWeight: 400
    textTransform: "uppercase"
    letterSpacing: "0.08em"
    fontSize: "0.85rem"
spacing:
  base: "8px"
  xs: "4px"
  sm: "8px"
  md: "16px"
  lg: "24px"
  xl: "32px"
  xxl: "48px"
breakpoints:
  xs: "0px"
  sm: "600px"
  md: "960px"
  lg: "1280px"
  xl: "1920px"
components:
  button:
    radius: "4px"
    fontFamily: "'JetBrains Mono', monospace"
    fontWeight: 400
    textTransform: "uppercase"
    letterSpacing: "0.08em"
    fontSize: "0.85rem"
    transition: "all 0.2s ease"
  card:
    radius: "6px"
    background: "#0E1520"
    border: "1px solid rgba(255, 104, 32, 0.15)"
    hoverBorder: "rgba(255, 104, 32, 0.40)"
    hoverShadow: "4px 0 20px rgba(255, 104, 32, 0.12)"
  input:
    radius: "4px"
    fontFamily: "'JetBrains Mono', monospace"
    focusBorder: "#FF6820"
    focusGlow: "0 0 0 2px rgba(255, 104, 32, 0.25)"
  focus:
    outline: "2px solid #FF6820"
    outlineOffset: "2px"
    glow: "0 0 0 2px rgba(255, 104, 32, 0.25)"
---

# YouAI Design System — "Precision Claw"

A dark-first, high-contrast interface with electric orange accents, sharp geometry, and monospace typography. Designed to feel technical and precise — like a tool built by engineers, for engineers.

---

## Overview

**Aesthetic identity**: "Precision Claw" — electric orange as the single dominant accent against near-black surfaces. Everything feels intentional, engineered, and direct. No decorative curves, no soft pastels.

**Tech stack**: MUI v5, custom theme provider, IBM Plex Sans + Chakra Petch + JetBrains Mono.

**Getting started**:
1. Load fonts: Chakra Petch (display), IBM Plex Sans (body), JetBrains Mono (UI) from Google Fonts
2. Apply the dot-grid background texture on page canvas only (see Texture section)
3. Wrap the app in the YouAI MUI theme

| Concern | File |
|---------|------|
| Color tokens | `src/theme/colors.ts` |
| MUI theme | `src/theme/index.ts` |
| Component overrides | `src/theme/components.ts` |
| Typography | `src/theme/typography.ts` |
| Global styles | `src/styles/globals.css` |
| Dot-grid texture | `src/styles/texture.css` |

---

## Colors

### Primary — "The Claw"

| Token | Value | Usage |
|-------|-------|-------|
| `primary.main` | `#FF6820` | Buttons, borders, highlights, interactive elements |
| `primary.light` | `#FF8F54` | Hover states, gradients |
| `primary.dark` | `#CC5210` | Active/pressed states |

### Secondary — "Data Stream"

| Token | Value | Usage |
|-------|-------|-------|
| `secondary.main` | `#00C4FF` | Secondary actions, stepper gradients, state indicators |
| `secondary.light` | `#40D4FF` | Hover |
| `secondary.dark` | `#0099CC` | Active |

> Secondary cyan is reserved for gradients and state indicators only. Do not use it as a primary action color.

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
| `background.paper` | `#FFFFFF` | Surfaces, cards |

> Light mode surfaces use the same component tokens — rely on the MUI theme switch rather than hard-coding background colors.

### Text

| Token | Value | Usage |
|-------|-------|-------|
| Primary | `#E8EDF5` | Headings, body text |
| Secondary | `rgba(160, 175, 200, 0.75)` | Captions, subtitles |
| Disabled | `rgba(120, 140, 165, 0.4)` | Disabled labels, placeholder |

### Status Colors

| State | Value | WCAG on `#08090D` |
|-------|-------|-------------------|
| Success | `#22c55e` | AA ✓ |
| Error | `#f97373` | AA ✓ |
| Warning | `#eab308` | AA ✓ |
| Info | `#00C4FF` | AA ✓ |

### WCAG Contrast Ratios (dark mode, on `#08090D`)

| Color | Hex | Ratio | Grade |
|-------|-----|-------|-------|
| Primary text | `#E8EDF5` | ~18:1 | AAA |
| Accent orange | `#FF6820` | ~5.8:1 | AA |
| Secondary cyan | `#00C4FF` | ~7.1:1 | AA |
| Secondary text | `rgba(160,175,200,0.75)` | ~5.4:1 | AA |

---

## Typography

Three fonts work in concert — each with a clear, non-overlapping role:

| Font | Role | Usage |
|------|------|-------|
| **Chakra Petch** | Display / Headings | Page titles, hero text, section headers |
| **IBM Plex Sans** | Body | Paragraphs, descriptions, card content |
| **JetBrains Mono** | UI Chrome | Buttons, chips, tabs, captions, input labels |

### Type Scale

| Variant | Size | Weight | Font | Notes |
|---------|------|--------|------|-------|
| `h1` | 2.5–4.25rem | 700 | Chakra Petch | Uppercase, `letter-spacing: -0.02em` |
| `h2` | 1.75–2.5rem | 700 | Chakra Petch | `letter-spacing: -0.01em` |
| `h3` | 1.5–2rem | 600 | Chakra Petch | — |
| `h4` | 1.5rem | 600 | Chakra Petch | — |
| `h5` | 1.25rem | 500 | Chakra Petch | — |
| `h6` | 1.1rem | 500 | Chakra Petch | — |
| `body1` | 1rem | 400 | IBM Plex Sans | `line-height: 1.6` |
| `body2` | 0.9rem | 400 | IBM Plex Sans | Secondary color, `line-height: 1.5` |
| `caption` | 0.7rem | 400 | JetBrains Mono | Uppercase, `letter-spacing: 0.12em` |
| `button` | 0.85rem | 400 | JetBrains Mono | Uppercase, `letter-spacing: 0.08em` |

---

## Layout

### Container

| Property | Value |
|----------|-------|
| Max width | 1280px (typical) |
| Horizontal padding | 24px |

### Responsive Breakpoints

| Name | Min width | Primary usage |
|------|-----------|---------------|
| xs | 0px | Mobile base |
| sm | 600px | — |
| md | 960px | Tablet layout switch |
| lg | 1280px | Desktop |
| xl | 1920px | Wide desktop |

Mobile behavior: `MobileStepper` for wizard navigation; cards collapse to single-column below `sm`.

---

## Elevation & Depth

YouAI uses **border + glow** instead of drop shadows. Elevation is communicated through border opacity and glow intensity.

| Level | Background | Border | Shadow/Glow |
|-------|-----------|--------|-------------|
| Canvas | `#08090D` | none | dot-grid texture |
| Surface (paper) | `#0E1520` | `rgba(255, 104, 32, 0.15)` | none |
| Elevation 1 | `#141D2B` | `rgba(255, 104, 32, 0.25)` | none |
| Elevation 2 (modal) | `#1C2535` | `rgba(255, 104, 32, 0.25)` | `0 0 20px rgba(255, 104, 32, 0.35)` |
| Focus | — | `#FF6820` | `0 0 0 2px rgba(255, 104, 32, 0.25)` |
| Card hover | — | `rgba(255, 104, 32, 0.40)` | `4px 0 20px rgba(255, 104, 32, 0.12)` |

---

## Shapes

**Sharp geometry** — the maximum radius is 8px. No pill shapes, no fully rounded cards.

| Element | Border Radius |
|---------|---------------|
| Buttons | 4px |
| Cards | 6px |
| Dialogs | 8px |
| Text fields | 4px |
| Chips | 4px |
| Circular avatars/icons | 50% |

---

## Components

### Buttons

- Font: JetBrains Mono, uppercase, `letter-spacing: 0.08em`, `font-size: 0.85rem`
- Border radius: 4px

| Variant | Default | Hover |
|---------|---------|-------|
| **Contained** | Orange fill (`#FF6820`), dark text | Glowing `box-shadow: 0 0 20px rgba(255,104,32,0.35)` |
| **Outlined** | Transparent, `1px solid #FF6820`, orange text | Light orange background `rgba(255,104,32,0.08)` |
| **Text** | No border, orange text | Subtle background `rgba(255,104,32,0.06)` |

#### Button States

| State | Visual |
|-------|--------|
| Hover | See variant table above |
| Focus | `outline: 2px solid #FF6820; outline-offset: 2px` + glow |
| Disabled | Opacity 0.38; `rgba(255,104,32,0.12)` bg for contained; cursor not-allowed |
| Loading | Replace label with 16px spinner in `#FF6820`; `pointer-events: none` |

---

### Cards

- Background: `background.paper` (`#0E1520`)
- Border: `1px solid rgba(255, 104, 32, 0.15)` + left accent `2px solid #FF6820`
- Border radius: 6px
- No drop shadow — border-focused design

| State | Visual |
|-------|--------|
| Default | Subtle orange-tinted border |
| Hover | Border opacity increases to 0.40; left glow `4px 0 20px rgba(255,104,32,0.12)` |
| Focus (keyboard) | `outline: 2px solid #FF6820; outline-offset: 2px` |
| Loading | Skeleton with `shimmer` keyframe in orange at 4% opacity |
| Error | Left accent switches to `#f97373` |

---

### Text Fields & Inputs

- Font: JetBrains Mono
- Border radius: 4px
- Background: `rgba(255, 104, 32, 0.04)` (very subtle orange tint)
- Border: `1px solid rgba(255, 104, 32, 0.15)`

| State | Visual |
|-------|--------|
| Default | Subtle orange-tinted border |
| Hover | Border `rgba(255, 104, 32, 0.30)` |
| Focus | Border `#FF6820` + glow `0 0 0 2px rgba(255,104,32,0.25)` |
| Error | Border `#f97373` + glow `0 0 0 2px rgba(247,115,115,0.25)` |
| Disabled | Opacity 0.38; cursor not-allowed |
| Success | Border `#22c55e` |

Form label color: secondary text at rest → `#FF6820` on focus.

#### Form Patterns (Additional Inputs)

**Checkbox / Radio**: Orange fill when checked (`#FF6820`), 4px border radius for checkbox. Use `aria-checked` and `role="checkbox"` for custom implementations.

**Select / Dropdown**: Same border style as text fields; dropdown panel background `#141D2B`; option hover `rgba(255,104,32,0.08)`.

**File Input**: Hidden `<input type="file">`; custom trigger button using `.btn-outlined`; show selected filename in JetBrains Mono caption below.

---

### Dialogs / Modals

- Background: Elevation 2 (`#1C2535`)
- Border: `1px solid rgba(255, 104, 32, 0.25)`
- Border radius: 8px
- Overlay: `rgba(0, 0, 0, 0.85)` with `backdrop-filter: blur(8px)`

**ARIA pattern**:
```html
<div role="dialog" aria-modal="true" aria-labelledby="modal-title">
  <h2 id="modal-title">...</h2>
  <!-- content -->
  <button aria-label="Close dialog">×</button>
</div>
```
- On open: move focus to the first focusable element inside the modal
- Trap focus: cycle Tab/Shift+Tab within the modal only
- Escape key: close the modal and return focus to the trigger element

---

### Chips

- Background: `rgba(255, 104, 32, 0.12)`
- Text: `#FF6820`
- Font: JetBrains Mono, 0.75rem
- Filled variant: `#FF6820` background, `#FFFFFF` text

---

### Tabs

- Font: JetBrains Mono, uppercase, `letter-spacing: 0.1em`, `font-size: 0.75rem`
- Active indicator: 2px height, `#FF6820`
- Focus: `outline: 2px solid #FF6820; outline-offset: 2px`

---

### Stepper (Wizard)

- Connector: gradient from `#FF6820` to `#00C4FF`
- Inactive: circular icon with orange-tinted border
- Active / completed: gradient fill
- Mobile: use `MobileStepper` component; progress bar in orange

---

### Pagination

- Item: JetBrains Mono, 0.85rem
- Active page: `#FF6820` background, dark text
- Hover: `rgba(255,104,32,0.12)` background
- Focus: `outline: 2px solid #FF6820; outline-offset: 2px`

---

### Scrollbar

| Property | Value |
|----------|-------|
| Track | `background.paper` (`#0E1520`) |
| Thumb | `#FF6820` |
| Thumb hover | `#FF8F54` |
| Width | 6px |
| Border radius | 3px |

---

## Texture & Background

A **dot-grid overlay** creates the "OpenClaw" aesthetic on the page canvas:

```css
.page-canvas::before {
  content: '';
  position: fixed;
  inset: 0;
  background-image: radial-gradient(
    circle,
    rgba(255, 104, 32, 0.04) 1px,
    transparent 1px
  );
  background-size: 24px 24px;
  pointer-events: none;
  z-index: 0;
}
```

Apply only to the page canvas (`background.default`). Do not use on cards, surfaces, or modals.

---

## Motion & Animation

Always respect `prefers-reduced-motion: reduce` — wrap all keyframe animations in `@media (prefers-reduced-motion: no-preference)`.

| Timing | Value | Usage |
|--------|-------|-------|
| Fast | 0.2s ease | Hover state changes, focus rings |
| Normal | 0.3s ease | Card transforms, modal open/close |

| Animation | Description |
|-----------|-------------|
| **Glitch** | 2–3px pixel-shift on hover for interactive elements |
| **Glow Pulse** | Radiating `box-shadow` from 0 → 4px spread, `1.5s ease-in-out infinite` |
| **Scanline** | Vertical movement for hero/background sections |
| **Fade In Up** | Entry: 24px translateY + opacity, 0.4s ease-out |

---

## Accessibility

- **Focus ring**: `outline: 2px solid #FF6820; outline-offset: 2px` on all interactive elements via `:focus-visible`
- **Focus glow** (enhanced): add `box-shadow: 0 0 0 2px rgba(255, 104, 32, 0.25)` alongside the outline for extra visibility
- **Reduced motion**: Wrap all keyframe animations in `@media (prefers-reduced-motion: no-preference)` — not the `reduce` query
- **Keyboard navigation**: All interactive components must be reachable via Tab; custom components need `tabindex="0"` and `role` attributes
- **Icon-only buttons**: Add `aria-label` describing the action
- **Color alone**: Pair status colors with icons or text labels (do not rely on orange/green/red alone)
- **Modal focus trap**: Implement Tab cycling within open modals; return focus to trigger on close
- **Vietnamese glyph range**: JetBrains Mono and IBM Plex Sans cover Latin Extended; verify Chakra Petch has sufficient diacritic coverage if localizing

---

## Design Principles

1. **Dark-first** — dark theme is primary; light mode is secondary and uses the same token structure
2. **Border over shadow** — colored borders and glows communicate depth; drop shadows are avoided
3. **Monospace for UI chrome** — JetBrains Mono on all interactive labels (buttons, tabs, chips, captions); prose uses IBM Plex Sans
4. **Single dominant accent** — electric orange (`#FF6820`) only; cyan (`#00C4FF`) is reserved for gradients and state indicators
5. **Sharp geometry** — max 8px radius; no pill buttons, no fully rounded cards
6. **Uppercase interactive text** — buttons, tabs, and captions are all-caps
7. **Accessible focus states** — every interactive element must have a visible orange focus ring
8. **Reduced motion respect** — wrap all keyframe animations in `@media (prefers-reduced-motion: no-preference)`

---

## Do's and Don'ts

| Do | Don't |
|----|-------|
| Use JetBrains Mono for all button labels, tabs, and captions | Use IBM Plex Sans or Chakra Petch for UI chrome |
| Use `rgba(255,104,32,0.XX)` for subtle orange-tinted borders | Use neutral gray borders — every border should reference the accent |
| Keep border radius ≤ 8px | Use pill shapes or fully rounded corners |
| Use cyan (`#00C4FF`) only for gradients and state indicators | Use cyan as a second primary action color |
| Wrap all keyframe animations in `prefers-reduced-motion: no-preference` | Apply animations unconditionally |
| Use Elevation 2 (`#1C2535`) for modals | Stack modals on canvas-level background |
| Apply dot-grid only to the page canvas | Apply dot-grid to cards or surfaces |
