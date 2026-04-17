# Design System — Web3 Builders' Summit (LFBUIDL 2026)

Design principles, aesthetics, and guidelines for the Web3 Builders' Summit landing page.

---

## Design Philosophy

### Core Principles

1. **Event-focused** — The interface prioritizes clarity around the summit: timeline, partners, speakers, and networking. Every element should help attendees find what they need quickly.
2. **Dark-first** — Deep black backgrounds create focus and reduce eye strain. Gold accents signal energy and premium quality.
3. **Dog-ear** — Distinctive clipped corners on impact cards add visual interest and brand recognition.
4. **Professional yet energetic** — Conference credibility with Web3 energy. Balance tech-forward aesthetics with approachability.

### Aesthetic Direction

- **Dark-first** — Black (`#000000`) page background, dark secondary surfaces (`#0D0D10`, `#18181b`).
- **Gold accent** — Primary color `#FFB800` for CTAs, borders, highlights, and interactive elements.
- **Translucent surfaces** — `rgba(255, 255, 255, 0.05)` for cards and elevated surfaces.
- **Generous whitespace** — Section padding `80px` vertical; let content breathe.

---

## Color Palette

### Base Colors

| Token | Hex | Usage |
|-------|-----|-------|
| `--primary-color` | `#FFB800` | CTAs, accents, borders, highlights |
| `--secondary-color` | `#0D0D10` | Header, footer, tags |
| `--dark-color` | `#000000` | Page background |
| `--light-color` | `#FFFFFF` | Headings, primary text |
| `--text-color` | `#FFFFFF` | Body text |
| `--text-light` | `#A1A1AA` | Secondary text, captions, subtitles |

### Accent Colors

| Token | Hex | Usage |
|-------|-----|-------|
| `--accent-color` | `#FFB800` | Same as primary; interactive elements |

### Semantic Colors

- **Primary hover**: `#FFC94D` (button hover state)
- **Invite-only badge**: `#8B5CF6` (purple)
- **Approval badge**: `#F59E0B` (amber)
- **Contact section background**: `#18181b`
- **Construction banner**: `#ffd700` (banner background)

### Other Tokens

| Token | Value | Usage |
|-------|-------|-------|
| `--border-radius` | `8px` | Cards, buttons, inputs |
| `--box-shadow` | `0 8px 32px rgba(0, 0, 0, 0.2)` | Hover states |
| `--transition` | `all 0.3s ease` | Default transitions |
| `--dog-ear-size` | `30px` | Dog-ear clip-path size |

### Guidelines

- Use `--primary-color` for interactive elements and CTAs — it reads as "clickable" and aligns with premium event branding.
- Reserve semantic badge colors for event status (invite-only, approval required, free to enter).
- Avoid introducing new accent colors; extend the palette only when semantically necessary.

---

## Typography

### Font Stack

| Context | Font | Source | Weights | Usage |
|---------|------|---------|---------|-------|
| Display / Headers / Nav | Anton | Google Fonts | 400 | All headings (`h1`–`h4`), nav links, section titles |
| Body / UI | System SF Pro / sans-serif | System | 300–700 | Body text, paragraphs, captions |

**Default body font:** `system-ui, -apple-system, 'SF Pro Text', sans-serif`

**Display font:** `'Anton', sans-serif` — loaded via `<link href="https://fonts.googleapis.com/css2?family=Anton&display=swap">`

> Previously used NeueHaas Display, Fraktion Sans, and SP Pro. All custom font files have been removed; Anton (Google Fonts) replaced them for display use.

### Scale

- **Hero title**: responsive clamp with vh constraint (fits full viewport at all sizes, including 1280×580)
- **Section title large**: `3.5rem` (`2rem` on mobile, `1.75rem` @ 576px)
- **Section title**: `1.5rem`–`2rem`
- **Impact numbers**: `4rem`
- **Body / paragraphs**: `0.9rem`–`1rem`
- **Small / labels**: `0.8rem`–`0.85rem`

