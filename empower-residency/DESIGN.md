---
design-system: "EMpower Founders Residency"
version: "1.2.0"
brand:
  figmaFile: "https://www.figma.com/design/fCGlJuUlZx3Em40ltPUUjv/EMpower-Founders-Residency"
  logoVariants: ["logo-a-horizontal", "logo-a-square", "logo-b-horizontal", "logo-b-square"]
  bannerVariants: ["banner-v1", "banner-v2"]
  motif: "four-point sparkle (mint accent) anchored to the EM lockup"
colors:
  canvas: "#f8f8f8"
  surface: "#ffffff"
  text-primary: "#2f2f2f"
  accent: "#aeffc8"
  accent-dark: "#8ee8b0"
  accent-icon: "#2d6a4f"
  dither-gray: "#e5e5e5"
  border: "rgba(47, 47, 47, 0.1)"
  dark-surface: "#1a1a1a"
  dark-text: "#f0f0f0"
  status-dot: "#4ade80"
  status-glow: "rgba(74, 222, 128, 0.6)"
  cta-hover-shadow: "rgba(174, 255, 200, 0.45)"
  banner-gradient-from: "#aeffc8"
  banner-gradient-to: "#0d2a1f"
typography:
  heading:
    fontFamily: '"Instrument Sans Variable", system-ui, sans-serif'
    fontWeight: 600
    letterSpacing: "-0.03em"
  body:
    fontFamily: '"Instrument Sans Variable", system-ui, sans-serif'
    fontWeight: 400
    fontSize: "1rem"
    lineHeight: 1.6
    fontFeatureSettings: '"ss01" 1, "ss02" 1, "ss03" 1'
  mono:
    fontFamily: '"Roboto Mono", ui-monospace, monospace'
    fontWeight: 500
    fontSize: "0.7rem"
    textTransform: "uppercase"
    letterSpacing: "0.1em"
    opacity: 0.55
spacing:
  container-max: "72rem"
  section-v: "clamp(4rem, 10vw, 7rem)"
  section-v-compact: "clamp(2.5rem, 6vw, 4rem)"
  section-h: "clamp(1.5rem, 5vw, 3rem)"
  scale: ["0.25rem", "0.5rem", "0.75rem", "1rem", "1.25rem", "1.5rem", "2rem", "2.5rem"]
breakpoints:
  tablet: "768px"
  mobile: "640px"
components:
  button:
    radius: "4px"
    transition: "opacity 0.2s, transform 0.2s, box-shadow 0.2s"
  card:
    radius: "6px"
    background: "#ffffff"
    border: "1px solid rgba(47, 47, 47, 0.1)"
  focus:
    outline: "2px solid #8ee8b0"
    outlineOffset: "2px"
---

# Design Principles — EMpower Founders Residency

A reference guide for the visual language, component patterns, and conventions used across this site.

---

## Overview

**Design philosophy**: Light-first, typographic clarity, single mint-green accent. EMpower uses a near-white canvas with dark text and a mint accent (`#aeffc8`) that draws the eye to CTAs and key highlights. A dark (`#1a1a1a`) surface is used sparingly for contrast sections.

**Tech stack**:

| Layer | Choice |
|-------|--------|
| Framework | React 18 + TypeScript |
| Build | Vite 5 |
| Styling | Custom CSS with CSS variables (no framework) |
| Icons | Lucide React |
| Fonts | Instrument Sans Variable, Roboto Mono |
| Analytics | Vercel Analytics |
| Deployment | Vercel |

**Getting started**:
1. Load Instrument Sans Variable and Roboto Mono from Google Fonts
2. Apply `font-feature-settings: "ss01" 1, "ss02" 1, "ss03" 1` globally (enables stylistic sets)
3. Set CSS custom properties in `:root` (see `src/index.css`)
4. Import content from `src/lib/content.ts` — all copy is managed there

| Concern | File |
|---------|------|
| All styles | `src/index.css` |
| Content | `src/lib/content.ts` |
| Components | `src/components/` (one file per component, PascalCase) |
| Assets — photos | `/public/gallery/`, `/public/space/` |
| Assets — logos | `/public/logos/` |
| Brand kit | `/public/brand/` (logo lockups, sparkle SVG, banners) |

