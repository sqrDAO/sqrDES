# Design Principles — EMpower Founders Residency

A reference guide for the visual language, component patterns, and conventions used across this site.

---

## Tech Stack

| Layer        | Choice                                    |
| ------------ | ----------------------------------------- |
| Framework    | React 18 + TypeScript                     |
| Build        | Vite 5                                    |
| Styling      | Custom CSS with CSS variables (no framework) |
| Icons        | Lucide React                              |
| Fonts        | Instrument Sans Variable, Roboto Mono     |
| Analytics    | Vercel Analytics                          |
| Deployment   | Vercel                                    |

---

## Color Palette

### Light theme (default)

| Token            | Value                    | Usage                         |
| ---------------- | ------------------------ | ----------------------------- |
| `--canvas`       | `#f8f8f8`                | Page background               |
| `--surface`      | `#ffffff`                | Cards, section backgrounds    |
| `--primary-text` | `#2f2f2f`                | Body text, headings           |
| `--accent`       | `#aeffc8`                | CTAs, highlights, gradients   |
| `--accent-dark`  | `#8ee8b0`                | Darker accent variant         |
| `--dither-gray`  | `#e5e5e5`               | SVG noise texture             |
| `--border`       | `rgba(47, 47, 47, 0.1)` | Card and divider borders      |

### Dark accent surfaces

| Token (hard-coded) | Value                      | Usage                                      |
| ------------------- | -------------------------- | ------------------------------------------ |
| `#1a1a1a`          | Near-black                  | Why Da Nang section bg, manifesto pullquote |
| `#f0f0f0`          | Off-white on dark           | Body text in dark sections                 |
| `#fff`             | Pure white on dark          | Headings in dark sections                  |
| `#2d6a4f`          | Deep green                  | Icon color on accent backgrounds           |

### Status colors

| Color                          | Usage                         |
| ------------------------------ | ----------------------------- |
| `#4ade80`                      | Pulsing status dot            |
| `rgba(74, 222, 128, 0.6)`     | Status dot glow               |
| `rgba(174, 255, 200, 0.45)`   | CTA hover box-shadow          |

The palette is intentionally minimal — a near-white canvas, soft borders, and a single **mint-green accent** that draws the eye to calls-to-action and key highlights. A dark (`#1a1a1a`) surface is used sparingly for contrast sections (Why Da Nang, manifesto pullquote). There is no system-wide dark mode.

---

## Typography

### Font Families

| Token            | Value                                               | Role                           |
| ---------------- | --------------------------------------------------- | ------------------------------ |
| `--font-heading` | `"Instrument Sans Variable", system-ui, sans-serif` | Headings and body              |
| `--font-body`    | `"Instrument Sans Variable", system-ui, sans-serif` | Body text (same as headings)   |
| `--font-mono`    | `"Roboto Mono", ui-monospace, monospace`             | Labels, dates, nav, badges     |

Stylistic sets are enabled globally: `font-feature-settings: "ss01" 1, "ss02" 1, "ss03" 1`.

### Scale (fluid)

| Element          | Size                              | Weight | Letter-spacing |
| ---------------- | --------------------------------- | ------ | -------------- |
| Hero headline    | `clamp(2.25rem, 6.5vw, 4.5rem)`  | 600    | `-0.03em`      |
| Hero subline     | `clamp(1rem, 2vw, 1.2rem)`       | 400    | —              |
| Section headings | `clamp(1.5rem, 4vw, 2.25rem)`    | 600    | `-0.03em`      |
| Why Da Nang title| `clamp(1.6rem, 4.5vw, 2.5rem)`   | 600    | `-0.02em`      |
| Stat primary     | `clamp(2.75rem, 7vw, 4rem)`      | 700    | `-0.03em`      |
| Body             | `0.88rem – 1rem`                  | 400    | —              |
| Section labels   | `0.7rem`                          | 500    | `0.1em`        |
| Small text       | `0.62rem – 0.85rem`              | 400    | —              |

Section labels are uppercase, monospace, and set at reduced opacity (`0.55`) to feel like metadata rather than content.

