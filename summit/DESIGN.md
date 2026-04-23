---
design-system: "Web3 Builders' Summit"
version: "1.1.0"
colors:
  background: "#000000"
  surface: "#0D0D10"
  surface-alt: "#18181b"
  text-primary: "#FFFFFF"
  text-secondary: "#A1A1AA"
  accent: "#FFB800"
  accent-hover: "#FFC94D"
  badge-invite: "#8B5CF6"
  badge-approval: "#F59E0B"
  snip-badge: "#ffc800"
  construction: "#ffd700"
typography:
  display:
    fontFamily: "'Anton', sans-serif"
    fontWeight: 400
    textTransform: "uppercase"
    letterSpacing: "2px"
  body:
    fontFamily: "system-ui, -apple-system, 'SF Pro Text', sans-serif"
    fontWeight: 400
    fontSize: "1rem"
    lineHeight: 1.6
spacing:
  section-v: "80px"
  section-v-alt: "100px"
  container-h: "20px"
  grid-gap-min: "1rem"
  grid-gap-max: "4rem"
  contact-gap: "32px"
  hero-top: "140px"
breakpoints:
  desktop: "993px"
  tablet-max: "992px"
  tablet-min: "769px"
  mobile-max: "768px"
  mobile-min: "577px"
  small-mobile: "576px"
  extra-small: "480px"
components:
  container:
    maxWidth: "1200px"
    margin: "0 auto"
    paddingX: "20px"
  button:
    textTransform: "uppercase"
    letterSpacing: "1px"
    fontSize: "14px"
    padding: "14px 28px"
    borderRadius: "8px"
    hoverTransform: "translateY(-3px)"
    hoverShadow: "0 8px 32px rgba(0, 0, 0, 0.2)"
    transition: "all 0.3s ease"
  card:
    borderRadius: "8px"
    hoverTransform: "translateY(-5px)"
    hoverShadow: "0 8px 32px rgba(0, 0, 0, 0.2)"
  dog-ear:
    size: "30px"
  focus:
    outline: "2px solid #FFB800"
    outlineOffset: "2px"
---

# Design System — Web3 Builders' Summit (LFBUIDL 2026)

Design principles, aesthetics, and guidelines for the Web3 Builders' Summit landing page.

---

## Overview

**Design identity**: Dark event brand — pure black canvas, gold CTAs, distinctive dog-ear clipped corners. High contrast, energetic, professional. Purpose-built for a single landmark event page.

**Tech stack**: Vanilla HTML/CSS with CSS custom properties. Font Awesome 6.5.1 for icons. Anton (display) from Google Fonts.

**Getting started**:
1. Preload `kv-bg-1.webp`, `kv-bg-2.webp`, `logo.svg` in `<head>` for LCP
2. Load Anton via Google Fonts: `<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">`
3. Load Font Awesome 6.5.1 with the `media="print"` deferred trick
4. Set CSS custom properties in `:root`

| File | Purpose |
|------|---------|
| `styles.css` | All styles, CSS custom properties, component classes |
| `index.html` | Main page structure and content |
| `legal.html` | Terms & Conditions legal page |
| `scripts.js` | Menu, tabs, smooth scroll, form handling |
| `img/kv-bg-1.webp` + `.png` | Hero KV background 1 (WebP + PNG fallback) |
| `img/kv-bg-2.webp` + `.png` | Hero KV background 2 (WebP + PNG fallback) |
| `img/speakers/` | Speaker portrait images |
| `img/partners/` | Partner logos (PNG/SVG) |

---

## Colors

### Base Colors

| Token | Hex | Usage |
|-------|-----|-------|
| `--primary-color` | `#FFB800` | CTAs, accents, borders, highlights |
| `--secondary-color` | `#0D0D10` | Header, footer, tags |
| `--dark-color` | `#000000` | Page background |
| `--light-color` | `#FFFFFF` | Headings, primary text |
| `--text-color` | `#FFFFFF` | Body text |
| `--text-light` | `#A1A1AA` | Secondary text, captions, subtitles |

### CSS Custom Properties

```css
:root {
  --primary-color: #FFB800;
  --secondary-color: #0D0D10;
  --dark-color: #000000;
  --light-color: #FFFFFF;
  --text-color: #FFFFFF;
  --text-light: #A1A1AA;
  --border-radius: 8px;
  --box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
  --transition: all 0.3s ease;
  --dog-ear-size: 30px;
}
```

