---
design-system: "Da Nang Blockchain Hub"
version: "1.2.0"
colors:
  background: "#231F20"
  surface: "#2F2B2C"
  surface-light: "#FFE6BB"
  text-primary: "#FFFFFF"
  text-primary-light: "#231F20"
  text-secondary: "#DCDCDC"
  text-secondary-light: "#5A5552"
  light-background: "#FFF2DD"
  light-surface: "#FFFFFF"
  border-light: "rgba(35, 31, 32, 0.08)"
  border-light-strong: "rgba(35, 31, 32, 0.16)"
  accent: "#FFA406"
  accent-secondary: "#FFE6BB"
  accent-cta: "#FF9100"
  accent-gradient: "linear-gradient(135deg, #FFA406, #FFE6BB)"
  accent-empower: "#A8E6C9"
  semantic-success: "#4ade80"
  semantic-error: "#f87171"
typography:
  display:
    fontFamily: "'Wolgen', 'Arial Black', 'Impact', sans-serif"
    fontWeight: 700
    letterSpacing: "-0.02em"
  body:
    fontFamily: "'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontWeight: 400
    fontSize: "1rem"
    lineHeight: 1.6
  body-light:
    fontFamily: "'Helvetica Neue', Helvetica, Arial, sans-serif"
    fontWeight: 300
    fontSize: "0.9rem"
spacing:
  sm: "0.5rem"
  md: "1rem"
  lg: "2rem"
  xl: "3rem"
  2xl: "4rem"
breakpoints:
  mobile: "768px"
  tablet: "1024px"
  desktop: "1025px"
components:
  container:
    maxWidth: "1280px"
    paddingX: "2rem"
  button-primary:
    background: "linear-gradient(135deg, #FFA406, #FFE6BB)"
    color: "#231F20"
    hoverTransform: "translateY(-2px)"
    hoverShadow: "0 4px 20px rgba(255, 164, 6, 0.3)"
    transition: "all 0.3s ease"
  card:
    background: "rgba(255, 255, 255, 0.03)"
    backdropFilter: "blur(10px)"
    border: "1px solid rgba(255, 164, 6, 0.12)"
    borderRadius: "var(--border-radius)"
    hoverTransform: "translateY(-5px)"
  focus:
    outline: "2px solid #FFA406"
    outlineOffset: "2px"
---

# Design System — Da Nang Blockchain Hub

Design principles, aesthetics, and guidelines for the Da Nang Blockchain Hub landing site and sub-pages.

---

## Overview

**Design identity**: Warm, builders-first, community-centric. The Da Nang Blockchain Hub uses warm near-black backgrounds with amber/gold accents and glassmorphism surfaces — grounded, approachable, and distinctly Southeast Asian in warmth.

**Two themes, one brand**:
- **Dark theme** (canvas `#231F20`) — product UI, landing site, web surfaces. Uses `.glass` for elevated cards.
- **Light theme** (canvas `#FFF2DD`) — partner decks, presentations, printable collateral, brand kit page. Uses flat `.surface-light` peach cards with no shadow or border by default.

**Tech stack**: Vanilla HTML/CSS with CSS custom properties. No frameworks.

**Getting started**:
1. Self-host Wolgen as `@font-face` (see Typography section for snippet)
2. Import Helvetica Neue via system font stack — no additional loading needed
3. Set CSS custom properties in `:root` (see `src/style.css`)
4. Apply `.glass` (dark theme) or `.surface-light` (light theme) to elevated surfaces — never mix the two on the same component

| File | Purpose |
|------|---------|
| `src/style.css` | All styles, CSS custom properties, component classes |
| `src/template.html` | Main landing page structure |
| `public/assets/` | Favicons, partner assets, photography |
| `assets/danang-hub/logos/` | Canonical brand logo variants (`Main_Dark.svg`, `Main_Light.svg`, `Mono_Dark.svg`, `Mono_Light.svg`) |

---

## Colors

> Source of truth: **Da Nang Blockchain Hub Brand Kit** (`assets/Da Nang Blockchain Hub Brand Kit.svg`).

### Official Brand Colors

| Name | Hex | Role |
|------|-----|------|
| Near Black | `#231F20` | Primary dark background |
| Dark Charcoal | `#2F2B2C` | Secondary dark surface |
| Amber / Gold | `#FFA406` | Primary brand accent |
| Deep Amber CTA | `#FF9100` | Primary action surfaces (hero portal cards, top-level CTAs) |
| Warm Cream | `#FFF2DD` | Primary light background |
| Light Peach | `#FFE6BB` | Secondary warm accent / light surface |
| Light Body | `#5A5552` | Secondary text on light theme |
| Neutral Gray | `#DCDCDC` | Muted text on dark |

### Sub-Brand Accent (Scoped Exception)

| Name | Hex | Sub-Brand | Role |
|------|-----|-----------|------|
| Mint | `#A8E6C9` | EMPOWER (Founders Residency) | Tertiary decorative accent on EMPOWER program collateral only |

> **Scope**: Mint is a *sub-brand-scoped tertiary accent*, not a hub palette color. It may appear in EMPOWER wordmark lockups (e.g., the four-pointed star between "EM" and "POWER") and EMPOWER-only marketing surfaces. **Never** apply it to hub-master or other sub-brands. See *Page-Specific Guidelines → Sub-Brand Index*.

### CSS Custom Properties