---

## Brand Identity

The brand is a typographic logo lockup defined in the Figma source: [EMpower Founders Residency](https://www.figma.com/design/fCGlJuUlZx3Em40ltPUUjv/EMpower-Founders-Residency). Two lockup configurations exist (Version A vertical, Version B horizontal), each with horizontal and 1000×1000 square framings, plus two banner treatments for social/OG use.

### Logo Lockup Anatomy

Three distinct typographic registers compose the wordmark — these are **decorative typefaces reserved for the logo and headline brand assets**, not for body UI (UI continues to use Instrument Sans):

| Register | Role | Character |
|----------|------|-----------|
| `EM` | Lead mark | Tall decorative blackletter-influenced serif, condensed |
| `POWER` | Display | Curvy 70s funk display, heavy weight, soft round counters |
| `FOUNDERS RESIDENCY DANANG` / `BY LISK VENTURES & SQRDAO` | Tagline | Bold pixel/8-bit display, uppercase, wide tracking |

> The exact font files live with the design assets — do **not** substitute. If a non-image rendering is needed (e.g., dynamic OG image), export the lockup as SVG with paths outlined. Never re-typeset the logo with a different typeface.

### Sparkle Motif

A four-point sparkle (asymmetric — vertical points are longer than horizontal) sits flush with the `EM` glyphs. Treat it as a load-bearing brand element:

- **Color**: `var(--accent)` (`#aeffc8`)
- **Anchor**: bottom-left of `EM` in Logo A; right edge of `POWER` in Logo B
- **Solo use**: allowed as a small accent (e.g., section divider, CTA prefix), but never larger than 24px when separated from the wordmark
- **SVG asset**: `/public/brand/sparkle.svg`
- **Don't**: rotate, recolor outside the accent palette, or use as a bullet/list marker

### Logo Variants

| Variant | Use case | Frame size | File |
|---------|----------|-----------|------|
| Logo A — horizontal | Primary nav, footer, marketing headers | 964 × 425 | `/public/brand/logo-a.svg` |
| Logo A — square | App icon, social avatar | 1000 × 1000 | `/public/brand/logo-a-square.svg` |
| Logo B — horizontal | Compact contexts (sticky header on scroll, email signature) | 1451 × 387 | `/public/brand/logo-b.svg` |
| Logo B — square | Square social tiles | 1000 × 1000 | `/public/brand/logo-b-square.svg` |

**Clear space**: minimum padding around any lockup equals the height of the `M` glyph. **Minimum size**: 120px wide (horizontal) / 80px (square). Below that, use Logo B (more legible at small sizes) or the sparkle alone.

### Logo Color Treatments

| Treatment | When to use |
|-----------|-------------|
| Black wordmark + mint sparkle (default) | On `#f8f8f8` canvas, `#ffffff` surfaces |
| White wordmark + mint sparkle | On `#1a1a1a` dark sections, banner gradients |
| All-mint single-color | Watermarks, embossed contexts (avoid in primary positions) |

Never apply gradients or photographic fills to the wordmark itself.

### Banner Treatments

Two banner variants exist for OG images, social headers, and event collateral:

| Banner | Logo placement | Background |
|--------|---------------|-----------|
| `banner-v1` | Logo A, large, left-third | Teal radial gradient `#aeffc8 → #0d2a1f` with two overlapping ellipse glows |
| `banner-v2` | Logo A, medium, left-quarter | Same gradient, smaller glow distribution |

Banner spec:
- Aspect ratio: **2177 × 1159** (≈1.88:1) — close to OG 1200×630, scaled up
- Background: large mint ellipse (top-left) + smaller mint ellipse (bottom-right), overlaid on near-black `#0d2a1f`, with a `blur(120px)` radial glow on each
- Wordmark: white (#ffffff), sparkle in `--accent` (#aeffc8)

```css
.brand-banner {
  background: radial-gradient(
      ellipse at 25% 35%,
      var(--accent) 0%,
      transparent 55%
    ),
    radial-gradient(
      ellipse at 80% 80%,
      rgba(174, 255, 200, 0.6) 0%,
      transparent 50%
    ),
    #0d2a1f;
  aspect-ratio: 2177 / 1159;
}
```

### Brand Asset Don'ts

| Don't | Why |
|-------|-----|
| Re-typeset the wordmark in Instrument Sans (or any other font) | The decorative typefaces *are* the brand |
| Place the wordmark on busy photographic backgrounds | Loses legibility; use a banner treatment instead |
| Recolor the sparkle to a non-accent color | The mint sparkle is the brand's recognition cue |
| Stretch, skew, or rotate the lockup | Lockup proportions are fixed |
| Use Logo A — square at less than 256px | Subtitle text becomes unreadable below that size |

---

## Colors

### Light Theme (default)

| Token | Value | Usage |
|-------|-------|-------|
| `--canvas` | `#f8f8f8` | Page background |
| `--surface` | `#ffffff` | Cards, section backgrounds |
| `--primary-text` | `#2f2f2f` | Body text, headings |
| `--accent` | `#aeffc8` | CTAs, highlights, gradients |
| `--accent-dark` | `#8ee8b0` | Darker accent variant, focus rings |
| `--dither-gray` | `#e5e5e5` | SVG noise texture |
| `--border` | `rgba(47, 47, 47, 0.1)` | Card and divider borders |

### Dark Accent Surfaces (sparse use)

| Value | Usage |
|-------|-------|
| `#1a1a1a` | "Why Da Nang" section bg, manifesto pullquote |
| `#f0f0f0` | Body text in dark sections |
| `#ffffff` | Headings in dark sections |
| `#2d6a4f` | Icon color on accent backgrounds |

### Status Colors

| Color | Usage |
|-------|-------|
| `#4ade80` | Pulsing status dot |
| `rgba(74, 222, 128, 0.6)` | Status dot glow |
| `rgba(174, 255, 200, 0.45)` | CTA hover box-shadow |

### WCAG Contrast Ratios

| Foreground | Background | Ratio | Grade | Usage |
|------------|-----------|-------|-------|-------|
| `#2f2f2f` | `#f8f8f8` | 13.2:1 | AAA | Body text on canvas |
| `#2f2f2f` | `#ffffff` | 14.7:1 | AAA | Body text on card surface |
| `#2f2f2f` | `#aeffc8` | 9.4:1 | AAA | Dark text on accent backgrounds |
| `#ffffff` | `#1a1a1a` | 16.1:1 | AAA | White on dark sections |
| `#f0f0f0` | `#1a1a1a` | 13.8:1 | AAA | Off-white on dark sections |

> **Note**: The `--accent-dark` focus ring (`#8ee8b0`) against `#f8f8f8` canvas has ~1.3:1 ratio — below WCAG 3:1 for non-text UI. Consider pairing the focus ring with a dark outline: `outline: 2px solid #2f2f2f; box-shadow: 0 0 0 4px #8ee8b0` for combined contrast.

---

## Typography

### Font Families

| Token | Stack | Role |
|-------|-------|------|
| `--font-heading` | `"Instrument Sans Variable", system-ui, sans-serif` | Headings |
| `--font-body` | `"Instrument Sans Variable", system-ui, sans-serif` | Body (same typeface) |
| `--font-mono` | `"Roboto Mono", ui-monospace, monospace` | Labels, dates, nav, badges |

Stylistic sets enabled globally: `font-feature-settings: "ss01" 1, "ss02" 1, "ss03" 1`

### Scale (fluid)

| Element | Size | Weight | Letter-spacing | Notes |
|---------|------|--------|----------------|-------|
| Hero headline | `clamp(2.25rem, 6.5vw, 4.5rem)` | 600 | `-0.03em` | |
| Hero subline | `clamp(1rem, 2vw, 1.2rem)` | 400 | — | Max-width 36rem |
| Section headings | `clamp(1.5rem, 4vw, 2.25rem)` | 600 | `-0.03em` | |
| Why Da Nang title | `clamp(1.6rem, 4.5vw, 2.5rem)` | 600 | `-0.02em` | |
| Stat primary | `clamp(2.75rem, 7vw, 4rem)` | 700 | `-0.03em` | Accent-colored |
| Body | `0.88rem`–`1rem` | 400 | — | |
| Section labels | `0.7rem` | 500 | `0.1em` | Mono, uppercase, opacity 0.55 |
| Small text | `0.62rem`–`0.85rem` | 400 | — | |

Section labels feel like metadata — uppercase, monospace, reduced opacity distinguishes them from content.

---

## Layout

- **Max-width container**: `72rem` (1152px)
- **Narrower inner containers**: `52rem` (manifesto, origin), `44rem` (Why Da Nang), `36rem` (hero subline)
- **Section padding**: `clamp(4rem, 10vw, 7rem)` vertical, `clamp(1.5rem, 5vw, 3rem)` horizontal
- **Compact section variant**: `clamp(2.5rem, 6vw, 4rem)` vertical
- **Spacing scale**: `0.25rem`, `0.5rem`, `0.75rem`, `1rem`, `1.25rem`, `1.5rem`, `2rem`, `2.5rem`

Single-page layout with vertically stacked sections, sticky header, and scroll progress bar.

### Responsive Breakpoints

| Breakpoint | Target | Key changes |
|-----------|--------|-------------|
| `768px` | Tablet | Header nav → burger menu; nav becomes vertical dropdown |
| `640px` | Mobile | Outcomes 3→1 col, weeks 4→2 col, backer cards stack, footer stacks, hero glance 5→2 col |

Responsive strategy:
- `clamp()` for fluid typography and padding
- CSS grid `auto-fit` / `auto-fill` for flexible card layouts
- Explicit media queries only for structural shifts (nav, grid columns)
- CSS mask for horizontal scroll-fade on mobile tab strip

### Page Structure

```
<Header />              — Sticky nav + scroll progress bar
<SloganBanner />        — Scrolling marquee strip
<main>
  <Hero />              — Full-height hero with mouse-tracking gradient
  <Manifesto />         — Mission statement + dark pullquote
  <ResidencyComponents /> — Tabbed residency details
  <WhyDaNang />         — Dark accent section with stats
  <Origin />            — Backer cards + ecosystem partners + gallery carousel
  <ApplicationSection /> — Apply card with milestone track + CTA
  <FAQ />               — Two-column accordion
</main>
<Footer />              — Socials + copyright
```

---

## Elevation & Depth

EMpower uses a **surface-over-canvas** approach. The near-white canvas (`#f8f8f8`) creates a slight depth distinction from white card surfaces (`#ffffff`) with thin borders.

| Level | Background | Border | Shadow |
|-------|-----------|--------|--------|
| Canvas | `#f8f8f8` | none | dither texture |
| Card surface | `#ffffff` | `1px solid rgba(47,47,47,0.1)` | none |
| Dark section | `#1a1a1a` | none | none |
| CTA hover | `#ffffff` | accent-tinted | `0 0 0 6px rgba(174,255,200,0.45)` |
| Frosted overlay (mobile nav) | `rgba(248,248,248,0.85)` | none | `backdrop-filter: blur(12px)` |

---

## Shapes

| Element | Border Radius |
|---------|---------------|
| Buttons | 4px |
| Cards | 6px |
| Images, carousel slides | 8px |
| Backer cards | 10px |
| Dark pullquote | 16px |
| Pills / role badges | 100px / 999px |
| Status dot | 50% |

---

## Components

### Architecture

- One component per file, PascalCase naming (`Hero.tsx`, `WhyDaNang.tsx`)
- 17 component files in `src/components/`
- Functional components with TypeScript, default exports
- Props-free — components pull content from `src/lib/content.ts`
- Semantic HTML throughout: `<section>`, `<article>`, `<header>`, `<nav>`, `<footer>`, `<time>`, `<button>`

### CSS Conventions

- **BEM-like naming**: `.component__element--modifier` (e.g. `.header__brand`, `.hero__headline`, `.week-card--highlight`)
- **Utility classes**: `.mono`, `.card`, `.section`, `.section--surface`, `.section--compact`, `.dither-bg`, `.scroll-reveal`
- No CSS-in-JS, no Tailwind — all styles in `src/index.css`
- Styles organized by component in page order

### Recurring Patterns

| Pattern | Description |
|---------|-------------|
| Section | Label (mono, uppercase, opacity 0.55) + heading + content |
| Section (dark) | `#1a1a1a` bg, white/off-white text, used sparingly |
| Card | White surface, thin border, 6px radius, optional accent stripe |
| Accent stripe | 3px gradient top-border on residency cards, `scaleX` draw animation |
| Tab strip | Horizontal tab buttons with active underline, scrollable on mobile |
| Carousel | Prev/next buttons + dot indicators, 0.4s ease slide transition |
| Milestone track | Horizontal bar with done/next/default dot states |
| FAQ accordion | `grid-template-rows: 0fr→1fr` expand/collapse, chevron rotation |
| Stat block | Large accent-colored value + small label |
| Pill badge | `border-radius: 100px`, accent background, role tags |
| Status indicator | Pulsing green dot (`#4ade80`) with glow |
| Dither texture | SVG fractal-noise background at 0.07 opacity |
| Photo strip | 3-column edge-to-edge image grid (section divider) |
| Scroll progress bar | 2px gradient bar at bottom of sticky header |

---

### Buttons

- Border radius: 4px
- Base transition: `opacity 0.2s, transform 0.2s, box-shadow 0.2s`
- Primary CTA: accent background (`#aeffc8`), dark text (`#2f2f2f`)
- Hover CTA: `box-shadow: 0 0 0 6px rgba(174,255,200,0.45)`

| State | Visual |
|-------|--------|
| Hover | `box-shadow: 0 0 0 6px rgba(174,255,200,0.45)`; slight opacity shift |
| Focus | `outline: 2px solid #2f2f2f; box-shadow: 0 0 0 4px #8ee8b0; outline-offset: 2px` |
| Disabled | Opacity 0.40; cursor not-allowed; no hover effect |
| Loading | Spinner replaces label; `pointer-events: none` |

---

### Forms

#### Text Inputs

| State | Border | Background |
|-------|--------|-----------|
| Default | `1px solid rgba(47,47,47,0.2)` | `#ffffff` |
| Hover | `1px solid rgba(47,47,47,0.4)` | `#ffffff` |
| Focus | `2px solid #8ee8b0` + `box-shadow: 0 0 0 3px rgba(142,232,176,0.3)` | `#ffffff` |
| Error | `2px solid #ef4444` | `rgba(239,68,68,0.04)` |
| Success | `2px solid #22c55e` | `rgba(34,197,94,0.04)` |
| Disabled | `rgba(47,47,47,0.08)` bg; opacity 0.55; cursor not-allowed |

#### Form Validation Messages

Error message:
```css
.field-error {
  color: #b91c1c;          /* red-700 — readable on light bg */
  font-size: 0.8rem;
  font-family: var(--font-mono);
  margin-top: 0.25rem;
  display: flex;
  align-items: center;
  gap: 0.25rem;
}
```

Success message:
```css
.field-success {
  color: #15803d;          /* green-700 — readable on light bg */
  font-size: 0.8rem;
  font-family: var(--font-mono);
  margin-top: 0.25rem;
}
```

Use a Lucide `AlertCircle` icon (16px) before error messages. WCAG: ensure error text meets 4.5:1 against `#f8f8f8` — red-700 (`#b91c1c`) achieves ~6.3:1 ✓.

---

### Burger Menu (Mobile)

Three-line icon transforms to X on open via CSS transforms.

```css
.mobile-nav-dropdown {
  background: rgba(248, 248, 248, 0.85); /* canvas at 85% opacity */
  backdrop-filter: blur(12px);
  -webkit-backdrop-filter: blur(12px);   /* Safari */
  border-bottom: 1px solid var(--border);
}
```

Links: full-width, `padding: 1rem var(--section-h)`, `border-bottom: 1px solid var(--border)`. Toggle button: `aria-expanded` state managed by React state.

---

### Tab Strip (Residency section)

- Horizontal tab buttons, scrollable on mobile with CSS mask fade at right edge
- Active: `border-bottom: 2px solid var(--accent-dark)`
- Tab panels animate in via `tabFadeIn` (0.4s ease)
- Container smoothly resizes height on panel switch

---

### Carousel (Space, Origin gallery)

- Prev/next buttons: appear on hover (opacity 0.2s transition)
- Dot indicators: active state scales to 1.3
- Track: `transform: translateX()` with 0.4s ease
- Origin gallery: 3 slides at a time, `object-fit: contain`
- Photo strip: `object-fit: cover`, `border-radius: 8px`

---

### FAQ Accordion

- Two-column layout via CSS `columns: 2` (single column below 640px)
- Trigger: `<button>` with chevron icon
- Expand/collapse: `grid-template-rows: 0fr → 1fr` (0.25s ease)
- Chevron rotates 180° on open
- Hover: subtle background tint `rgba(47,47,47,0.03)`

---

### Milestone Track (Application)

- 4 steps: dots + labels + fill bar
- States: `done` (filled accent), `next` (outlined + glow ring), default (muted)
- Fill bar width transitions to reflect progress

---

## Content Management

All site content lives in `src/lib/content.ts` as typed, `as const` objects:

```
site, hero, origin, manifesto, residency, timeline,
application, outcomes, testimonials, faq, partners, footer, socials
```

No CMS, no markdown, no runtime parsing. Components import the specific content object they need. Content is type-safe, co-located, and easy to update in one file.

---

## Animation & Interaction

### CSS Keyframes

| Animation | Duration / Easing | Usage |
|-----------|-------------------|-------|
| `slogan-scroll` | 28s linear infinite | Horizontal marquee banner |
| `pulse-dot` | 2s ease-in-out infinite | Status dot |
| `hero-enter` | 0.7s ease (staggered) | Hero elements on load |
| `tabFadeIn` | 0.4s ease | Tab panel entrance |
| `highlightGlow` | 2s ease (once, 0.8s delay) | Week card highlight pulse |
| `cta-glow` | 2.5s ease-in-out infinite | Apply CTA pulsing glow ring |

### Transitions

| Element | Transition |
|---------|-----------|
| Hover states | `opacity 0.2s, transform 0.2s, box-shadow 0.2s` |
| Card entrances | `opacity 0.4s ease, transform 0.4s ease` |
| Hero gradient | `background 0.4s ease` (mouse-tracking via JS) |
| Tab panels (height) | `height 0.35s cubic-bezier(0.25, 1, 0.5, 1)` |
| FAQ accordion | `grid-template-rows 0.25s ease` |
| Date strip line | `transform 0.8s cubic-bezier(0.25, 1, 0.5, 1)` |
| Nav underline | `transform 0.25s cubic-bezier(0.25, 1, 0.5, 1)` |
| Burger animation | `transform 0.3s, opacity 0.3s` |

**`cubic-bezier(0.25, 1, 0.5, 1)` explained**: This is an ease-out curve (starts fast, decelerates to rest). The control points (0.25, 1) and (0.5, 1) create a snap-and-settle feel — rapid initial movement that lands softly. Used wherever an element should feel responsive and physical (height reveal, underline draw, date strip). It approximates a spring without JavaScript physics.

### Hero Entrance (staggered)

| Element | Delay |
|---------|-------|
| Badge | 0.1s |
| Headline lines | Sequential, per `<span>` |
| Subline | 0.55s |
| CTA | 0.7s |
| Backed-by strip | 0.7s |
| At-a-glance grid | 0.85s |

### Scroll Animations

- **`.scroll-reveal`** — Intersection Observer: `opacity(0) + translateY(20px)` → visible. Staggered via `--reveal-delay` CSS variable.
- **`.residency-card`, `.space-location`, `.week-card`** — `translateY(16px)` fade-in.
- **`.date-strip`** — dots scale in with spring easing; line draws via `scaleX`; staggered via `--dot-delay`.
- **`.accent-draw`** — accent stripes animate `scaleX(0) → scaleX(1)` on reveal.

### Reduced Motion

All animations and transitions are disabled under `prefers-reduced-motion: reduce`. This covers: hero entrance, scroll reveals, slogan marquee, card entrances, CTA glow, status dot, progress bar, and hover transforms.

---

## Accessibility

- **Skip-to-content link**: hidden off-screen, appears on focus, links to `#main-content`
- **Focus styles**: `:focus-visible` with `2px solid var(--accent-dark)`, `2px` offset; consider adding a dark outer ring for low-contrast environments (see WCAG note in Colors)
- **Semantic HTML**: `<header>`, `<main>`, `<section>`, `<nav>`, `<footer>`, `<time>`, `<button>`
- **Heading hierarchy**: `h1` → `h2` → `h3` — no skipping
- **ARIA**: `aria-label` on sections/interactive elements, `aria-labelledby` linking headings, `aria-hidden="true"` on decorative elements
- **Burger menu**: toggle `aria-expanded` state on open/close
- **FAQ**: `<button>` triggers with chevron indicating open/closed state; `aria-expanded`
- **External links**: `target="_blank" rel="noopener noreferrer"`
- **Images**: meaningful `alt` for content images, `alt=""` for decorative
- **Lazy loading**: `loading="lazy"` on below-fold images; LCP image above fold is not lazy-loaded
- **Reduced motion**: full `prefers-reduced-motion: reduce` support

---

## Image Handling

| Type | Format | Location | Notes |
|------|--------|----------|-------|
| Photos | JPG | `/public/gallery/` | Lazy-loaded, 3-up carousel |
| Space photos | JPG/JPEG | `/public/space/` | Carousel slides, `border-radius: 8px` |
| Partner / ecosystem logos | SVG/PNG | `/public/logos/` | Alt text provided |
| Brand wordmark + sparkle | SVG | `/public/brand/` | Outlined paths; never re-typeset |
| Brand banners | PNG/JPG | `/public/brand/` | OG / social cards; export at 2× from Figma |
| OG image | JPG | Root URL | `/bg.jpg` (use `banner-v1` export when refreshing) |
| Favicon | Multi | `/public/favicon/` | ICO, PNG, Apple Touch, webmanifest — derived from Logo A square |

No image optimization library — relies on native lazy loading and pre-optimized static assets. Carousels use `object-fit: contain` for slides, `object-fit: cover` for photo strips.

---

## Design Philosophy

1. **Minimal palette, maximum clarity** — near-white canvas, single mint-green accent, dark text
2. **One typeface, two roles** — Instrument Sans carries both headings and body; Roboto Mono marks metadata and labels
3. **Content as code** — all copy lives in `src/lib/content.ts`, typed and versioned
4. **Fluid over fixed** — `clamp()` and CSS grid handle most responsiveness; hard breakpoints reserved for structural changes
5. **Motion with purpose** — staggered hero entrance, scroll-triggered reveals, mouse-tracking gradient, progress bar, pulsing status dots; all respect `prefers-reduced-motion`
6. **Semantic by default** — proper HTML, ARIA, skip links, focus styles, lazy-loaded images
7. **No abstractions for their own sake** — no CSS framework, no CSS-in-JS, no CMS
8. **Progressive disclosure** — tabs, accordions, and carousels keep sections scannable

---

## Do's and Don'ts

| Do | Don't |
|----|-------|
| Pull all content from `src/lib/content.ts` | Hard-code copy directly in component JSX |
| Use `clamp()` for fluid typography and spacing | Hard-code pixel values for font sizes |
| Apply `--accent` (`#aeffc8`) for CTAs and key highlights only | Use mint green as a large background fill |
| Pair error/success states with both color and text/icon | Use color alone for form validation feedback |
| Respect `prefers-reduced-motion: reduce` in all animations | Apply keyframe animations unconditionally |
| Use `cubic-bezier(0.25, 1, 0.5, 1)` for snappy height/transform transitions | Use `linear` or `ease` for spring-feel transitions |
| Keep dark `#1a1a1a` sections rare — 1-2 per page maximum | Use dark bg on many sections (it works by contrast with light) |
| Add `aria-expanded` to burger/accordion toggle buttons | Omit state management from interactive disclosure elements |
| Use `<button>` for interactive elements, `<a>` for navigation | Use `<div onClick>` without `role` and `tabindex` |
| Pair focus ring with a dark outer stroke for light backgrounds | Rely solely on `#8ee8b0` outline (low contrast on white) |
| Use the SVG wordmark from `/public/brand/` for the logo | Re-typeset the wordmark in Instrument Sans or any other font |
| Keep the mint sparkle paired with the lockup or sized ≤ 24px when solo | Use the sparkle as a bullet, list marker, or oversized decoration |
| Export OG / social images from the Figma banner frames at 2× | Generate banners by stretching the wordmark over a flat color |