### Semantic / Badge Colors

| Context | Value | Usage |
|---------|-------|-------|
| Button hover | `#FFC94D` | Primary button hover state |
| Invite-only badge | `#8B5CF6` | Purple — invite-only events |
| Approval badge | `#F59E0B` | Amber — approval required |
| Contact section bg | `#18181b` | Slightly lighter than page bg |
| Snip badge | `#ffc800` | Hero LFBUIDL / MAY 25 labels |

### WCAG Contrast Ratios (on `#000000` background)

| Color | Hex | Ratio | Grade |
|-------|-----|-------|-------|
| Primary text | `#FFFFFF` | 21:1 | AAA |
| Gold accent | `#FFB800` | 11.1:1 | AAA |
| Secondary text | `#A1A1AA` | 5.2:1 | AA |

### Guidelines

- Use `--primary-color` for all interactive elements and CTAs.
- Reserve semantic badge colors for event status (invite-only, approval required, free entry).
- Avoid introducing new accent colors; extend the palette only when semantically necessary.

---

## Typography

### Font Stack

| Context | Font | Source | Weights |
|---------|------|---------|---------|
| Display / Headers / Nav | Anton | Google Fonts | 400 |
| Body / UI | `system-ui, -apple-system, 'SF Pro Text', sans-serif` | System | 300–700 |

> Previously used NeueHaas Display, Fraktion Sans, and SP Pro. All custom font files have been intentionally removed; Anton replaced them for display use.

### Scale

| Element | Size | Notes |
|---------|------|-------|
| Hero title | `clamp(3.5rem, 8vw + 1rem, 7rem)` | Fits full viewport at 1280×580; Anton |
| Section title large | `clamp(1.75rem, 4vw, 3.5rem)` | Responsive; Anton |
| Section title | `1.5rem`–`2rem` | Anton |
| Impact numbers | `4rem` | Anton |
| Body / paragraphs | `0.9rem`–`1rem` | System sans |
| Small / labels | `0.8rem`–`0.85rem` | System sans |

**Hero title formula rationale**: `clamp(3.5rem, 8vw + 1rem, 7rem)` — at 1280px viewport the calc resolves to ~`(8×1280)/100 + 16 ≈ 118.4px` which Anton renders at approximately the right viewport-filling proportion. Adjust the min/max if using a different hero layout.

### Guidelines

- `letter-spacing: 2px` for uppercase section labels and titles.
- `letter-spacing: 1px` for buttons and small caps.
- Line height: `1.6` for body, `1.2` for headings.
- Section titles: `text-transform: uppercase; color: var(--text-light)`.

---

## Layout

### Container

| Property | Value |
|----------|-------|
| Max width | 1200px |
| Margin | 0 auto |
| Padding | 0 20px |

### Spacing Scale

| Usage | Value |
|-------|-------|
| Standard section vertical | `80px 0` |
| Hero, impact, venue sections | `100px 0` |
| Hero `padding-top` | `140px` (120px @ 992px, 80px @ 768px) |
| Grid gaps | `1rem`–`4rem` depending on section |
| Contact options gap | `32px` |

### Responsive Breakpoints

| Breakpoint | Width | Primary usage |
|-----------|-------|---------------|
| Desktop | `≥ 993px` | Full layout |
| Tablet | `769px`–`992px` | Adjusted padding, 2-column → 1-column |
| Mobile | `577px`–`768px` | Reduced padding, stacked layouts |
| Small mobile | `< 576px` | Reduced section title sizes |
| Extra small | `< 480px` | Minimum layout |

---

## Elevation & Depth

The summit uses a **flat-translucent** approach — surfaces are dark semi-transparent overlays rather than elevated cards.

| Level | Background | Notes |
|-------|-----------|-------|
| Canvas | `#000000` | Pure black |
| Header | `var(--secondary-color)` + `backdrop-filter: blur(10px)` | Sticky, blurred |
| Cards / surfaces | `rgba(255, 255, 255, 0.05)` | Translucent overlay on black |
| Card hover | `rgba(255, 184, 0, 0.10)` | Gold-tinted warm hover |
| Contact section | `#18181b` | Slightly warmer than page |

---

## Shapes

