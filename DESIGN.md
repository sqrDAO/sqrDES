# sqrDAO Design Reference

Central design guideline for the sqrDAO ecosystem. A single source of truth for design options, choices, and parameters. For brand assets and logo usage, see [BRAND-KIT.md](BRAND-KIT.md) and [sqrdao.com/brand-kit](https://www.sqrdao.com/brand-kit).

---

## Brand Alignment

Implementation tokens map to the official brand kit as follows:

| Brand Kit | Implementation Token | Value |
|-----------|----------------------|-------|
| Background | `primary.main` | `#0A0A0A` |
| Accent / Gold | `accent.main` | `#FFC700` |
| Primary Text | `primary.contrastText` | `#FFFFFF` |
| Secondary Text | `neutrals[300]` | `#B3B3B3` |
| Card Surface | `primary[200]` | `#1A1A1A` |
| Border | `primary[100]` | `#222222` |

---

## Table of Contents
1. [Brand Alignment](#brand-alignment)
2. [Colors](#colors)
3. [Typography](#typography)
4. [Layout & Spacing](#layout--spacing)
5. [Breakpoints](#breakpoints)
6. [Component Styles](#component-styles)
7. [Animations & Transitions](#animations--transitions)
8. [CSS Custom Properties](#css-custom-properties)
9. [Implementation Notes](#implementation-notes)

---

## Colors

### Primary Palette (from `src/theme/colors.ts`)

| Token | Value | Usage |
|-------|-------|-------|
| `primary.main` | `#0A0A0A` | Page background, navbar background |
| `primary.light` | `#181818` | Card/section backgrounds |
| `primary.dark` | `#000000` | Deep black |
| `primary.contrastText` | `#FFFFFF` | Primary text, headings |
| `primary[100]` | `#222222` | Borders, dividers |
| `primary[200]` | `#1A1A1A` | Card backgrounds |

### Accent

| Token | Value | Usage |
|-------|-------|-------|
| `accent.main` | `#FFC700` | Buttons, links, highlights, hover states |
| `accent.contrastText` | `#181818` | Button text on accent background |

### Accent Hover (Note: Inconsistency Exists)

| Location | Value | Notes |
|----------|-------|-------|
| MUI Button `containedPrimary` | `#e6b800` | Darker yellow |
| CustomButton component | `#FFD740` | Lighter yellow — different from theme |

### Neutrals (grays)

| Token | Value | Usage |
|-------|-------|-------|
| `neutrals[50]` | `#FFFFFF` | White |
| `neutrals[100]` | `#F5F5F5` | Light gray |
| `neutrals[200]` | `#E0E0E0` | — |
| `neutrals[300]` | `#B3B3B3` | Secondary text, body text |
| `neutrals[400]` | `#B3B3B3` | — |
| `neutrals[500]` | `#B3B3B3` | — |
| `neutrals[600]` | `#222222` | Borders, scrollbar thumb |
| `neutrals[700]` | `#181818` | Card background |
| `neutrals[800]` | `#1A1A1A` | Section background |
| `neutrals[900]` | `#0A0A0A` | — |
| `neutrals[1000]` | `#000000` | Black |

### Semantic Colors (status, alerts)

| Semantic | 50 | 300 | 500 | 700 | 900 |
|----------|-----|-----|-----|-----|-----|
| **Info** | `#E6F3FF` | `#66B7FF` | `#0087FF` | `#0066CC` | `#004499` |
| **Success** | `#E6FFE6` | `#66FF66` | `#00FF00` | `#00CC00` | `#009900` |
| **Warning** | `#FFFFE6` | `#FFFF66` | `#FFFF00` | `#CCCC00` | `#999900` |
| **Error** | `#FFE6E6` | `#FF6666` | `#FF0000` | `#CC0000` | `#990000` |

### Portfolio Status Badges

| Status | Color |
|--------|-------|
| Active | `rgba(76, 175, 80, 0.95)` (green) |
| Exited | `rgba(33, 150, 243, 0.95)` (blue) |
| Written Off | `rgba(244, 67, 54, 0.95)` (red) |

### Shades

| Token | Value |
|-------|-------|
| `shades.white` | `#FFFFFF` |
| `shades.black` | `#000000` |

---

## Typography

### Font Families

| Name | Stack | Usage |
|------|-------|-------|
| **Primary** | `'Instrument Sans', -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Oxygen, Ubuntu, Cantarell, Fira Sans, Droid Sans, Helvetica Neue, sans-serif` | All headings, body, UI |
| **Code/Monospace** | `JetBrains Mono, SF Mono, Menlo, Monaco, Consolas, Liberation Mono, Courier New, monospace` | Code blocks |
| **Title Label** | `ui-monospace, SFMono-Regular, "SF Mono", Menlo, Consolas, monospace` | Section labels (uppercase) |

### Font Loading

- **Instrument Sans**: Loaded via `next/font/google` in `layout.tsx` (weights: 400, 500, 600, 700; display: swap)
- **CSS Variable**: `--font-instrument-sans` applied to `<html>`
- **Inter**: Fallback `@font-face` in `create-components.ts` (weights 300, 400, 500, 700, 900) — may be legacy

### Typography Variants (MUI)

Font size variants: `fs8`, `fs10`, `fs12`, `fs14`, `fs16`, `fs18`, `fs20`, `fs22`, `fs24`, `fs28`, `fs32`, `fs36`, `fs40`, `fs48`, `fs50`, `fs60`, `fs64`, `fs80`, `fs100`

| Variant | Font Size | Line Height | Font Weight |
|---------|-----------|-------------|-------------|
| fs8 | 0.5rem (8px) | 1.5 | 400 |
| fs12 | 0.75rem | 1.5 | 400 |
| fs14 | 0.875rem | 1.5 | 400 |
| fs16 | 1rem | 1.5 | 400 |
| fs18 | 1.125rem | 1.8 | 500 |
| fs20 | 1.25rem | 1.8 | 500 |
| fs24 | 1.5rem | 1.5 | 400 |
| fs28 | 1.75rem | 1.2 | 500 |
| fs32 | 2rem | 1.2 | 500 |
| fs36 | 2.25rem | 1.2 | 500 |
| fs48 | 3rem | 1.2 | 500 |
| fs50 | 3.125rem (50px) | 3.375rem | 500 |
| fs64 | 4rem | 1.25 | 500 |
| fs80 | 5rem | normal | 500 |
| fs100 | 6.25rem | normal | 500 |
| code | 0.875rem | 1.5 | 400 |
| codeLarge | 1rem | 1.5 | 400 |

### Title Component (Section Titles)

| Property | Mobile (xs) | Desktop (md+) |
|----------|-------------|---------------|
| Font size | 1.875rem (30px) | 3.125rem (50px) |
| Font weight | 900 | 900 |
| Color | #FFFFFF | #FFFFFF |

### Section Label (above title)

| Property | Value |
|----------|-------|
| Font size | 0.85rem |
| Font weight | 600 |
| Letter spacing | 0.1em |
| Text transform | uppercase |
| Color | #FFC700 |
| Opacity | 0.85 |
| Font family | monospace stack |

---

## Layout & Spacing

### Container

| Property | Value |
|----------|-------|
| Max width | 1440px |
| Margin | 0 auto |
| Padding horizontal (xs) | 1rem (16px) |
| Padding horizontal (md+) | 4.875rem (78px) |

### Header / Navbar

| Property | Value |
|----------|-------|
| Max width | 1280px |
| Background | #0A0A0A |
| Section scroll offset | 100px (for active section detection) |
| Breakpoint for mobile menu | `theme.breakpoints.down('lg')` (HeaderSp) |
| Breakpoint for mobile layout | `theme.breakpoints.down('md')` (useMobileQuery) |

### Footer

| Property | Value |
|----------|-------|
| Max width | 1200px |

### Page Containers (legal/utility pages)

| Page | Max Width |
|------|-----------|
| Investment Thesis | 900px |
| Privacy Policy | 800px |
| Terms and Conditions | 800px |
| Sub-processors | 800px |
| Security | 800px |

### Content Widths (section-specific)

| Context | Max Width |
|---------|-----------|
| Section subtitle/description | 800px (typical) |
| Portfolio filter subtitle | 900px |
| News subtitle | 900px |
| Mv subtitle | 700px |
| Membership intro | 800px |
| Membership testimonial | 700px |

### Grid Spacing

- Standard between grid items: `spacing={4}` (32px)
- Swiper/carousel navigation arrows: `maxWidth: 350px` (centered)

---

## Breakpoints

MUI default breakpoints (no custom overrides in theme):

| Key | Min Width | Usage |
|-----|-----------|-------|
| xs | 0px | Mobile |
| sm | 600px | — |
| md | 900px | Tablet; container padding, mobile detection |
| lg | 1200px | Desktop; header layout (hamburger vs nav) |
| xl | 1536px | — |

---

## Component Styles

### Buttons

#### Primary (CustomButton, MUI containedPrimary)

| Property | Value |
|----------|-------|
| Background | #FFC700 |
| Text color | #181818 |
| Border radius | 8px |
| Font weight | 700 |
| Font family | Instrument Sans |
| Font size | 1rem |
| Padding | 1rem vertical, 1.375rem horizontal |
| Text transform | none |
| Box shadow | none |
| Transition | all 0.3s ease / 0.2s ease-in-out |

**Hover**: Background `#e6b800` (MUI) or `#FFD740` (CustomButton); subtle box shadow on MUI

#### Secondary / Outlined (MUI outlinedPrimary)

| Property | Value |
|----------|-------|
| Border | 1px solid #FFC700 |
| Text | #FFC700 |
| Background | transparent |
| Hover background | #FFC700 |
| Hover text | #181818 |

#### Button sizes (MUI)

| Size | Padding | Font Size |
|------|---------|-----------|
| Large | 1 × 1.5 spacing | 16px |
| Medium | 0.85 × 1.5 spacing | 14px |
| Small | 0.85 × 1.5 spacing | 12px |

### Cards

| Property | Value |
|----------|-------|
| Background | #1A1A1A / neutrals[700] |
| Border | 1px solid #222222 |
| Border radius | 16px |
| Box shadow | none |
| Hover transform | translateY(-8px) |
| Hover box shadow | 0 2px 8px 0 rgba(255, 199, 0, 0.10) |
| Hover border | #FFC700 (some cards) |
| Transition | transform 0.3s ease-in-out |

### Card Accent Stripe (CSS class: `.card-accent-stripe`)

| Property | Value |
|----------|-------|
| Height | 3px |
| Gradient | linear-gradient(90deg, #ffc700 0%, rgba(255,199,0,0.6) 50%, rgba(255,199,0,0) 100%) |
| Transition | transform 0.6s cubic-bezier(0.25, 1, 0.5, 1) |
| Behavior | scaleX(0) → scaleX(1) on reveal/hover |

### Chips (MuiChip)

| Property | Value |
|----------|-------|
| Background | neutrals[800] |
| Border | 1px solid neutrals[700] |
| Border radius | — |
| Font weight | 500 |

### Tabs (MuiTab)

| Property | Value |
|----------|-------|
| Padding | 12px |
| Font size | 14px |
| Font weight | 500 |
| Letter spacing | 0.03em |
| Text transform | initial |
| Inactive color | neutrals[500] |
| Selected color | primary.contrastText |

### Tooltips (MuiTooltip)

| Property | Value |
|----------|-------|
| Font size | 14px |
| Background | neutrals[800] |
| Padding | theme.spacing(3) |
| Border radius | 8px |
| Border | 1px solid neutrals[700] |
| Box shadow | 0 4px 20px rgba(0,0,0,0.3) |

### Scrollbar (body)

| Property | Value |
|----------|-------|
| Width | 7px |
| Track | primary.dark |
| Thumb | neutrals[600] |
| Thumb hover | neutrals[500] |
| Border radius | 16px |

### Dividers (MuiDivider)

| Property | Value |
|----------|-------|
| Background | neutrals[600] |
| Opacity | 1 |

---

## Animations & Transitions

### AOS (Animate On Scroll)

| Option | Value |
|--------|-------|
| offset | 200px |
| duration | 600ms |
| easing | ease-in-sine |
| delay | 100ms |

### CSS Keyframes (globals.css)

| Name | Purpose |
|------|---------|
| fadeDown | Opacity 0→1, translateY(-20px)→0 |
| fadeZoomIn | Opacity 0→1, scale(0.95)→1 |
| kenBurns | Scale 1→1.08→1, slight translate |
| gradientShift | Background position 0%→100%→0% |
| pulse | Opacity 0.4→0.7→0.4, scale 1→1.05→1 |
| float | translateY/X gentle drift |
| shimmer | Gold gradient sweep |

### Animation Classes

| Class | Animation |
|-------|-----------|
| .animate-fade-down | fadeDown 0.6s ease-out |
| .animate-fade-zoom-in | fadeZoomIn 0.8s ease-out |
| .animate-ken-burns | kenBurns 25s ease-in-out infinite |
| .animate-gradient-shift | gradientShift 8s ease infinite |
| .animate-pulse | pulse 4s ease-in-out infinite |
| .animate-float | float 6s ease-in-out infinite |
| .animate-shimmer | shimmer 3s ease-in-out infinite |

### Scroll Reveal

| Property | Value |
|----------|-------|
| Default | opacity 0, translateY(20px) |
| Visible | opacity 1, translateY(0) |
| Transition | opacity 0.4s, transform 0.4s |
| Reduced motion | instant, no animation |

### Hover Transitions

| Element | Transition |
|---------|------------|
| Buttons | all 0.2s–0.3s ease-in-out |
| Cards | transform 0.3s ease-in-out |
| Links | color on hover |

---

## CSS Custom Properties

| Variable | Value |
|----------|-------|
| --font-main | var(--font-instrument-sans), system fallback |
| --font-instrument-sans | From next/font (Instrument Sans) |
| --reveal-delay | Used by .scroll-reveal for staggered entrances |

---

## Viewport

| Property | Value |
|----------|-------|
| width | device-width |
| initialScale | 1 |
| maximumScale | 5 |

---

## Implementation Notes

- **Theme system**: MUI `createTheme` with custom palette, typography, and components (`src/theme/`).
- **Spacing**: MUI default spacing (8px base); use `theme.spacing(n)`.
- **Reduced motion**: `prefers-reduced-motion: reduce` respected in scroll-reveal and card accent stripe.
- **Font loading**: Instrument Sans via `next/font`; CSS variable applied to html.
- **Tailwind**: Not used; styling is MUI `sx`, `styled`, and globals.css.

---

## File Locations

File paths below are app-specific and may vary per project. Adapt as needed for your codebase.

| Concern | File(s) |
|---------|---------|
| Color tokens | `src/theme/colors.ts` |
| Palette creation | `src/theme/create-palette.ts` |
| Typography | `src/theme/create-typography.ts` |
| MUI component overrides | `src/theme/create-components.ts` |
| Theme entry | `src/theme/index.ts` |
| Global CSS, animations | `src/app/globals.css` |
| Font setup | `src/app/layout.tsx` |
| Container | `src/components/commons/Container.tsx` |
| Title | `src/components/commons/Title.tsx` |
| CustomButton | `src/components/commons/CustomButton.tsx` |
| AOS config | `src/components/ThemeWrapper.tsx` |