### Guidelines

- Use `letter-spacing: 2px` for uppercase section labels and titles.
- Use `letter-spacing: 1px` for buttons and small caps.
- Line height: `1.6` for body, `1.2` for headings.
- Section titles: `text-transform: uppercase`, `color: var(--text-light)`.

---

## Spacing & Layout

### Spacing Scale

| Token | Value | Usage |
|-------|-------|-------|
| Section padding | `80px 0` | Standard section vertical padding |
| Section padding (alternate) | `100px 0` | Hero, impact, some sections |
| Container padding | `0 20px` | Horizontal padding |
| Grid gaps | `1rem`–`4rem` | Between grid items |
| Contact options gap | `32px` | Between contact cards |

### Layout

- **Container**: `max-width: 1200px`, `margin: 0 auto`, horizontal padding `0 20px`.
- **Section padding**: `80px 0` vertical (some sections `100px 0`).
- **Hero padding-top**: `140px` (120px @ 992px, 80px @ 768px).

### Responsive Breakpoints

- **Desktop**: `≥ 993px`
- **Tablet**: `769px`–`992px`
- **Mobile**: `577px`–`768px`
- **Small mobile**: `< 576px`
- **Extra small**: `< 480px`

---

## Components

### Buttons

- **Primary** (`.btn-primary`): `#FFB800` background, dark text. Use for main CTAs (e.g., "Stay Tuned!", "Learn More").
- **Secondary** (`.btn-secondary`): Transparent background, white border. Use for secondary actions.
- **Outline** (`.btn-outline`): Transparent background, primary border. Hover: primary background.
- **Large** (`.btn-large`): `padding: 1rem 3rem`, `font-size: 1rem`.

Base: `text-transform: uppercase`, `letter-spacing: 1px`, `font-size: 14px`, `padding: 14px 28px` (CTA: `12px 24px`).

Hover: `translateY(-3px)`, `box-shadow: var(--box-shadow)`.

### Pill Badges

`.pill-badge` — small rounded capsule label used in the hero and as section dividers.

- Default: gold border, uppercase text, small font
- Large variant (`.pill-badge--lg`): larger padding, used in hero meta row
- Used in `.hero-badge-corner` for the "LFBUIDL" label, and in `.subsection-pill` as partner tier dividers

### Subsection Pills

`.subsection-pill` — section divider row combining a pill badge and gradient text label.

```html
<div class="subsection-pill">
  <span class="pill-badge">Ecosystem</span>
  <span class="subsection-pill-gradient">Partners</span>
</div>
```

Used to introduce Co-host / Strategic / Ecosystem / Community partner tiers.

### Impact Cards

- Apply `.impact-card` with `.dog-ear-top-right` or `.dog-ear-bottom-left`.
- Background: `rgba(255, 255, 255, 0.05)`.
- Border: `2px solid var(--primary-color)`.
- Hover: `translateY(-5px)`, `box-shadow`, `background-color: rgba(255, 184, 0, 0.1)`.

### Dog-Ear Utilities

```css
/* Top-right clipped corner */
.dog-ear-top-right {
  clip-path: polygon(0 0, calc(100% - var(--dog-ear-size)) 0, 100% var(--dog-ear-size), 100% 100%, 0 100%);
}

/* Bottom-left clipped corner */
.dog-ear-bottom-left {
  clip-path: polygon(0 0, 100% 0, 100% 100%, var(--dog-ear-size) 100%, 0 calc(100% - var(--dog-ear-size)));
}
```

### Speaker Info Cards

- Background: `rgba(255, 255, 255, 0.05)`.
- Border radius: `8px`.
- Hover: `translateY(-5px)`, `box-shadow`.

### Timeline Events