| Element | Border Radius |
|---------|---------------|
| Cards, buttons, inputs | `var(--border-radius)` (8px) |
| Impact cards (dog-ear) | See Dog-Ear section — clipped corners |
| Pills / snip badges | Custom clip-path |
| Speaker avatar | `50%` |
| Timeline cards | 8px |

### Dog-Ear Utilities

The distinctive dog-ear clipped corners are applied to impact cards:

```css
:root { --dog-ear-size: 30px; }

.dog-ear-top-right {
  clip-path: polygon(
    0 0,
    calc(100% - var(--dog-ear-size)) 0,
    100% var(--dog-ear-size),
    100% 100%,
    0 100%
  );
}

.dog-ear-bottom-left {
  clip-path: polygon(
    0 0,
    100% 0,
    100% 100%,
    var(--dog-ear-size) 100%,
    0 calc(100% - var(--dog-ear-size))
  );
}
```

Apply `.impact-card` with exactly one dog-ear class — use `top-right` for left-aligned cards, `bottom-left` for right-aligned cards.

---

## Components

### Buttons

| Variant | Class | Style |
|---------|-------|-------|
| Primary | `.btn-primary` | `#FFB800` bg, dark text; hover: `#FFC94D` |
| Secondary | `.btn-secondary` | Transparent bg, white border |
| Outline | `.btn-outline` | Transparent bg, primary border; hover: primary bg |
| Large | `.btn-large` | `padding: 1rem 3rem; font-size: 1rem` |

Base styles: `text-transform: uppercase; letter-spacing: 1px; font-size: 14px; padding: 14px 28px; border-radius: 8px`

Hover: `translateY(-3px); box-shadow: var(--box-shadow)`

#### Button States

| State | Visual |
|-------|--------|
| Hover | `translateY(-3px)` + box shadow |
| Focus | `outline: 2px solid #FFB800; outline-offset: 2px` |
| Disabled | Opacity 0.40; cursor not-allowed; no hover transform |
| Loading | Replace label with spinner; `pointer-events: none` |

**JS fallback**: If JavaScript fails to handle form submission, ensure all forms have a valid `action` attribute pointing to a server-side handler so submissions are not silently lost.

---

### Pill Badges

`.pill-badge` — gold chamfered capsule label:

| Variant | Class | Usage |
|---------|-------|-------|
| Standard | `.pill-badge` | Hero meta, section labels |
| Large | `.pill-badge--lg` | Hero meta row |
| Subsection | `.subsection-pill` | Partner tier dividers |

---

### Snip Badges

`.snip-badge` — gold chamfered capsule (replaces previous pill badges in the hero):

- `.snip-badge--corner-bl` — bottom-left corner snip via clip-path
- `.snip-badge--sm` — small; inline next to "BUILDERS'" word
- `.snip-badge--md` — medium; used in date row ("MAY 25")
- Background `#ffc800`, color `#000000`, font Anton, uppercase

---

### Impact Cards

| Property | Value |
|----------|-------|
| Apply | `.impact-card` + one dog-ear class |
| Background | `rgba(255, 255, 255, 0.05)` |
| Border | `2px solid var(--primary-color)` |
| Hover | `translateY(-5px)` + box shadow + `rgba(255,184,0,0.10)` bg |

---

### Speaker Cards

| Property | Value |
|----------|-------|
| Grid | `repeat(auto-fill, minmax(250px, 1fr))` |
| Gap | `30px` |
| Card background | `rgba(255, 255, 255, 0.05)` |
| Card border radius | `8px` |
| Card padding | `24px` |
| Avatar | `120px × 120px`, `border-radius: 50%`, `object-fit: cover` |
| Min width (card) | `250px` |
| Max width (card) | `340px` |
| Height | auto (content-driven) |

Focus state for speaker social links: `outline: 2px solid #FFB800; outline-offset: 2px`

Partner logos: `data-organization` and `data-role` attributes are present for future JS filtering — document this when implementing the filter feature.

---

### Partner Logos

| Tier | Logo Max Height | Max Width | Behavior |
|------|----------------|-----------|---------|
| Co-host | `60px` | `200px` | Color at rest |
| Strategic | `50px` | `180px` | Color at rest |
| Premium | `44px` | `160px` | Color at rest |
| Ecosystem | `40px` | `150px` | Grayscale → color on hover |
| Community | `36px` | `130px` | Grayscale → color on hover |

All logos: `object-fit: contain; object-position: center`. Hover: `scale(1.05)`.

---

