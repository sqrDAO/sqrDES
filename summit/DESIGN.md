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

The `#speakers` section appears **above** the Partners section.

- Grid: `repeat(auto-fill, minmax(250px, 1fr))`, gap `30px`.
- Card background: `rgba(255, 255, 255, 0.05)`, border-radius `8px`, padding `24px`.
- Avatar: `120px × 120px`, `border-radius: 50%`, `object-fit: cover`.
- `.speaker-socials` — flex row of X / LinkedIn icon links; color `var(--text-light)`, hover `var(--primary-color)`.
- Cards carry `data-organization` and `data-role` attributes for potential JS filtering.
- Section background: `var(--secondary-color)`.
- Hover: `translateY(-5px)`, `box-shadow`.

### Venue Section

The `#venue` section (after Benefits) shows the event venue.

- Background: `var(--dark-color)`.
- Two-column grid: `1fr 1fr`, gap `4rem`.
- Venue name: **Risemount Premier Resort Da Nang**, 120 Nguyen Van Thoai Street, Da Nang.
- `.venue-features` — icon + text feature list (WiFi, restaurant, parking, pool).
- Right column: Google Maps embed `iframe`.
- Section padding: `100px 0`.

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

The hero uses a two-column layout: title content on the left, KV images on the right.

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

### Snip Badges

`.snip-badge` — gold chamfered capsule label. Used in the hero for "LFBUIDL" and "MAY 25".

- `.snip-badge--corner-bl` — bottom-left corner snip via `clip-path`
- `.snip-badge--sm` — small size, inline next to BUILDERS' title word
- `.snip-badge--md` — medium size, used in date row for "MAY 25"
- Background `#ffc800`, color `#000`, font `Anton`, uppercase

> These replaced the `.pill-badge--corner` and `.hero-meta-row` pill from the previous hero design.

### Hero Text Classes

- `.hero-word` — large Anton display word
- `.hero-word-white` — `color: #ffffff`
- `.hero-word-yellow` — `color: #ffc800`
- `.hero-loc-label` — inline two-line "DANANG // VIETNAM" label on title line 2; small Anton, muted white
- `.hero-date-row` — flex row containing MAY 25 snip badge + `.hero-date-year`
- `.hero-date-year` — "2026" year in muted white, Anton

### KV Images

- `img/kv-bg-1.webp` / `img/kv-bg-2.webp` — WebP with PNG fallback via `<picture>` element.
- `kv-bg-1` has `fetchpriority="high"` for LCP; `kv-bg-2` uses `loading="eager"`.
- `img/logo.svg` overlaid on KV as `.hero-kv-logo`.

### Collaboration Branding

`.hero-collab` displays "In Collaboration with" + the DAVAS logo below the date row.

---

## Partners Section Structure

The `#partners` section groups partners into five tiers, each preceded by a `.subsection-pill` divider:

| Tier | Partners |
|------|---------|
| Co-host | sqrDAO, DAVAS |
| Strategic | DISSC, Lisk |
| Premium | NEBULUS |
| Ecosystem | Swiss EP, Aptos, Avalanche, Laguna Network |
| Community | Team1, Spores Network, Da Nang Blockchain Hub (+ "To be updated...") |

All logos are wrapped in anchor links. Logos use `.strategic-partner-logo`; Premium/Ecosystem/Community rows add `.ecosystem-partners-logos` for wider multi-column layout. NEBULUS has an additional `.nebulus-logo` class for custom sizing.

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

- Hero: Two-column layout — title/badges on left, KV images on right.
- Section order: Hero → Overview (#our-partners) → Timeline → Agenda → **Speakers** → **Partners** → Benefits → **Venue** → Gallery → Contact.
- Partners: Five tiers (Co-host → Strategic → Premium → Ecosystem → Community).
- Speakers section now appears above Partners.
- Timeline: Horizontal scroll on desktop, event cards with date, type, description, CTA or status badge.
- Agenda: Phase-based table layout (Morning / Afternoon / Evening).
- Venue: Risemount Premier Resort Da Nang, two-column info + map layout.

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
- Use WebP-only hero KV images without a PNG fallback — always wrap in `<picture>` with both formats.

---

## File Reference

> File paths below are relative to the summit-landing project.

| File | Purpose |
|------|---------|
| `styles.css` | All styles, CSS variables, component classes |
| `index.html` | Main page structure and content |
| `legal.html` | Terms & Conditions legal page |
| `scripts.js` | Menu, tabs, smooth scroll, forms |
| `img/kv-bg-1.webp` | Hero KV background 1 (WebP, `fetchpriority="high"`) |
| `img/kv-bg-1.png` | Hero KV background 1 fallback PNG |
| `img/kv-bg-2.webp` | Hero KV background 2 (WebP) |
| `img/kv-bg-2.png` | Hero KV background 2 fallback PNG |
| `img/speakers/` | Speaker portrait images |
| `img/partners/` | Partner logos (PNG/SVG) |
| `img/` | Logos, favicons, gallery, media coverage |
| `vercel.json` | Deployment config |