---

## Spacing & Layout

- **Max-width container:** `72rem` (1152px)
- **Narrower inner containers:** `52rem` (manifesto, origin), `44rem` (Why Da Nang), `36rem` (hero subline)
- **Section padding:** `clamp(4rem, 10vw, 7rem)` vertical, `clamp(1.5rem, 5vw, 3rem)` horizontal
- **Compact section variant:** `clamp(2.5rem, 6vw, 4rem)` vertical
- **Spacing scale:** `0.25rem`, `0.5rem`, `0.75rem`, `1rem`, `1.25rem`, `1.5rem`, `2rem`, `2.5rem` (rem-based)
- **Border radius:** `4px` (buttons), `6px` (cards), `8px` (images/carousel), `10px` (backer cards), `16px` (pullquote), `100px` / `999px` (pills)

The site is a single-page layout with vertically stacked sections, a sticky header, and a scroll progress bar. Smooth scrolling is enabled via `scroll-behavior: smooth`, and anchor links drive the navigation.

---

## Responsive Breakpoints

| Breakpoint | Target  | Key changes                                                            |
| ---------- | ------- | ---------------------------------------------------------------------- |
| `768px`    | Tablet  | Header nav → burger menu, nav becomes vertical dropdown                |
| `640px`    | Mobile  | Outcomes 3→1 col, weeks 4→2 col, backer cards stack, footer stacks, hero glance 5→2 col, apply card columns stack |

Responsive design relies on:
- `clamp()` for fluid typography and padding
- CSS grid `auto-fit` / `auto-fill` for flexible card layouts
- Explicit media queries for structural shifts (nav, grid columns)
- CSS mask for horizontal scroll-fade on mobile tabs

---

## Page Structure

```
<Header />              — Sticky nav + scroll progress bar
<SloganBanner />        — Scrolling marquee strip
<main>
  <Hero />              — Full-height hero with mouse-tracking gradient
  <Manifesto />         — Mission statement + dark pullquote
  <ResidencyComponents /> — Tabbed residency details (mentorship, perks, space)
  <WhyDaNang />         — Dark accent section with stats
  <Origin />            — Organizer backer cards + ecosystem partners + gallery carousel
  <ApplicationSection /> — Apply card with milestone track + CTA
  <FAQ />               — Two-column accordion
</main>
<Footer />              — Socials + copyright
```

---

## Component Patterns

### Architecture

- **One component per file**, PascalCase naming (`Hero.tsx`, `WhyDaNang.tsx`)
- **17 component files** in `src/components/`
- **Functional components** with TypeScript, default exports
- **Props-free** — components pull content from `src/lib/content.ts`
- **Semantic HTML** — `<section>`, `<article>`, `<header>`, `<nav>`, `<footer>`, `<time>`, `<button>`
- **Lucide React** icons used for visual indicators (outcomes, apply card, FAQ chevrons)

### CSS Conventions

- **BEM-like naming:** `.component__element--modifier` (e.g. `.header__brand`, `.hero__headline`, `.week-card--highlight`)
- **Utility classes** for shared patterns: `.mono`, `.card`, `.section`, `.section--surface`, `.section--compact`, `.dither-bg`, `.scroll-reveal`
- **No CSS-in-JS, no Tailwind** — all styles live in `src/index.css`
- Styles are organized by component, in the same order they appear on the page

### Recurring Patterns