```css
:root {
  /* Dark theme (default — product UI, landing site) */
  --bg-color: #231F20;
  --surface-color: #2F2B2C;
  --text-primary: #ffffff;
  --text-secondary: #DCDCDC;

  /* Light theme (decks, partner collateral, brand kit) */
  --bg-light: #FFF2DD;
  --surface-light: #FFE6BB;
  --text-primary-light: #231F20;
  --text-secondary-light: #5A5552;
  --border-light: rgba(35, 31, 32, 0.08);
  --border-light-strong: rgba(35, 31, 32, 0.16);

  /* Brand accents */
  --accent-primary: #FFA406;     /* default amber — links, icons, focus rings, eyebrows */
  --accent-secondary: #FFE6BB;   /* soft peach highlights, light-theme card surface */
  --accent-cta: #FF9100;         /* deep amber — hero portal cards & primary action surfaces only */
  --accent-gradient: linear-gradient(135deg, #FFA406, #FFE6BB);

  /* Sub-brand-scoped accent (EMPOWER only — see Sub-Brand Index) */
  --accent-empower: #A8E6C9;

  /* Shape */
  --border-radius: 12px;

  /* Spacing — note: --spacing-xl changed in v1.2.0 (was 4rem, now 3rem). 4rem is now --spacing-2xl. */
  --spacing-sm: 0.5rem;
  --spacing-md: 1rem;
  --spacing-lg: 2rem;
  --spacing-xl: 3rem;
  --spacing-2xl: 4rem;
}
```

> **Migration note (v1.1.0 → v1.2.0)**: `--spacing-xl` was 4rem and is now 3rem. Audit existing usages before merging — most call sites probably want `--spacing-2xl` (4rem); section/card gutters that previously felt slightly oversized are the intended new `--spacing-xl` (3rem) targets.

### Semantic Colors

| State | Value | Usage |
|-------|-------|-------|
| Success | `#4ade80` | Form success feedback |
| Error | `#f87171` | Form error feedback |

### WCAG Contrast Ratios (on `#231F20` dark background)

| Color | Hex | Ratio | Grade |
|-------|-----|-------|-------|
| Primary text | `#FFFFFF` | ~17:1 | AAA |
| Amber accent | `#FFA406` | ~9.6:1 | AAA |
| Secondary text | `#DCDCDC` | ~10.2:1 | AAA |

### WCAG Contrast Ratios (on `#FFF2DD` light background)

| Color | Hex | Ratio | Grade |
|-------|-----|-------|-------|
| Primary text | `#231F20` | ~16.5:1 | AAA |
| Secondary text | `#5A5552` | ~7.4:1 | AAA |
| Amber accent (large/heavy text only) | `#FFA406` | ~1.8:1 | Decorative only |
| Mint accent (EMPOWER, decorative only) | `#A8E6C9` | ~1.3:1 | Decorative only |

> Amber `#FFA406` and mint `#A8E6C9` are **decorative** on cream — use them for icons, accent rules, and large display headlines (Wolgen 700, ≥ 24px) only. For body copy on cream, always use `--text-primary-light` or `--text-secondary-light`.

### Theme Selection

| Surface | Theme | Rationale |
|---------|-------|-----------|
| Landing site, product UI, dashboards | **Dark** | The hub's primary visual identity — glassmorphism on near-black |
| Partner decks, presentation slides, printable collateral | **Light** | Higher legibility in projection / print; reads as outward-facing |
| Brand Kit page | **Both** (side-by-side) | Demonstrates the four canonical logo backgrounds |
| Sub-pages (SOPs, Event Guidelines) | **Dark** (default) | Match the landing site |

### Guidelines

- Use `--accent-primary` (amber `#FFA406`) for interactive elements, links, icons, focus rings, and section eyebrows. This is the default amber.
- Use `--accent-cta` (deep amber `#FF9100`) **only** on hero portal cards and primary action surfaces (e.g., the "Da Nang Blockchain Hub Portal" CTA card). Never as a section accent, eyebrow, or icon color — that's `--accent-primary`'s job. The two ambers are deliberately distinct: `--accent-primary` is conversational, `--accent-cta` is decisive.
- `--accent-secondary` (warm peach `#FFE6BB`) is for softer highlights and as the light-theme card surface — never as a primary action color.
- Reserve the amber gradient for hero highlights and primary CTAs only.
- Avoid cool-toned accents (blue, cyan, violet) on the hub master brand. **Exceptions**: (1) semantic success/error colors, (2) sub-brand-scoped tertiary accents declared in the Sub-Brand Index (currently EMPOWER mint only).

---

## Typography

### Font Stack

The hub uses a two-font system: **Wolgen** for display, **Helvetica Neue** for everything else.

| Tier | Font | Role | Weights | Usage |
|------|------|------|---------|-------|
| Primary (display) | Wolgen | Headings, brand wordmark | 700, 900 | Hero titles, section headlines, eyebrows, stat-card values, hero-image captions |
| Secondary (body / UI) | Helvetica Neue | Everything else | 300, 400, 700 | Body copy, captions, labels, pills, buttons, form fields, table text, tooltips, timeline labels |

> **Rule**: Helvetica Neue is the **only** secondary font. Do not introduce Inter, Geist, system-ui, Arial, or any alternative as the body face — even temporarily — without amending this spec. If Helvetica Neue is unavailable on a given target (rare on macOS/iOS/Linux with the metric stack), fall back via the documented stack: `'Helvetica Neue', Helvetica, Arial, sans-serif`.

