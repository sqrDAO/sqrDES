---
design-system: "sqrDAO"
version: "1.2.1"
colors:
  background: "#0A0A0A"
  surface: "#1A1A1A"
  surface-alt: "#181818"
  border: "#222222"
  text-primary: "#FFFFFF"
  text-secondary: "#B3B3B3"
  accent: "#FFC700"
  accent-text: "#181818"
  accent-hover: "#e6b800"
  black: "#000000"
  white: "#FFFFFF"
  semantic-info: "#0087FF"
  semantic-success: "#00CC00"
  semantic-warning: "#CCCC00"
  semantic-error: "#CC0000"
colors-light:
  # Warm light mode — from the W3EZ × SIZ × IFC (Light EN) deck.
  # Neutrals are warm (off-white / taupe), NOT the cool grays of dark mode.
  background: "#FAF9F6"
  surface: "#FFFFFF"
  surface-alt: "#E4E0D6"
  border: "#E4E0D6"
  text-primary: "#181818"
  text-secondary: "#5C574C"
  accent: "#FFC700"
  accent-text: "#7A5E00"
  accent-hover: "#E0B400"
  accent-tint: "#FFEDAD"
secondary-accent:
  main: "#3F7A6E"
  dark: "#2F665B"
  tint: "#E9CF6A"
typography:
  display:
    fontFamily: "'Instrument Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontWeight: 700
  heading:
    fontFamily: "'Instrument Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontWeight: 700
  body:
    fontFamily: "'Instrument Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontWeight: 400
    fontSize: "1rem"
    lineHeight: 1.5
  label:
    fontFamily: "'IBM Plex Mono', ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, monospace"
    fontWeight: 600
    fontSize: "0.85rem"
    letterSpacing: "0.1em"
    textTransform: "uppercase"
  mono:
    fontFamily: "'JetBrains Mono', 'SF Mono', Menlo, Monaco, Consolas, monospace"
    fontWeight: 400
    fontSize: "0.875rem"
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
  md: "900px"
  lg: "1200px"
  xl: "1536px"
components:
  button:
    radius: "8px"
    paddingX: "1.375rem"
    paddingY: "1rem"
    fontWeight: 700
    fontSize: "1rem"
    transition: "all 0.2s ease-in-out"
  card:
    radius: "16px"
    background: "#1A1A1A"
    border: "1px solid #222222"
    hoverShadow: "0 2px 8px 0 rgba(255, 199, 0, 0.10)"
    hoverTransform: "translateY(-8px)"
    transition: "transform 0.3s ease-in-out"
  tooltip:
    radius: "8px"
    background: "#1A1A1A"
    border: "1px solid #222222"
    shadow: "0 4px 20px rgba(0,0,0,0.3)"
  chip:
    background: "#0A0A0A"
    border: "1px solid #1A1A1A"
  focus:
    outline: "2px solid #FFC700"
    outlineOffset: "2px"
---

# sqrDAO Design Reference

Central design guideline for the sqrDAO ecosystem. A single source of truth for design options, choices, and parameters. For brand assets and logo usage, see [BRAND-KIT.md](BRAND-KIT.md).

---

## Overview

**Design philosophy**: Dark-first, minimal chrome, gold accent. The sqrDAO visual identity uses near-black surfaces with a single gold accent (`#FFC700`) to guide attention. Everything else recedes.