| Pattern              | Description                                                                 |
| -------------------- | --------------------------------------------------------------------------- |
| Section              | Label (mono, uppercase, `0.55` opacity) + heading + content                 |
| Section (dark)       | `#1a1a1a` background, white/off-white text, used sparingly for contrast     |
| Card                 | White surface, thin border, `6px` radius, optional accent stripe            |
| Accent stripe        | `3px` gradient top-border on residency cards, animated draw via `scaleX`    |
| Tab strip            | Horizontal tab buttons with active underline, scrollable on mobile          |
| Carousel             | Prev/next buttons + dot indicators, `0.4s ease` slide transition            |
| Milestone track      | Horizontal bar with filled/unfilled dots, `done`/`next` states             |
| FAQ accordion        | `grid-template-rows: 0fr→1fr` expand/collapse, chevron rotation            |
| Stat block           | Large accent-colored value + small label underneath                         |
| Pill badge           | `border-radius: 100px`, accent background, used for role tags               |
| Status indicator     | Pulsing green dot (`#4ade80`) with glow                                     |
| Dither texture       | SVG fractal-noise background at `0.07` opacity                              |
| Photo strip          | 3-column edge-to-edge image grid (divider between sections)                 |
| Scroll progress bar  | 2px gradient bar at bottom of sticky header, tracks scroll position         |

---

## Content Management

All site content lives in `src/lib/content.ts` as typed, `as const` objects:

```
site, hero, origin, manifesto, residency, timeline,
application, outcomes, testimonials, faq, partners, footer, socials
```

There is no CMS, no markdown, no runtime parsing. Components import the specific content object they need. This keeps content type-safe, co-located, and easy to update in a single file.

---

## Animation & Interaction

### CSS Keyframe Animations

| Animation          | Duration / Easing               | Usage                                  |
| ------------------ | ------------------------------- | -------------------------------------- |
| `slogan-scroll`    | 28s linear infinite             | Horizontal scrolling marquee banner    |
| `pulse-dot`        | 2s ease-in-out infinite         | Status indicator dot                   |
| `hero-enter`       | 0.7s ease (staggered delays)   | Hero elements fade-in on load          |
| `tabFadeIn`        | 0.4s ease                       | Tab panel entrance                     |
| `highlightGlow`    | 2s ease (once, 0.8s delay)     | Week card highlight pulse              |
| `cta-glow`         | 2.5s ease-in-out infinite       | Apply CTA pulsing glow ring            |

### Transitions

- **Hover states:** `opacity 0.2s`, `transform 0.2s`, `box-shadow 0.2s`
- **Card entrances:** `opacity 0.4s ease, transform 0.4s ease`
- **Hero gradient:** `background 0.4s ease` (follows mouse via JS)
- **Tab panels:** `height 0.35s cubic-bezier(0.25, 1, 0.5, 1)` (smooth height change)
- **FAQ accordion:** `grid-template-rows 0.25s ease`
- **Date strip line:** `transform 0.8s cubic-bezier(0.25, 1, 0.5, 1)` (progressive draw)
- **Nav link underline:** `transform 0.25s cubic-bezier(0.25, 1, 0.5, 1)` (scaleX expand)
- **Burger animation:** `transform 0.3s, opacity 0.3s` (three-line to X)

### Scroll Animations

- **`.scroll-reveal`** — generic scroll-triggered fade-in via Intersection Observer: `filter: opacity(0)` + `translateY(20px)` → visible state. Supports staggered delays via `--reveal-delay` CSS variable.
- **`.residency-card`**, **`.space-location`**, **`.week-card`** — component-specific fade-in patterns with `translateY(16px)`.
- **`.date-strip`** — dots scale in with spring easing, line draws via `scaleX`, staggered via `--dot-delay`.
- **`.accent-draw`** — accent stripes animate from `scaleX(0)` to `scaleX(1)` on reveal.

### Hero Entrance

Staggered `hero-enter` animation on page load:
- Badge: `0.1s` delay
- Headline lines: individual `<span>` blocks with sequential delays
- Subline: `0.55s` delay
- CTA: `0.7s` delay
- Backed-by strip: `0.7s` delay
- At-a-glance grid: `0.85s` delay

### Reduced Motion

All animations and transitions are disabled when `prefers-reduced-motion: reduce` is active — covers hero, scroll reveals, slogan marquee, card entrances, CTA glow, status dot, progress bar, and hover transforms.

---

## Accessibility