### Wolgen @font-face (Self-Hosting)

Wolgen is a commercial font — self-host from a licensed web font package:

```css
@font-face {
  font-family: 'Wolgen';
  src: url('/fonts/wolgen/Wolgen-Bold.woff2') format('woff2'),
       url('/fonts/wolgen/Wolgen-Bold.woff') format('woff');
  font-weight: 700;
  font-style: normal;
  font-display: swap;
}

@font-face {
  font-family: 'Wolgen';
  src: url('/fonts/wolgen/Wolgen-Black.woff2') format('woff2'),
       url('/fonts/wolgen/Wolgen-Black.woff') format('woff');
  font-weight: 900;
  font-style: normal;
  font-display: swap;
}
```

Fallback stack: `"Wolgen", "Arial Black", "Impact", sans-serif`

> Ensure the licensed woff2/woff files include the **Latin Extended** and **Latin Extended Additional** Unicode ranges to support Vietnamese diacritics (e.g., ắ, ộ, ễ).

### Scale

| Element | Size | Font |
|---------|------|------|
| Hero title | `clamp(1.8rem, 7vw, 4rem)` | Wolgen 700 |
| Section title | `clamp(1.75rem, 4vw, 2.5rem)` | Wolgen 700 |
| Card title | `1.5rem` | Wolgen 700 or Helvetica Neue Bold |
| Body | `1rem`–`1.1rem` | Helvetica Neue 400 |
| Captions | `0.85rem`–`0.95rem` | Helvetica Neue 300 |

### Typography Tokens

The `body-light` variant declared in the front-matter is exposed via these CSS custom properties (add to `:root`):

```css
:root {
  --font-weight-light: 300;
  --font-weight-regular: 400;
  --font-weight-bold: 700;
  --font-size-caption: 0.9rem;   /* body-light, captions, pill labels */
  --font-size-body: 1rem;
  --line-height-body: 1.6;
  --line-height-display: 1.1;
}
```

### Guidelines

- Wolgen for display/heading text only — never for body paragraphs.
- `letter-spacing: -0.02em` for Wolgen headings.
- Line height: `1.6` for body, `1.1` for hero titles.
- Apply `.gradient-text` (amber → warm peach) to key Wolgen phrases only.

```css
.gradient-text {
  background: var(--accent-gradient);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}
```

---

## Layout

### Container

| Property | Value |
|----------|-------|
| Max width | 1280px |
| Horizontal padding | `var(--spacing-lg)` (2rem) |
| Section vertical padding | `var(--spacing-2xl)` (4rem desktop; `var(--spacing-xl)` 3rem on mobile) |
| Card-to-card / inter-section gutter | `var(--spacing-xl)` (3rem) |

### Header

| Property | Value |
|----------|-------|
| Height (mobile/tablet) | 80px |
| Height (desktop) | 60px |

### Responsive Breakpoints

| Name | Width | Notes |
|------|-------|-------|
| Mobile | `< 768px` | Single column layouts |
| Tablet | `768px`–`1024px` | Two column where applicable |
| Desktop | `≥ 1025px` | Full layout |

---

## Elevation & Depth

The hub uses **two distinct elevation systems**, one per theme. They MUST NOT be mixed on the same component.

### Dark theme: glassmorphism

Frosted surfaces with amber-tinted borders float above the near-black canvas.

| Level | Background | Backdrop Filter | Border |
|-------|-----------|-----------------|--------|
| Canvas | `#231F20` | none | none |
| Surface / Footer | `#2F2B2C` | none | none |
| Glass card | `rgba(255,255,255,0.03)` | `blur(10px)` | `1px solid rgba(255,164,6,0.12)` |
| Glass hover | `rgba(255,255,255,0.06)` | `blur(10px)` | `1px solid rgba(255,164,6,0.30)` |
| Modal overlay | `rgba(0,0,0,0.85)` | `blur(8px)` | — |
| Modal content | `rgba(255,255,255,0.05)` | `blur(10px)` | `1px solid rgba(255,164,6,0.20)` |

### Light theme: flat peach surfaces

Solid `#FFE6BB` peach with no blur, no shadow, no default border. Backdrop blur produces no meaningful effect on a flat cream canvas (especially in PDF/print) — flat is the intentional treatment, not a fallback.

| Level | Background | Border |
|-------|-----------|--------|
| Canvas | `#FFF2DD` | none |
| Surface (default) | `#FFE6BB` | none |
| Surface (bordered) | `#FFE6BB` | `1px solid var(--border-light)` |
| Surface (hover, when interactive) | `#FFE6BB` | `1px solid var(--border-light-strong)` |

```css
.surface-light {
  background: var(--surface-light);
  border-radius: var(--border-radius);
  padding: var(--spacing-lg);
  /* no border, no shadow — flat by design */
}

.surface-light--bordered {
  border: 1px solid var(--border-light);
}

.surface-light--interactive {
  cursor: pointer;
  transition: border-color 0.3s ease;
}
.surface-light--interactive:hover {
  border: 1px solid var(--border-light-strong);
}
```

> **Do/Don't**: Use `.glass` only on dark theme. Use `.surface-light` only on light theme. Do not nest `.glass` inside a light-theme page or `.surface-light` inside a dark-theme page.

**Browser fallback for `backdrop-filter`** — some browsers (older Firefox, some Chromium versions) don't support `backdrop-filter`. Provide a solid fallback:

```css
.glass {
  background: rgba(255, 255, 255, 0.03);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 164, 6, 0.12);
  border-radius: var(--border-radius);
}

/* Fallback for browsers without backdrop-filter */
@supports not (backdrop-filter: blur(1px)) {
  .glass {
    background: rgba(47, 43, 44, 0.95); /* --surface-color at high opacity */
  }
}
```

---

## Shapes

| Element | Border Radius |
|---------|---------------|
| Cards, modals | `var(--border-radius)` (12px) |
| Buttons | 8px |
| Inputs | 8px |
| Pills / badges | 999px (full round) |
| Circular avatars | 50% |

---

## Components

### Glass Surface (`.glass`)

The signature surface treatment — use on cards, header, modals, partner strips, location info cards:

```css
.glass {
  background: rgba(255, 255, 255, 0.03);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 164, 6, 0.12);
  border-radius: var(--border-radius);
}

@supports not (backdrop-filter: blur(1px)) {
  .glass {
    background: rgba(47, 43, 44, 0.95);
  }
}
```

---

### Buttons

#### Primary (`.btn-primary`)

| Property | Value |
|----------|-------|
| Background | `linear-gradient(135deg, #FFA406, #FFE6BB)` |
| Text color | `#231F20` |
| Border radius | 8px |
| Hover | `translateY(-2px)` + amber glow shadow |

#### Secondary (`.btn-secondary`)

| Property | Value |
|----------|-------|
| Background | Translucent (`rgba(255,255,255,0.05)`) |
| Border | `1px solid rgba(255,164,6,0.30)` |
| Text color | `#FFA406` |
| Hover | amber border strengthens; slight background brightening |

#### Button States

| State | Visual |
|-------|--------|
| Hover | `translateY(-2px)`; amber glow `0 4px 20px rgba(255,164,6,0.3)` |
| Focus | `outline: 2px solid #FFA406; outline-offset: 2px` |
| Disabled | Opacity 0.40; cursor not-allowed; no hover transform |
| Loading | Replace label with amber spinner (16px); `pointer-events: none` |

---

### Cards

- Dark-theme surface: `.glass`
- Light-theme surface: `.surface-light`
- Hover (dark): `translateY(-5px)` + increased background opacity + stronger amber-tinted border
- Hover (light, when interactive): border strengthens from `--border-light` to `--border-light-strong`. No translate — the flat peach surface is meant to read as solid, not floating.

| State | Dark visual | Light visual |
|-------|-------------|--------------|
| Default | `.glass` (3% white bg, 12% amber border) | `.surface-light` (peach, no border) |
| Hover | 6% white bg + 30% amber border + `translateY(-5px)` | `.surface-light--bordered` strong-border |
| Focus (keyboard) | `outline: 2px solid #FFA406; outline-offset: 2px` | same |
| Loading | Shimmer overlay at 4% amber opacity | Shimmer overlay at 4% near-black opacity |

---

### Pills & Tags

Small pill-shaped meta-tags used as date or category eyebrows. On slides, place them top-left, vertically aligned with the logo lockup top-right.

```css
.pill {
  display: inline-block;
  padding: 0.4rem 1rem;
  background: var(--surface-light);
  color: var(--text-primary-light);
  font-family: 'Helvetica Neue', sans-serif;
  font-weight: 700;
  font-size: var(--font-size-caption);
  border-radius: 999px;
}

.pill--dark {
  background: var(--surface-color);
  color: var(--accent-primary);
}
```

| Variant | Background | Text | Use |
|---------|-----------|------|-----|
| `.pill` (default) | `--surface-light` | `--text-primary-light` | On light/cream pages and slides |
| `.pill--dark` | `--surface-color` | `--accent-primary` | On dark pages |

Examples observed in production decks: `Web3 Ecosystem Portal`, `May 24-27, 2026`, `Cohort II - May 4-29, 2026`.

---

### Stat Card

The deck's most repeated pattern. Used for KPIs, attendance numbers, social impressions, member counts.

Format: small icon → small label (one line) → very large number → short description.

```css
.stat-card {
  /* extends .surface-light */
  background: var(--surface-light);
  border-radius: var(--border-radius);
  padding: var(--spacing-lg);
  display: flex;
  flex-direction: column;
  gap: var(--spacing-sm);
}

.stat-card__icon { color: var(--accent-primary); width: 24px; height: 24px; }
.stat-card__label { font-size: 0.85rem; font-weight: 700; }
.stat-card__value {
  font-family: 'Wolgen', sans-serif;
  font-weight: 700;
  font-size: clamp(2rem, 5vw, 3rem);
  line-height: 1;
}
.stat-card__caption { font-size: 0.95rem; color: var(--text-secondary-light); }
```

**Rules**:
- Lock the value typography to **Wolgen 700** for consistency across instances. Do not substitute heavy Helvetica.
- Express numbers with magnitude prefixes (`1M`, `300+`, `58`) — never as raw counts requiring mental conversion (`1,000,000`, `300 expected`).
- Icon is always `--accent-primary` amber on a peach surface.

---

### Feature Card Grid

Recurring icon + bold heading + body card grid for "Key Focus Areas", "Resource Hub" sections, etc.

```css
.feature-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: var(--spacing-lg);
}

.feature-card {
  /* extends .surface-light */
  background: var(--surface-light);
  border-radius: var(--border-radius);
  padding: var(--spacing-lg);
}

.feature-card__icon {
  color: var(--accent-primary);
  width: 24px;
  height: 24px;
  margin-bottom: var(--spacing-md);
}
.feature-card__title { font-weight: 700; font-size: 1.1rem; margin-bottom: var(--spacing-sm); }
.feature-card__body { font-size: 0.95rem; line-height: 1.5; color: var(--text-secondary-light); }
```