- Min width: `280px`.
- Padding: `2rem`.
- Event-type borders: `.w3bs-event`, `.davas-event`, `.main-event` (distinct border colors).
- Badges: `.event-status` with `.free-badge`, `.invite-only-badge`, `.approval-badge`.

### Agenda

The agenda section uses a phase-based layout (Morning / Afternoon / Evening):

- **`.agenda-phase`** — wraps each time block
- **`.agenda-phase-header`** — phase title + tag label (e.g. "Strategic Foundations & Policy")
- **`.agenda-rows`** — container for session rows
- **`.agenda-row`** — single session: time | badge | content
- **`.agenda-row-break`** — break row variant (dimmed styling)
- **`.agenda-dinner-grid`** — 2×2 card grid for the evening dinner activities
- **`.agenda-dinner-card`** — individual dinner activity card

Agenda badge classes:

| Class | Label | Usage |
|-------|-------|-------|
| `.badge-keynote` | Keynote | Opening/closing keynotes |
| `.badge-panel` | Panel N | Discussion panels |
| `.badge-debate` | Debate | Lightning debates |
| `.badge-showcase` | Showcase | Builder demo batches |
| `.badge-break` | Break | Networking/coffee breaks |
| `.badge-dinner` | varies | Evening dinner activities |

### Badges

| Class | Color | Usage |
|-------|-------|-------|
| `.free-badge` | `--primary-color` | Free to enter |
| `.invite-only-badge` | `#8B5CF6` | Invite only |
| `.approval-badge` | `#F59E0B` | Approval required |

### Contact Options

- Cards: `rgba(255, 255, 255, 0.03)` background, `var(--border-radius)`.
- Padding: `24px 32px`, min-width `120px`.
- Icons: `2.2rem`, `color: var(--primary-color)`.
- Hover: `background: var(--primary-color)`, `color: var(--dark-color)`, `translateY(-4px) scale(1.04)`.

### Pricing Tiers

- Background: `rgba(255, 255, 255, 0.05)`.
- Hover: lift, brighter background.

### Header

- Backdrop: `backdrop-filter: blur(10px)`.
- Background: `var(--secondary-color)`.

---

## Hero Section

### Structure

The hero uses two layered KV background images + centered content overlay:

```html
<section class="hero">
  <div class="hero-kv" aria-hidden="true">
    <!-- kv-bg-1.webp + kv-bg-2.webp stacked -->
  </div>
  <div class="hero-content">
    <div class="hero-title-row">        <!-- title + LFBUIDL badge -->
    <div class="hero-collab">           <!-- "In Collaboration with" + DAVAS logo -->
    <div class="hero-year-row">         <!-- large "2026" display -->
    <div class="hero-meta-row">         <!-- date pill | location | CTA button -->
  </div>
</section>
```

### KV Images

- `img/kv-bg-1.webp` and `img/kv-bg-2.webp` — WebP format (90%+ size reduction vs PNG originals).
- Both preloaded with `fetchpriority="high"` for LCP.
- CSS uses vh-constrained sizing to prevent overflow at small viewports (tested at 1280×580).

### Collaboration Branding

`.hero-collab` displays "In Collaboration with" + the DAVAS logo beneath the title row. This reflects the co-host partnership.

---

## Partners Section Structure

The Overview section (`#our-partners`) groups partners into four tiers, each preceded by a `.subsection-pill` divider:

| Tier | Partners |
|------|---------|
| Co-host | sqrDAO, DAVAS |
| Strategic | DISSC, Lisk |
| Ecosystem | Swiss EP, Aptos, Avalanche, Laguna Network |
| Community | Team1 (+ "To be updated...") |

Logos use `.strategic-partner-logo` class; the ecosystem/community rows add `.ecosystem-partners-logos` for a wider multi-column layout.

---

## Motion & Interaction

### Transitions

- Default: `all 0.3s ease` (`var(--transition)`).
- Use for: hover states, card lift, gallery zoom.

### Hover Patterns

