---
design-system: "sqrDAO"
version: "1.1.0"
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
typography:
  display:
    fontFamily: "'Instrument Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontWeight: 900
  heading:
    fontFamily: "'Instrument Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontWeight: 700
  body:
    fontFamily: "'Instrument Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontWeight: 400
    fontSize: "1rem"
    lineHeight: 1.5
  label:
    fontFamily: "ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, monospace"
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

## Typography

### Font Families

| Role | Stack | Usage |
|------|-------|-------|
| Primary | `'Instrument Sans', -apple-system, BlinkMacSystemFont, Segoe UI, sans-serif` | All headings, body, UI |
| Label | `ui-monospace, SFMono-Regular, "SF Mono", Menlo, Consolas, monospace` | Section labels (uppercase) |
| Code | `'JetBrains Mono', 'SF Mono', Menlo, Monaco, Consolas, monospace` | Code blocks |

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
| fs50 | 3.125rem | 3.375rem | 500 | Title component (desktop) |
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
| Font weight | 900 | 900 |
| Color | #FFFFFF | #FFFFFF |

**Section Label** (above title):

| Property | Value |
|----------|-------|
| Font size | 0.85rem |
| Font weight | 600 |
| Letter spacing | 0.1em |
| Text transform | uppercase |
| Color | #FFC700 |
| Opacity | 0.85 |
| Font family | Monospace label stack |

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
| Use `neutrals[300]` for secondary text | Use pure white for secondary text (too high contrast) |
| Add `outline: 2px solid #FFC700` on `:focus-visible` | Remove outlines without providing an alternative |
| Use `theme.spacing(n)` for all spacing | Hard-code arbitrary pixel values |
| Wrap MUI overrides in `create-components.ts` | Override MUI styles inline in component `sx` props |
| Respect `prefers-reduced-motion` | Run animation unconditionally |
| Use semantic HTML elements | Nest clickable `<div>` elements without ARIA roles |