| Column count | When |
|--------------|------|
| 3-up | Hero / focus sections (e.g., Onboarding, Developer Ecosystem, APAC Applications) |
| 4-up | Portal / feature listings (e.g., Resource Hub, Event Listing, Community Forum, Exclusive Program) |

Body length: aim for 1–2 short sentences. Never let one card grow >2× the height of its siblings — split or trim.

---

### Section Subhead Accent

A 3px amber vertical rule preceding bold subheadings within partner/ecosystem sections.

```css
.subhead-accent {
  display: flex;
  align-items: center;
  gap: var(--spacing-sm);
  font-weight: 700;
}

.subhead-accent::before {
  content: '';
  display: inline-block;
  width: 3px;
  height: 1.2em;
  background: var(--accent-primary);
}
```

Examples: `| Premium Partners`, `| Ecosystem Partners`.

---

### Timeline List

Distinct from a regular bulleted list — used for program/event milestone breakdowns (e.g., Remote Kickoff → Onsite Begins → Build & Prove → Demo & Launch).

```css
.timeline { list-style: none; padding: 0; }

.timeline__item {
  display: grid;
  grid-template-columns: auto 1fr;
  gap: var(--spacing-sm);
  margin-bottom: var(--spacing-md);
}

.timeline__item::before {
  content: '•';
  color: var(--accent-primary);
  font-size: 1.5rem;
  line-height: 1;
}

.timeline__label { color: var(--accent-primary); font-weight: 700; }
.timeline__detail { color: var(--text-primary-light); }
```

---

### Hero Image with Overlay

Photographic backgrounds (Da Nang skyline, residency house) with a dark-corner gradient and white display caption. Use the same overlay equation across instances to prevent drift.

```css
.hero-image {
  position: relative;
  border-radius: var(--border-radius);
  overflow: hidden;
}

.hero-image::after {
  content: '';
  position: absolute;
  inset: 0;
  background: linear-gradient(
    135deg,
    rgba(35, 31, 32, 0) 0%,
    rgba(35, 31, 32, 0.65) 100%
  );
}

.hero-image__caption {
  position: absolute;
  bottom: var(--spacing-lg);
  left: var(--spacing-lg);
  color: var(--text-primary); /* white */
  font-family: 'Wolgen', sans-serif;
  font-weight: 700;
  font-size: clamp(1.5rem, 3vw, 2rem);
  z-index: 1;
}
```

**Rules**:
- Overlay opacity range: **0.45–0.65**, biased toward 0.65 for bright daytime photos and 0.45 for evening/skyline photos.
- Minimum text size on overlay: **1.5rem Wolgen 700** — finer text fails AA contrast against varied photographic backgrounds.
- Overlay direction: 135° (top-left → bottom-right). Do not flip per slide.

---

### Partner Logo Card (dark island)

A deliberate inversion pattern: dark `#231F20` fill with cream hairline border, used on light-theme pages so partner logos can render as bright silhouettes against a controlled background.

```css
.partner-card {
  background: var(--bg-color);          /* #231F20 */
  border: 1px solid var(--bg-light);    /* cream hairline */
  border-radius: var(--border-radius);
  padding: var(--spacing-lg);
  display: grid;
  place-items: center;
  min-height: 100px;
}

.partner-card img {
  max-height: 40px;
  filter: brightness(0) invert(1);      /* white logo silhouette */
}
```

**Tier convention**:

| Tier | Layout | Card width |
|------|--------|------------|
| Strategic | 3-up row | Largest |
| Premium | 2-up row | Medium |
| Ecosystem | Auto-fit grid (`minmax(140px, 1fr)`) | Compact |

Logo treatment: grayscale by default (silhouette via the filter above), color on hover where applicable. Sub-brand wordmarks (sqrDAO, Lisk Ventures) follow the same rule unless registered in the Sub-Brand Index.

---

### Forms

#### Text Inputs

| State | Background | Border |
|-------|-----------|--------|
| Default | `rgba(255,255,255,0.05)` | `rgba(255,255,255,0.1)` |
| Hover | `rgba(255,255,255,0.07)` | `rgba(255,164,6,0.20)` |
| Focus | `rgba(255,255,255,0.07)` | `--accent-primary` + glow |
| Error | `rgba(248,113,113,0.06)` | `#f87171` |
| Success | `rgba(74,222,128,0.06)` | `#4ade80` |
| Disabled | Opacity 0.40; cursor not-allowed |

#### Checkboxes

```css
input[type="checkbox"] {
  appearance: none;
  width: 18px; height: 18px;
  border: 2px solid rgba(255,164,6,0.30);
  border-radius: 4px;
  background: rgba(255,255,255,0.05);
}
input[type="checkbox"]:checked {
  background: #FFA406;
  border-color: #FFA406;
  /* checkmark via background-image SVG */
}
input[type="checkbox"]:focus-visible {
  outline: 2px solid #FFA406;
  outline-offset: 2px;
}
```

#### Radio Buttons

Same approach as checkboxes but `border-radius: 50%` and a centered 8px dot when checked.

#### Select / Dropdown

- Same border style as text inputs
- Dropdown panel: `background: #2F2B2C`; amber accent on selected option
- Option hover: `rgba(255,164,6,0.10)`