- **Skip-to-content link** — hidden off-screen, appears on focus, links to `#main-content`
- **Focus styles** — `:focus-visible` with `2px solid var(--accent-dark)`, `2px` offset
- **Semantic HTML** throughout (`<header>`, `<main>`, `<section>`, `<nav>`, `<footer>`, `<time>`, `<button>`)
- **Proper heading hierarchy** (`h1` → `h2` → `h3`)
- **ARIA attributes:** `aria-label` on sections and interactive elements, `aria-labelledby` linking headings, `aria-hidden="true"` on decorative elements
- **Burger menu** — toggle button with proper accessible state management
- **FAQ** — interactive `<button>` questions with chevron rotation indicating open/closed
- **External links** use `target="_blank" rel="noopener noreferrer"`
- **Images:** meaningful `alt` text for content images, empty `alt=""` for decorative images
- **Lazy loading:** `loading="lazy"` on below-fold images
- **Reduced motion** — full `prefers-reduced-motion` support

---

## Image Handling

| Type        | Format   | Location             | Notes                                             |
| ----------- | -------- | -------------------- | ------------------------------------------------- |
| Photos      | JPG      | `/public/gallery/`   | Lazy-loaded, gallery carousel with 3-up layout    |
| Space photos| JPG/JPEG | `/public/space/`     | Carousel slides, `border-radius: 8px`             |
| Logos       | SVG/PNG  | `/public/logos/`     | Alt text provided, mixed formats                  |
| OG image    | JPG      | Root URL             | `https://www.web3foundersresidency.com/bg.jpg`    |
| Favicon     | Multi    | `/public/favicon/`   | ICO, PNG (16/32), Apple Touch, webmanifest        |

No image optimization library — the site relies on native lazy loading and pre-optimized static assets. Carousels use `object-fit: contain` for slides and `object-fit: cover` for photo strips.

---

## Interactive Components

### Burger Menu (mobile)

Three-line icon that transforms to an X on open via CSS transforms. The nav dropdown slides in below the header with a frosted-glass backdrop (`backdrop-filter: blur(12px)`). Links become full-width with bottom borders.

### Tab Strip (Residency section)

Horizontal tab buttons, scrollable on mobile with a fade-mask at the right edge. Active tab gets an accent underline (`border-bottom: 2px solid var(--accent-dark)`). Tab panels animate in via `tabFadeIn` and the container smoothly resizes height.

### Carousel (Space, Origin gallery)

Prev/next buttons appear on hover (opacity transition). Dot indicators below with active state scaling. Track transitions via `transform: translateX()`. Origin gallery shows 3 slides at a time.

### FAQ Accordion

Two-column masonry layout via CSS `columns: 2`. Each item uses a `<button>` trigger and a `grid-template-rows` transition for smooth expand/collapse. Chevron rotates 180 degrees on open. Hover shows subtle background tint.

### Milestone Track (Application)

Horizontal progress bar with 4 steps (dots + labels). Steps have three states: `done` (filled accent), `next` (outlined with glow ring), and default (muted). The fill bar width transitions to show progress.

---

## Design Philosophy (Summary)

1. **Minimal palette, maximum clarity** — near-white canvas, single mint-green accent, dark text. A near-black surface is used sparingly for contrast sections.
2. **One typeface, two roles** — Instrument Sans carries both headings and body; Roboto Mono marks metadata and labels.
3. **Content as code** — all copy lives in a single TypeScript file (`content.ts`), typed and versioned alongside the components.
4. **Fluid over fixed** — `clamp()` and CSS grid handle most responsiveness; hard breakpoints are reserved for structural layout changes.
5. **Motion with purpose** — staggered hero entrance, scroll-triggered reveals, a mouse-tracking gradient, progress bar, and pulsing status dots add life without distraction. Reduced-motion preferences are fully respected.
6. **Semantic by default** — proper HTML elements, ARIA attributes, skip links, focus styles, and lazy-loaded images ensure the site is accessible and performant.
7. **No abstractions for their own sake** — no CSS framework, no CSS-in-JS, no CMS. Plain CSS variables and a content file keep the system simple and portable.
8. **Progressive disclosure** — tabs, accordions, and carousels keep sections scannable while allowing users to dig deeper on demand.