**Modes**: The system ships two modes that share one gold accent. **Dark** (canonical) uses cool near-black surfaces and cool grays. **Light** — introduced by the W3EZ × SIZ × IFC deck for print, proposals, and light-surface contexts — uses *warm* neutrals (off-white `#FAF9F6`, taupe body text `#5C574C`) rather than a cool white/gray inversion. In light mode the gold is never used for text; a darkened gold (`#7A5E00`) carries labels and links so they stay legible. See [Light Mode](#light-mode).

**Tech stack**: Next.js app router, MUI v5, globals.css for keyframes and utilities. No Tailwind.

**Getting started**:
1. Load Instrument Sans via `next/font/google` (weights 400, 500, 600, 700; `display: swap`)
2. Apply the CSS variable to `<html>`: `className={instrumentSans.variable}`
3. Wrap the app in the MUI theme from `src/theme/index.ts`
4. Import `src/app/globals.css` for keyframe animations and scroll-reveal utilities

| Concern | File |
|---------|------|
| Color tokens | `src/theme/colors.ts` |
| Palette | `src/theme/create-palette.ts` |
| Typography | `src/theme/create-typography.ts` |
| MUI overrides | `src/theme/create-components.ts` |
| Theme entry | `src/theme/index.ts` |
| Global CSS | `src/app/globals.css` |
| Font setup | `src/app/layout.tsx` |

---

## Colors

### Brand Alignment

Implementation tokens map to the official brand kit:

| Brand Kit | Token | Value |
|-----------|-------|-------|
| Background | `primary.main` | `#0A0A0A` |
| Accent / Gold | `accent.main` | `#FFC700` |
| Primary Text | `primary.contrastText` | `#FFFFFF` |
| Secondary Text | `neutrals[300]` | `#B3B3B3` |
| Card Surface | `primary[200]` | `#1A1A1A` |
| Border | `primary[100]` | `#222222` |

### Primary Palette

| Token | Value | Usage |
|-------|-------|-------|
| `primary.main` | `#0A0A0A` | Page background, navbar |
| `primary.light` | `#181818` | Card/section backgrounds |
| `primary.dark` | `#000000` | Deep black |
| `primary.contrastText` | `#FFFFFF` | Primary text, headings |
| `primary[100]` | `#222222` | Borders, dividers |
| `primary[200]` | `#1A1A1A` | Card backgrounds |

### Accent

| Token | Value | Usage |
|-------|-------|-------|
| `accent.main` | `#FFC700` | Buttons, links, highlights |
| `accent.contrastText` | `#181818` | Button label on accent bg |
| Accent hover | `#e6b800` | Canonical hover state — use this everywhere |

> **Resolved**: The codebase previously had two hover values (`#e6b800` in MUI theme, `#FFD740` in CustomButton). `#e6b800` is the canonical value — update CustomButton to match.

### Neutrals

| Token | Value | Semantic Role |
|-------|-------|---------------|
| `neutrals[50]` | `#FFFFFF` | White |
| `neutrals[100]` | `#F5F5F5` | Light gray |
| `neutrals[200]` | `#E0E0E0` | Subtle gray |
| `neutrals[300]` | `#B3B3B3` | Secondary text, body copy |
| `neutrals[400]` | `#B3B3B3` | Placeholder / inactive |
| `neutrals[500]` | `#B3B3B3` | Disabled state text |
| `neutrals[600]` | `#222222` | Borders, scrollbar thumb |
| `neutrals[700]` | `#181818` | Card background |
| `neutrals[800]` | `#1A1A1A` | Section background |
| `neutrals[900]` | `#0A0A0A` | Near-black |
| `neutrals[1000]` | `#000000` | Pure black |

> Note: [300]–[500] share the same hex value (`#B3B3B3`) but carry distinct semantic roles. They are intentionally identical until a future token refinement pass.

### Semantic Colors

| Semantic | 50 | 300 | 500 (canonical) | 700 | 900 |
|----------|----|-----|-----------------|-----|-----|
| Info | `#E6F3FF` | `#66B7FF` | `#0087FF` | `#0066CC` | `#004499` |
| Success | `#E6FFE6` | `#66FF66` | `#00CC00` | `#009900` | `#006600` |
| Warning | `#FFFFE6` | `#FFFF66` | `#CCCC00` | `#999900` | `#666600` |
| Error | `#FFE6E6` | `#FF6666` | `#CC0000` | `#990000` | `#660000` |

> Canonical semantic value is the 700 shade (not 500) — it meets WCAG AA against `#0A0A0A` background.

### Status Badge Colors

| Status | Color |
|--------|-------|
| Active | `rgba(76, 175, 80, 0.95)` |
| Exited | `rgba(33, 150, 243, 0.95)` |
| Written Off | `rgba(244, 67, 54, 0.95)` |

### WCAG Contrast Ratios (on `#0A0A0A` background)

| Color | Hex | Ratio | Grade |
|-------|-----|-------|-------|
| Primary text | `#FFFFFF` | 19.5:1 | AAA |
| Accent | `#FFC700` | 12.6:1 | AAA |
| Secondary text | `#B3B3B3` | 7.4:1 | AA |
| Border | `#222222` | 1.5:1 | Decorative only |

---

## Light Mode

The **W3EZ × SIZ × IFC** proposal deck (Light EN) is the reference implementation of sqrDAO's light mode. It is a *warm* light theme, not a mechanical inversion of dark mode: the background is a warm off-white and body text is a warm taupe, giving printed and light-surface material an editorial, paper-like feel while the gold accent stays constant across both modes.

### Light Palette

| Role | Token | Value | Usage |
|------|-------|-------|-------|
| Background | `light.background` | `#FAF9F6` | Page background (warm off-white) |
| Surface | `light.surface` | `#FFFFFF` | Cards, elevated panels |
| Surface / Border | `light.surface-alt` | `#E4E0D6` | Card borders, table cells, dividers, alt fills |
| Primary text | `light.text-primary` | `#181818` | Headings, emphasis, data |
| Secondary text | `light.text-secondary` | `#5C574C` | Body copy, captions (warm taupe) |
| Accent | `light.accent` | `#FFC700` | Markers, rules, fills, active states |
| Accent text | `light.accent-text` | `#7A5E00` | Section labels, links, gold text on light |
| Accent hover | `light.accent-hover` | `#E0B400` | Hover on gold fills |
| Accent tint | `light.accent-tint` | `#FFEDAD` | Subtle gold wash / highlight |

### Dark → Light Token Mapping

| Concept | Dark | Light |
|---------|------|-------|
| Background | `#0A0A0A` | `#FAF9F6` |
| Card surface | `#1A1A1A` | `#FFFFFF` |
| Border / alt surface | `#222222` | `#E4E0D6` |
| Primary text | `#FFFFFF` | `#181818` |
| Secondary text | `#B3B3B3` | `#5C574C` |
| Accent (fills, markers) | `#FFC700` | `#FFC700` |
| Accent **text / labels** | `#FFC700` | `#7A5E00` |
| Accent hover | `#e6b800` | `#E0B400` |

> **Key rule**: In dark mode gold (`#FFC700`) doubles as both fill *and* text color. In light mode gold has only ~1.5:1 contrast on the background, so it is **fill/decoration only** — all gold *text* (section labels, links, table headers) uses the darkened gold `#7A5E00`.

### Light Mode WCAG Contrast Ratios

| Foreground | Hex | On `#FAF9F6` | On `#E4E0D6` | Grade |
|-----------|-----|--------------|--------------|-------|
| Primary text | `#181818` | 16.9:1 | 13.5:1 | AAA |
| Secondary text | `#5C574C` | 6.8:1 | 5.5:1 | AA |
| Accent text | `#7A5E00` | 5.8:1 | 4.7:1 | AA |
| Secondary accent | `#3F7A6E` | 4.7:1 | 3.8:1 | AA (≥18px / large) |
| Gold (fill) | `#FFC700` | 1.5:1 | 1.2:1 | Decorative / large fills only |

---

## Secondary Accent (Teal)

Alongside the primary gold, the deck introduces a **teal** secondary accent for supporting emphasis, corridors/flows, and to differentiate a second data series without competing with gold. Use sparingly — gold remains the primary accent in both modes.

| Token | Value | Usage |
|-------|-------|-------|
| `secondary-accent.main` | `#3F7A6E` | Non-text emphasis only: flow/corridor lines, markers, chart series, large text (≥18px). Fails AA for small text on `#E4E0D6` (3.8:1) |
| `secondary-accent.dark` | `#2F665B` | Teal **text** — all small/supporting teal labels use this (6.3:1 on `#FAF9F6`, 5.0:1 on `#E4E0D6`) |
| `secondary-accent.tint` | `#E9CF6A` | Muted *gold* tint — intentionally warm, not teal-derived. Pairs with teal in charts/fills as the warm half of the warm/cool duo |

> Gold and teal read as a warm/cool pair. Keep gold dominant (≈80/20); reach for teal only when a second accent is genuinely needed.

---

## Typography

### Font Families

| Role | Stack | Usage |
|------|-------|-------|
| Primary | `'Instrument Sans', -apple-system, BlinkMacSystemFont, Segoe UI, sans-serif` | All headings, body, UI |
| Label | `'IBM Plex Mono', ui-monospace, SFMono-Regular, "SF Mono", Menlo, Consolas, monospace` | Section labels (uppercase), table headers, metadata |
| Code | `'JetBrains Mono', 'SF Mono', Menlo, Monaco, Consolas, monospace` | Code blocks |

> **IBM Plex Mono** is the canonical label/metadata typeface (used throughout the W3EZ × SIZ × IFC deck for uppercase eyebrow labels and table headers). It renders as the darkened gold `#7A5E00` in light mode and `#FFC700` in dark mode. JetBrains Mono remains the typeface for actual code.

**Font loading**: Instrument Sans is loaded via `next/font/google` in `layout.tsx` (weights 400, 500, 600, 700; `display: swap`). The CSS variable `--font-instrument-sans` is applied to `<html>`.

> Remove the Inter `@font-face` fallback in `create-components.ts` — it is legacy and no longer needed.

### Type Scale (MUI variants)

| Variant | Size | Line Height | Weight | Usage |
|---------|------|-------------|--------|-------|
| fs8 | 0.5rem | 1.5 | 400 | — |
| fs12 | 0.75rem | 1.5 | 400 | Captions |
| fs14 | 0.875rem | 1.5 | 400 | Small body, tabs |
| fs16 | 1rem | 1.5 | 400 | Body text |
| fs18 | 1.125rem | 1.8 | 500 | Lead text |
| fs20 | 1.25rem | 1.8 | 500 | — |
| fs24 | 1.5rem | 1.5 | 400 | — |
| fs28 | 1.75rem | 1.2 | 500 | Subsection headings |
| fs32 | 2rem | 1.2 | 500 | Section headings |
| fs36 | 2.25rem | 1.2 | 500 | — |
| fs48 | 3rem | 1.2 | 500 | — |
| fs50 | 3.125rem | 3.375rem | 500 | Title component size (desktop); Title overrides weight to 700 |
| fs64 | 4rem | 1.25 | 500 | — |
| fs80 | 5rem | normal | 500 | Hero headings |
| fs100 | 6.25rem | normal | 500 | Display/hero |
| code | 0.875rem | 1.5 | 400 | Inline code |
| codeLarge | 1rem | 1.5 | 400 | Code blocks |

### Key Components

**Title** (section headings):

| Property | Mobile | Desktop |
|----------|--------|---------|
| Font size | 1.875rem | 3.125rem |
| Font weight | 700 | 700 |
| Color | #FFFFFF | #FFFFFF |

> **700 is the maximum.** Instrument Sans is a variable font with a weight axis of 400-700; there is no 800 or 900. Requesting a heavier weight makes the browser either clamp to 700 or synthesise a faux-bold, which distorts the letterforms. Never specify a weight above 700 anywhere in this system.

**Section Label** (above title):

| Property | Value |
|----------|-------|
| Font size | 0.85rem |
| Font weight | 600 |
| Letter spacing | 0.1em |
| Text transform | uppercase |
| Color (dark) | #FFC700 |
| Color (light) | #7A5E00 |
| Opacity | 0.85 |
| Font family | IBM Plex Mono label stack |

---

## Layout

### Container

| Property | Value |
|----------|-------|
| Max width | 1440px |
| Margin | 0 auto |
| Padding (mobile) | 1rem |
| Padding (desktop) | 4.875rem |

### Breakpoints (MUI defaults)

| Key | Min width | Primary usage |
|-----|-----------|---------------|
| xs | 0px | Mobile base |
| sm | 600px | — |
| md | 900px | Tablet; padding switch, mobile detection |
| lg | 1200px | Desktop; hamburger vs nav |
| xl | 1536px | — |

### Page Width Constraints

| Page | Max width |
|------|-----------|
| Header/Navbar inner | 1280px |
| Footer inner | 1200px |
| Investment Thesis | 900px |
| Privacy / Terms / Security | 800px |
| Section subtitle | 800px (typical) |
| Portfolio subtitle | 900px |

### Grid

- Grid item spacing: `spacing={4}` (32px)
- Carousel navigation max width: 350px

---

## Elevation & Depth

sqrDAO uses a **flat-first** approach. Most base states have `boxShadow: none`. Elevation is introduced only on hover or for floating elements.

| Level | Value | Usage |
|-------|-------|-------|
| Flat (default) | `none` | All cards, buttons, chips at rest |
| Raised (hover) | `0 2px 8px 0 rgba(255, 199, 0, 0.10)` | Card hover — gold-tinted lift |
| Float | `0 4px 20px rgba(0,0,0,0.3)` | Tooltips, dropdowns |

**Z-index scale** (MUI defaults apply):

| Layer | z-index |
|-------|---------|
| Base content | 0 |
| Sticky navbar | 1100 |
| Drawer | 1200 |
| Modal | 1300 |
| Tooltip | 1500 |

---

## Shapes

sqrDAO uses **moderate rounding** — sharp enough to feel technical, soft enough to feel approachable.

| Element | Border Radius |
|---------|---------------|
| Buttons | 8px |
| Cards | 16px |
| Chips | 4px (MUI default) |
| Tooltips | 8px |
| Inputs | 8px |
| Scrollbar thumb | 16px |
| Modals | 16px |

---

## Components

### Buttons

#### Primary

| Property | Value |
|----------|-------|
| Background | `#FFC700` |
| Text | `#181818` |
| Border radius | 8px |
| Font weight | 700 |
| Font size | 1rem |
| Padding | 1rem / 1.375rem |
| Text transform | none |
| Box shadow | none |
| Transition | all 0.2s ease-in-out |
| **Hover bg** | **`#e6b800`** |
| Hover shadow | 0 4px 12px rgba(255,199,0,0.2) |

#### Secondary / Outlined

| Property | Value |
|----------|-------|
| Border | 1px solid `#FFC700` |
| Text | `#FFC700` |
| Background | transparent |
| Hover background | `#FFC700` |
| Hover text | `#181818` |

#### Button States

| State | Visual |
|-------|--------|
| Hover | Bg darkens to `#e6b800`; subtle shadow |
| Focus | `outline: 2px solid #FFC700; outline-offset: 2px` |
| Disabled | Opacity 0.38; cursor not-allowed; no hover effect |
| Loading | Replace label with spinner (16px); pointer-events none |

#### Button Sizes (MUI)

| Size | Padding | Font size |
|------|---------|-----------|
| Large | 1 × 1.5 spacing | 16px |
| Medium | 0.85 × 1.5 spacing | 14px |
| Small | 0.85 × 1.5 spacing | 12px |

---

### Cards

| Property | Value |
|----------|-------|
| Background | `#1A1A1A` |
| Border | 1px solid `#222222` |
| Border radius | 16px |
| Box shadow | none |
| **Hover transform** | `translateY(-8px)` |
| **Hover shadow** | `0 2px 8px 0 rgba(255, 199, 0, 0.10)` |
| **Hover border** | `#FFC700` (where applicable) |
| Transition | transform 0.3s ease-in-out |

#### Card Accent Stripe (`.card-accent-stripe`)

| Property | Value |
|----------|-------|
| Height | 3px |
| Gradient | `linear-gradient(90deg, #ffc700 0%, rgba(255,199,0,0.6) 50%, rgba(255,199,0,0) 100%)` |
| Behavior | `scaleX(0) → scaleX(1)` on reveal or hover |
| Transition | transform 0.6s cubic-bezier(0.25, 1, 0.5, 1) |

#### Card States

| State | Visual |
|-------|--------|
| Default | Flat; no shadow; dark border |
| Hover | translateY(-8px); gold shadow; optional gold border |
| Focus (keyboard) | `outline: 2px solid #FFC700; outline-offset: 2px` |
| Loading | Skeleton shimmer overlay using `shimmer` keyframe |

---

### Chips

| Property | Value |
|----------|-------|
| Background | `neutrals[800]` |
| Border | 1px solid `neutrals[700]` |
| Font weight | 500 |

---

### Tabs

| Property | Value |
|----------|-------|
| Padding | 12px |
| Font size | 14px |
| Font weight | 500 |
| Letter spacing | 0.03em |
| Text transform | initial |
| Inactive color | `neutrals[500]` |
| Active color | `#FFFFFF` |
| Indicator | `#FFC700` |

---

### Tooltips

| Property | Value |
|----------|-------|
| Font size | 14px |
| Background | `neutrals[800]` |
| Padding | `theme.spacing(3)` |
| Border radius | 8px |
| Border | 1px solid `neutrals[700]` |
| Box shadow | `0 4px 20px rgba(0,0,0,0.3)` |

---

### Scrollbar

| Property | Value |
|----------|-------|
| Width | 7px |
| Track | `primary.dark` (`#000000`) |
| Thumb | `neutrals[600]` (`#222222`) |
| Thumb hover | `neutrals[500]` (`#B3B3B3`) |
| Border radius | 16px |

---

### Dividers

| Property | Value |
|----------|-------|
| Color | `neutrals[600]` (`#222222`) |
| Opacity | 1 |

---

### Accessibility

- **Focus ring**: `outline: 2px solid #FFC700; outline-offset: 2px` on all interactive elements via `:focus-visible`
- **Reduced motion**: `prefers-reduced-motion: reduce` disables scroll-reveal animations and card accent stripe transitions
- **Skip link**: Include `<a href="#main-content">Skip to main content</a>` as the first focusable element
- **Semantic HTML**: Use `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>` appropriately; avoid `<div>` soup
- **ARIA**: Add `aria-label` to icon-only buttons; `aria-current="page"` on active nav links
- **Color alone**: Never use color as the only indicator — pair with text label or icon

---

## Animations & Transitions

### AOS (Animate On Scroll)

| Option | Value |
|--------|-------|
| Offset | 200px |
| Duration | 600ms |
| Easing | ease-in-sine |
| Delay | 100ms |

### CSS Keyframes (`globals.css`)

| Name | Effect |
|------|--------|
| fadeDown | opacity 0→1, translateY(-20px→0) |
| fadeZoomIn | opacity 0→1, scale(0.95→1) |
| kenBurns | scale 1→1.08→1, slight translate |
| gradientShift | background-position 0%→100%→0% |
| pulse | opacity 0.4→0.7→0.4, scale 1→1.05→1 |
| float | gentle translateY/X drift |
| shimmer | gold gradient sweep (loading skeleton) |

### Animation Utility Classes

| Class | Animation |
|-------|-----------|
| `.animate-fade-down` | fadeDown 0.6s ease-out |
| `.animate-fade-zoom-in` | fadeZoomIn 0.8s ease-out |
| `.animate-ken-burns` | kenBurns 25s ease-in-out infinite |
| `.animate-gradient-shift` | gradientShift 8s ease infinite |
| `.animate-pulse` | pulse 4s ease-in-out infinite |
| `.animate-float` | float 6s ease-in-out infinite |
| `.animate-shimmer` | shimmer 3s ease-in-out infinite |

### Scroll Reveal

```css
.scroll-reveal {
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.4s ease, transform 0.4s ease;
  transition-delay: var(--reveal-delay, 0ms);
}
.scroll-reveal.is-visible {
  opacity: 1;
  transform: translateY(0);
}
@media (prefers-reduced-motion: reduce) {
  .scroll-reveal { opacity: 1; transform: none; transition: none; }
}
```

---

## CSS Custom Properties

| Variable | Value | Purpose |
|----------|-------|---------|
| `--font-instrument-sans` | (injected by next/font) | Primary font |
| `--font-main` | `var(--font-instrument-sans), system fallback` | Applied to body |
| `--reveal-delay` | Set inline per element | Stagger scroll reveals |

---

## Do's and Don'ts

| Do | Don't |
|----|-------|
| Use `#FFC700` for all primary interactive elements | Use gold for decorative backgrounds or large fills |
| Use `#e6b800` for hover states on gold elements | Mix hover values — pick `#e6b800` everywhere |
| In light mode, use warm neutrals (`#FAF9F6`, `#5C574C`) | Invert dark mode to cool white/gray for light mode |
| In light mode, use `#7A5E00` for gold text and labels | Use `#FFC700` for text on light backgrounds (fails contrast) |
| Keep gold dominant; use teal `#3F7A6E` sparingly | Give teal equal weight to gold or use it for primary CTAs |
| Use `neutrals[300]` for secondary text | Use pure white for secondary text (too high contrast) |
| Add `outline: 2px solid #FFC700` on `:focus-visible` | Remove outlines without providing an alternative |
| Use `theme.spacing(n)` for all spacing | Hard-code arbitrary pixel values |
| Wrap MUI overrides in `create-components.ts` | Override MUI styles inline in component `sx` props |
| Respect `prefers-reduced-motion` | Run animation unconditionally |
| Use semantic HTML elements | Nest clickable `<div>` elements without ARIA roles |