- **Buttons**: `translateY(-3px)`, `box-shadow`.
- **Cards (impact, speaker, pricing)**: `translateY(-5px)`, `box-shadow`.
- **Contact options**: `translateY(-4px) scale(1.04)`, primary background.
- **Gallery items**: Image `scale(1.05)`.
- **Partner logos**: `scale(1.05)` or `scale(1.1)`, opacity change.

### Scroll

- Custom scrollbar: primary color thumb, translucent track.
- `scroll-behavior: smooth` for anchor links.

---

## Accessibility

- **Focus states**: Ensure visible focus rings on interactive elements (contact links, buttons). Avoid `outline: none` without replacement.
- **Contrast**: Primary text on dark background meets WCAG AA. Secondary text (`--text-light`) may need review for AAA.
- **Labels**: Section titles use uppercase and letter-spacing for hierarchy.
- **ARIA**: Buttons and links should have `aria-label` where icon-only or context is unclear.

---

## Page-Specific Guidelines

### Landing Page

- Hero: Full viewport height, centered content, dual KV background images (kv-bg-1 + kv-bg-2).
- Section order: Hero → Overview (Partners/Co-hosts) → Timeline → Impact → Agenda → Previous Summits (Gallery) → Speakers → Past Partners → Contact.
- Strategic partners: Tiered by role (Co-host → Strategic → Ecosystem → Community).
- Timeline: Horizontal scroll on desktop, event cards with date, type, description, CTA or status badge.
- Agenda: Phase-based table layout (Morning / Afternoon / Evening).

### Gallery

- Grid: `repeat(auto-fit, minmax(250px, 1fr))`, gap `20px`.
- Responsive: 2 columns @ 768px, 1 column @ 480px.
- Item aspect ratio: `4/3`.
- Hover: image `scale(1.05)`.

### Contact

- Background: `#18181b`.
- Contact options: flex wrap, centered, gap `32px`.
- Mobile: column layout, reduced padding.

---

## Brand Consistency

### Voice

- **Tone**: Confident, builder-focused, event-driven.
- **Avoid**: Jargon overload, exclusivity without clarity.

### Imagery

- Gallery: Real photos from past summits.
- Partner logos: Consistent sizing, grayscale or color as designed.
- Hero: Dual KV illustrative backgrounds (not a single 3D header image).

### External Resources

- Font Awesome 6.5.1 for icons (loaded async with `media="print"` trick).
- Google Fonts: Anton (display).
- Preload: kv-bg-1.webp, kv-bg-2.webp, logo.svg.

---

## Do's and Don'ts

### Do

- Use CSS custom properties for all colors, spacing, and typography.
- Apply dog-ear clip-path to impact cards for brand consistency.
- Keep primary (gold) usage intentional for CTAs and highlights.
- Maintain consistent section structure (section-title → section-title-large → content).
- Preload critical WebP images and logo for LCP.
- Use Anton for all display/heading text; system sans-serif for body.

### Don't

- Add new accent colors without design review.
- Use heavy borders; prefer `2px solid var(--primary-color)` for emphasis.
- Overuse uppercase; reserve for section labels and buttons.
- Introduce new font families (custom font files have been intentionally removed).
- Break the dark theme (e.g., white content blocks) without clear rationale.
- Use PNG for hero KV images — WebP only.

---

## File Reference

> File paths below are relative to the summit-landing project.

| File | Purpose |
|------|---------|
| `styles.css` | All styles, CSS variables, component classes |
| `index.html` | Main page structure and content |
| `scripts.js` | Menu, tabs, smooth scroll, forms |
| `img/kv-bg-1.webp` | Hero KV background 1 (WebP, preloaded) |
| `img/kv-bg-2.webp` | Hero KV background 2 (WebP, preloaded) |
| `img/` | Logos, favicons, partners, speakers, gallery, header |
| `vercel.json` | Deployment config |