#### File Input

Hide the native `<input type="file">` and trigger it with a `.btn-secondary` button:
```html
<label class="file-input-label">
  <input type="file" class="visually-hidden" />
  <span class="btn-secondary">Choose file</span>
  <span class="file-name-display">No file chosen</span>
</label>
```

---

### Modals & Overlays

- Overlay: `rgba(0, 0, 0, 0.85)` + `backdrop-filter: blur(8px)`
- Content: `.glass` panel, centered, `max-width: 560px`
- Close button: circular, translucent, rotate 90° on hover

**Full ARIA pattern**:
```html
<div
  role="dialog"
  aria-modal="true"
  aria-labelledby="modal-title"
  id="my-modal"
  tabindex="-1"
>
  <h2 id="modal-title">Modal Title</h2>
  <!-- content -->
  <button aria-label="Close dialog" class="modal-close">×</button>
</div>
```

**JavaScript requirements**:
```js
// On open: focus the modal container or first focusable element
modal.focus();

// Focus trap: cycle Tab/Shift+Tab within modal
// Escape key: close and return focus to the trigger element
document.addEventListener('keydown', (e) => {
  if (e.key === 'Escape') closeModal();
  if (e.key === 'Tab') trapFocus(e, modal);
});

// On close: return focus to the element that opened the modal
triggerElement.focus();
```

---

### External Embeds

#### Luma Calendar (dark theme)

Luma supports a dark theme via the embed URL parameter. Use:
```html
<iframe
  src="https://lu.ma/embed/calendar/YOUR_CAL_ID?compact=true&theme=dark"
  width="100%"
  height="450"
  frameborder="0"
  style="border-radius: 12px;"
  title="Da Nang Blockchain Hub Calendar"
></iframe>
```

If Luma's dark theme doesn't match exactly, override via `filter`:
```css
.luma-embed-container iframe {
  filter: brightness(0.9) saturate(0.95);
}
```

#### Map (dark mode)

Apply a CSS filter to invert and hue-rotate an embedded map for dark-mode consistency:
```css
.map-embed iframe {
  filter: invert(90%) hue-rotate(180deg);
}
```
The `invert(90%)` (not 100%) preserves slight warmth rather than flipping to cold blue; `hue-rotate(180deg)` corrects hue after inversion so greens return to green and roads stay readable.

---

## Brand Pattern

The brand kit includes a repeating logo icon pattern for background texture:

```css
.brand-texture {
  background-image: url('/assets/logo-icon.svg');
  background-repeat: repeat;
  background-size: 80px 80px;
  opacity: 0.15;
}
```

- **Dark variant**: Logo icons at 15% opacity on `#231F20`
- **Light variant**: Logo icons at 15% opacity on `#FFF2DD`

Apply only on hero sections or section dividers. Avoid on content-heavy areas.

---

## Iconography

A consistent monoline icon set ties together cards, eyebrows, and timeline markers across both themes.

### Library