### Timeline Cards

| Property | Value |
|----------|-------|
| Min width | `280px` |
| Max width | `380px` |
| Padding | `2rem` |
| Border radius | `8px` |
| Background | `rgba(255, 255, 255, 0.05)` |

Event-type borders:
- `.w3bs-event` — gold border `--primary-color`
- `.davas-event` — purple border `#8B5CF6`
- `.main-event` — double-weight gold border

**JS filtering fallback**: The speaker grid's `data-organization` / `data-role` attributes are available for filtering. If JS fails, all speakers remain visible — ensure the unfiltered state is useful and accessible without JS.

---

### Agenda

Phase-based layout (Morning / Afternoon / Evening):

| Class | Purpose |
|-------|---------|
| `.agenda-phase` | Wraps a time block |
| `.agenda-phase-header` | Phase title + tag label |
| `.agenda-rows` | Container for session rows |
| `.agenda-row` | Single session: time \| badge \| content |
| `.agenda-row-break` | Break row variant (dimmed) |
| `.agenda-dinner-grid` | 2×2 card grid for evening activities |
| `.agenda-dinner-card` | Individual dinner card |

**Agenda phase header styling**:
- Phase title: Anton, `1.1rem`, uppercase, `#A1A1AA`
- Tag label: system sans, `0.8rem`, uppercase, `letter-spacing: 2px`
- Border-bottom: `1px solid rgba(255,255,255,0.08)`, padding-bottom `12px`

**Agenda row styling**:
- Time column: `80px` fixed width; Anton, `0.85rem`, gold color
- Badge column: `100px` fixed; centered
- Content column: flex 1; session title in white, speaker in `--text-light`
- Break rows: overall opacity `0.55`

**Badge classes**:

| Class | Label | Background |
|-------|-------|------------|
| `.badge-keynote` | Keynote | `rgba(255,184,0,0.15)` + gold border |
| `.badge-panel` | Panel N | `rgba(255,255,255,0.08)` |
| `.badge-debate` | Debate | `rgba(139,92,246,0.15)` + purple border |
| `.badge-showcase` | Showcase | `rgba(34,197,94,0.12)` + green border |
| `.badge-break` | Break | `rgba(255,255,255,0.05)` |

---

### Venue Section

- Background: `var(--dark-color)` (`#000000`)
- Layout: two-column grid `1fr 1fr`, gap `4rem`
- Section padding: `100px 0`
- Venue: Risemount Premier Resort Da Nang, 120 Nguyen Van Thoai Street
- `.venue-features` — icon + text feature list (WiFi, restaurant, parking, pool); icon color `--primary-color`

---

### Badges

| Class | Color | Usage |
|-------|-------|-------|
| `.free-badge` | `--primary-color` (`#FFB800`) | Free entry |
| `.invite-only-badge` | `#8B5CF6` | Invite only |
| `.approval-badge` | `#F59E0B` | Approval required |

---

### Contact Options

| Property | Value |
|----------|-------|
| Card background | `rgba(255, 255, 255, 0.03)` |
| Card border radius | `var(--border-radius)` |
| Padding | `24px 32px` |
| Min width | `120px` |
| Icon size | `2.2rem` |
| Icon color | `--primary-color` |
| Hover bg | `var(--primary-color)` |
| Hover text | `var(--dark-color)` |
| Hover transform | `translateY(-4px) scale(1.04)` |

---

## Hero Section

### Structure

Two-column layout: title/badges left, KV images right.

```html
<section class="hero">
  <div class="hero-body">
    <div class="hero-left">
      <div class="hero-title-block">
        <div class="hero-line hero-line-1">
          <!-- WEB3 | BUILDERS' | snip badge LFBUIDL -->
        </div>
        <div class="hero-line hero-line-2">
          <!-- SUMMIT | hero-loc-label (DANANG // VIETNAM) | 2026 -->
        </div>
        <div class="hero-date-row">
          <!-- snip badge MAY 25 | hero-date-year 2026 -->
        </div>
        <div class="hero-collab">
          <!-- "In Collaboration with" + DAVAS logo -->
        </div>
      </div>
    </div>
    <div class="hero-right" aria-hidden="true">
      <!-- kv-bg-1 picture + kv-bg-2 picture + hero-kv-logo -->
    </div>
  </div>
</section>
```

### KV Images

Always use `<picture>` with WebP + PNG fallback:

```html
<picture>
  <source srcset="img/kv-bg-1.webp" type="image/webp" />
  <img
    src="img/kv-bg-1.png"
    alt=""
    fetchpriority="high"
    class="kv-bg-1"
  />
</picture>
```

`kv-bg-2` uses `loading="eager"` (not `fetchpriority="high"`). Never use WebP-only without a PNG fallback.

---

## Partners Section

Five tiers, each preceded by a `.subsection-pill` divider:

| Tier | Partners |
|------|---------|
| Co-host | sqrDAO, DAVAS |
| Strategic | DISSC, Lisk |
| Premium | NEBULUS |
| Ecosystem | Swiss EP, Aptos, Avalanche, Laguna Network |
| Community | Team1, Spores Network, Da Nang Blockchain Hub |

---

## Motion & Interaction

### Transitions

Default: `all 0.3s ease` (`var(--transition)`)

### Hover Patterns

| Element | Transform | Shadow |
|---------|-----------|--------|
| Buttons | `translateY(-3px)` | `var(--box-shadow)` |
| Impact / speaker / pricing cards | `translateY(-5px)` | `var(--box-shadow)` |
| Contact options | `translateY(-4px) scale(1.04)` | — |
| Gallery images | `scale(1.05)` | — |
| Partner logos | `scale(1.05)` or `scale(1.1)` | — |

### Scroll

- `scroll-behavior: smooth` for anchor links
- Custom scrollbar: gold thumb, translucent track

---

## Accessibility

- **Focus states**: `outline: 2px solid #FFB800; outline-offset: 2px` on all interactive elements via `:focus-visible`
- **Never** use `outline: none` without providing an equivalent visible replacement
- **Contrast**: Primary text (`#FFFFFF`) on black is 21:1 (AAA); `--text-light` (`#A1A1AA`) is 5.2:1 (AA) — acceptable for UI labels
- **ARIA**: Add `aria-label` to icon-only links (speaker socials, partner logos); use `aria-current="page"` on active nav items
- **Image alt**: KV images in `.hero-right` carry `aria-hidden="true"` — do not add alt text to purely decorative images
- **Skip link**: Add `<a href="#main-content" class="skip-link">Skip to main content</a>` as the first element in `<body>`
- **Form submissions**: Ensure all forms have a server-side `action` fallback so submissions work without JavaScript

---

## Page-Specific Guidelines

### Landing Page

- Hero: two-column layout — title/badges on left, KV images on right
- Section order: Hero → Overview (#our-partners) → Timeline → Agenda → Speakers → Partners → Benefits → Venue → Gallery → Contact
- Partners: five tiers (Co-host → Strategic → Premium → Ecosystem → Community)

### Gallery

- Grid: `repeat(auto-fit, minmax(250px, 1fr))`, gap `20px`
- Responsive: 2 columns @ 768px, 1 column @ 480px
- Item aspect ratio: `4/3`

### Contact

- Background: `#18181b`
- Layout: flex wrap, centered, gap `32px`
- Mobile: column layout, reduced padding

---

## Brand Consistency

### Voice

- **Tone**: Confident, builder-focused, event-driven
- **Avoid**: Jargon overload, exclusivity without clarity

### Imagery

- Gallery: Real photos from past summits
- Partner logos: Consistent sizing — see partner logo table in Components section
- Hero: Dual KV illustrative backgrounds (not a single 3D render)

---

## Do's and Don'ts

| Do | Don't |
|----|-------|
| Use CSS custom properties for all colors, spacing, and typography | Hard-code hex values inline |
| Apply dog-ear clip-path to impact cards for brand consistency | Apply dog-ear to speaker cards, partner rows, or other components |
| Always wrap hero KV images in `<picture>` with WebP + PNG fallback | Use WebP-only images without a PNG fallback |
| Add `outline: 2px solid #FFB800` on `:focus-visible` for all interactive elements | Use `outline: none` without a replacement |
| Use Anton for all display/heading text | Use Anton for body copy or captions |
| Provide a server-side form action as JS fallback | Rely on JS-only form submission without a fallback |
| Specify logo size constraints from the partner logo table | Let logos scale freely without max-width/height |
| Keep primary (gold) usage intentional for CTAs and highlights | Use gold as a background fill for large areas |
| Preload `kv-bg-1.webp` and `logo.svg` in `<head>` | Lazy-load the LCP image |