- **Primary**: [Phosphor Icons](https://phosphoricons.com/) — `regular` weight (1.5px stroke equivalent).
- Lucide is **visually similar but not interchangeable** — different metric grids and corner radii. Pick one and lock it; do not mix on the same page.
- Custom icons are permitted only when no Phosphor equivalent exists, and must be drawn to match Phosphor's 1.5px-stroke / 24px-grid construction.

### Sizing

| Context | Size |
|---------|------|
| Inline (within body text) | 16px |
| Card header / stat-card / feature-card | 24px |
| Hero / section header | 32px |

### Color

| Surface | Default icon color |
|---------|-------------------|
| Section header (any background) | `--accent-primary` (amber) |
| Inside `.surface-light` cards | `--accent-primary` (amber) |
| Inside `.glass` cards | `--accent-primary` (amber) |
| Within body text on light theme | `--text-primary-light` |
| Within body text on dark theme | `--text-primary` |

**Style rules**:
- Never mix `outline` and `filled` (or `duotone`) variants on the same page. Outline is the default.
- Do not recolor sub-brand or partner icons — they follow their own brand guidelines.
- Icon-only buttons MUST carry `aria-label` (see Accessibility).

### Common semantic mappings

| Icon | Role |
|------|------|
| Wrench | BUIDL / engineering |
| Dollar / Coins | Investment / funding |
| People-plus | Community / onboarding |
| Code | Developer ecosystem |
| Globe | APAC / regional reach |
| Folder | Resource hub |
| Calendar | Events / schedule |
| Chat / Speech-bubble | Community forum |
| Badge | Exclusive program |
| Mic | Speakers |
| Tag | Categories / topics |
| Bolt | Impact / energy |
| Clipboard | Mission / brief |

---

## Motion & Interaction

### Transitions

- Default: `all 0.3s ease`

### Hover Patterns

| Element | Transform | Shadow |
|---------|-----------|--------|
| Links | opacity 0.8 → 1; color → `--accent-primary` | — |
| Buttons (primary) | `translateY(-2px)` | amber glow |
| Cards | `translateY(-5px)` | background brightening + amber border |
| Gallery items | image `scale(1.1)` | overlay reveal |

### Scroll

- `scroll-behavior: smooth`
- `scroll-padding-top` accounts for fixed header height
- `scroll-margin-top` on sections for anchor navigation

---

## Accessibility

- **Focus ring**: `outline: 2px solid #FFA406; outline-offset: 2px` via `:focus-visible` on all interactive elements
- **Contrast**: All text colors above meet WCAG AAA against `#231F20` — see contrast table in Colors section
- **Form labels**: Use `.visually-hidden` when placeholder is sufficient for design; never omit the label from the DOM
- **ARIA — modals**: `role="dialog"`, `aria-modal="true"`, `aria-labelledby`; focus trap on open; Escape key to close; return focus to trigger
- **ARIA — icons**: Add `aria-label` to icon-only buttons and links
- **Language**: For Vietnamese (`[lang="vi"]`) content, ensure Wolgen and Helvetica Neue web font files include Vietnamese glyph ranges (U+1E00–U+1EFF, U+0102–U+0103, U+0110–U+0111, U+0128–U+0129, U+0168–U+0169)
- **Color alone**: Pair success/error colors with text labels or icons, not color alone

---

## Page-Specific Guidelines

### Landing Page

- Hero: full viewport height, centered content, radial gradient glow
- Section order: About → Leadership → Activities → Location → Calendar → Contact
- Gallery: paginated (6 per page), lightbox with keyboard navigation

### Sub-pages (SOPs, Brand Kit, Event Guidelines)

- Same header/footer as landing
- Content area: `max-width: 52rem`–`56rem`, centered
- List markers in `--accent-primary` (amber); links in amber

### Brand Kit Page

Four canonical logo variants live under `assets/danang-hub/logos/`:

| Asset | Strokes / Fill | Use on Background |
|-------|----------------|-------------------|
| `Main_Dark.svg` | Near-black `#231F20` wordmark + amber `#FFA406` icon | Cream `#FFF2DD`, White `#FFFFFF` |
| `Main_Light.svg` | White `#FFFFFF` wordmark + amber `#FFA406` icon | Near-black `#231F20`, Amber `#FFA406` |
| `Mono_Dark.svg` | Near-black `#231F20` (single tone) | Cream, White, light photography |
| `Mono_Light.svg` | White `#FFFFFF` (single tone) | Near-black, dark photography, partner-card silhouettes |

**Rules**:
- Always use `Main_*` for the master brand mark unless single-tone reproduction is required (favicons, embroidery, etched signage, partner-card silhouettes).
- Do not recolor any variant. If a new background needs a different treatment, request a new asset rather than tinting in CSS.
- Minimum mark height: 32px digital, 12mm print.
- Clear space: equal to the cap-height of the wordmark on all sides.

#### Sub-Brand Index

Sub-brands and program identities that appear alongside the hub master brand. Each entry must point to a registered asset to prevent regeneration drift.

| Sub-Brand | Wordmark Asset | Permitted Backgrounds | Tertiary Accent |
|-----------|----------------|------------------------|------------------|
| EMPOWER (Founders Residency) | `assets/empower-wordmark.svg` | Cream `#FFF2DD`, White `#FFFFFF` | Mint `#A8E6C9` |
| sqrNODE | `assets/sqrnode-wordmark.svg` | Cream, White, Dark `#231F20` | None |
| sqrBUIDL | `assets/sqrbuidl-wordmark.svg` | Cream, White, Dark | None |
| Web3 Builders' Summit | `assets/wbs-wordmark.svg` | Dark (overlay on hero image) | None |

> The EMPOWER mint accent is the only sanctioned cool-tone exception in the system. It applies to the EMPOWER lockup (wordmark + four-pointed star + `BY LISK VENTURES & SQRDAO` tagline) and EMPOWER-only marketing surfaces. It MUST NOT bleed into hub-master or other sub-brand collateral.

#### Co-Branded Lockup

Rules for combining the hub or a sub-brand with partner marks (e.g., `sqrDAO × DAVAS`, `BY LISK VENTURES & SQRDAO`).

- The sqrDAO mark always trails the partner mark, separated by a multiplication sign `×` (U+00D7) — not lowercase `x`.
- Minimum padding around the lockup equals the cap-height of the smallest mark in the lockup.
- Partner marks render at their own brand colors. **Never recolor a partner mark** to match the cream/amber palette.
- Vertical lockups: smaller mark stacks below the larger; horizontal `×` separator becomes a 1px cream divider on dark backgrounds, near-black on light.

### Presentation Decks

A recurring deliverable format. Decks default to the **light theme** because partner-facing PDFs need to project and print clearly.

**Canvas**:
- 16:9, source at **1920×1080** (1280×720 minimum)
- Default background: cream `#FFF2DD`
- Safe area: keep critical content within **60px** top/bottom and **80px** left/right of a 1920×1080 canvas

**Slide chrome**:
- **Top-left**: date or category `.pill` (see Components → Pills & Tags)
- **Top-right**: hub logo lockup, vertically centered with the pill
- **No footer** — the top-right logo lockup serves as the page mark

**Section title lockup** (eyebrow + headline pattern):

| Line | Style | Example |
|------|-------|---------|
| Eyebrow | Wolgen 700, sentence case, ends with colon, color `--accent-primary` | `Our Ecosystem:` |
| Headline | Wolgen 700, larger, color `--text-primary-light`, on the next line | `Partners & Collaborations` |

**Slide-specific type scale**:

| Element | Size |
|---------|------|
| Section eyebrow | 1.5rem |
| Section headline | 2.5rem |
| Card title | 1.1rem (bold) |
| Body | 0.95–1rem |
| Stat value | 2.5–3rem (Wolgen 700) |

**Theme mixing within a deck**: permitted at the page level for emphasis (e.g., a partner-logo strip on a dark `#231F20` band within an otherwise-cream slide — see slide 6). Do not mix themes within a single section or component group.

**Export**: see *Print & PDF Export* below.

### Print & PDF Export

- **Embed Wolgen** as a subset including **Latin Extended** + **Latin Extended Additional** ranges (covers Vietnamese diacritics).
- Verify embedding with `pdffonts <file>.pdf` — Wolgen entries should be marked `embedded subset`. If they appear as `Type 3` or unembedded, re-export.
- For **physical print**: tag `#FFF2DD` with an explicit ICC profile (FOGRA39 for European print, US SWOP for US print) — without it, cream renders washed out on coated stock.
- **Bleed**: 3mm if intended for physical print; not required for digital-only PDFs.
- **Safe area**: 60px (top/bottom) × 80px (left/right) on a 1920×1080 canvas (matches the slide-deck safe area).
- Avoid `backdrop-filter` in print export — it doesn't render in PDF. The light theme's flat `.surface-light` is the print-safe path; if a deck must use the dark theme, replace `.glass` with the documented `@supports not (backdrop-filter)` solid fallback before exporting.

---

## Brand Consistency

### Voice

- **Tone**: Confident, inclusive, builder-focused
- **Avoid**: Jargon overload, exclusivity, corporate stiffness

### Imagery

- Gallery: Real community photos, workshops, events
- Partner logos: Consistent sizing, grayscale by default with color on hover where applicable

---

## Do's and Don'ts

| Do | Don't |
|----|-------|
| Use CSS custom properties for all colors, spacing, and typography | Hard-code hex values in component styles |
| Apply `.glass` on dark theme and `.surface-light` on light theme | Mix `.glass` and `.surface-light` on the same component or nested within the wrong theme |
| Provide `@supports not (backdrop-filter)` fallback for glass surfaces | Assume backdrop-filter works universally (it does not in PDF/print) |
| Mix themes at the **page-block** level for emphasis (e.g., dark partner-logo island on a light slide) | Mix themes randomly across a single section or component group |
| Self-host Wolgen from a licensed package | Use Wolgen via an unlicensed CDN |
| Embed Wolgen as a subset (Latin Extended + Latin Extended Additional) when exporting PDFs | Export PDFs with system-font fallback for Wolgen |
| Include Vietnamese glyph range in font-face declarations | Assume Latin-only glyphs cover VI content |
| Keep amber gradient usage intentional and sparse | Use gradient on large background fills |
| Lock stat-card values to Wolgen 700 with magnitude prefixes (`1M`, `300+`) | Mix font weights across stat-card values, or write raw counts (`1,000,000`) |
| Implement focus trap + Escape key for modals | Open modals without ARIA role and focus management |
| Test in both EN and VI for typography and layout | Release without checking Vietnamese character rendering |
| Use the four canonical brand kit background combos | Introduce new background colors without design review |
| Use cool-toned accents only for semantic states (success/error) **or** sub-brand-scoped tertiary accents declared in the Sub-Brand Index | Add blue, cyan, violet, or mint as decorative accents on the hub master brand |
| Apply mint `--accent-empower` only on EMPOWER program collateral | Apply mint to hub, sqrNODE, sqrBUIDL, or summit collateral |
| Place a top-left date/category pill aligned with the top-right logo lockup on slides | Float pills at arbitrary positions or omit the logo lockup |

---

## Versioning & Changelog

### v1.2.0 — 2026-05-05

- **Light theme system** fully tokenized: `--surface-light`, `--text-secondary-light`, `--border-light`, `--border-light-strong`. Light-theme contrast table added.
- **Spacing scale**: `--spacing-xl` is now `3rem` (was `4rem`); the previous value moved to a new `--spacing-2xl`. Audit existing usages.
- **New components**: `.surface-light`, `.pill` / `.pill--dark`, `.stat-card`, `.feature-grid` / `.feature-card`, `.subhead-accent`, `.timeline`, `.hero-image`, `.partner-card`.
- **New sections**: Iconography (top-level), Presentation Decks, Sub-Brand Index, Co-Branded Lockup, Print & PDF Export.
- **EMPOWER mint accent** (`--accent-empower: #A8E6C9`) codified as a sub-brand-scoped tertiary accent, resolving the audit's blocking finding F010.
- **CTA orange** (`--accent-cta: #FF9100`) codified as a distinct token from `--accent-primary` `#FFA406`, resolving F011. Use only on hero portal cards and primary action surfaces.
- **Helvetica Neue** locked as the sole secondary (body / UI) font. No alternatives permitted without spec amendment.
- **Logo assets**: four canonical variants (`Main_Dark`, `Main_Light`, `Mono_Dark`, `Mono_Light`) wired in under `assets/danang-hub/logos/`.
- Theme-mixing rule and stat-card consistency rule added to Do's and Don'ts.

### Open questions / verification required

| Item | Source | Action |
|------|--------|--------|
| **Icon library lock** — the deck's monoline icons read as Phosphor `regular`, but Lucide is visually similar. | Audit F014 | Confirm with the deck source file and pin the chosen library in `package.json` / asset folder. |
| Sub-brand wordmark assets (`empower-wordmark.svg`, `sqrnode-wordmark.svg`, `sqrbuidl-wordmark.svg`, `wbs-wordmark.svg`) need to be exported and committed under `assets/danang-hub/sub-brands/`. | Audit F012, F015 | Export from the brand kit SVG and commit. |
