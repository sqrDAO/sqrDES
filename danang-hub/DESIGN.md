# Design System — Da Nang Blockchain Hub

Design principles, aesthetics, and guidelines for the Da Nang Blockchain Hub landing site and sub-pages.

---

## Design Philosophy

### Core Principles

1. **Builders-first** — The interface prioritizes clarity and action. Every element should help builders find what they need quickly.
2. **Chain-agnostic** — The visual language is inclusive and neutral. Avoid chain-specific imagery or colors that suggest exclusivity.
3. **Community-centric** — Warm, approachable, and human. The design should feel like a hub, not a corporate portal.
4. **Professional yet approachable** — Web3 credibility without coldness. Balance tech-forward aesthetics with warmth.

### Aesthetic Direction

- **Dark-first** — Warm near-black backgrounds (`#231F20`) create focus and a distinctive identity.
- **Glassmorphism** — Frosted glass surfaces add depth and hierarchy without heavy borders.
- **Amber accent** — The primary brand accent is amber/gold (`#FFA406`), warm and distinctive against dark backgrounds.
- **Warm tones** — The palette avoids cool blues/cyans; everything leans warm (amber, cream, charcoal) for a grounded, community feel.
- **Generous whitespace** — Let content breathe. Avoid clutter; prioritize scannability.

---

## Color Palette

> Source of truth: **Da Nang Blockchain Hub Brand Kit** (`Da Nang Blockchain Hub Brank Kit.svg`).

### Official Brand Colors (from Brand Kit)

| Name | Hex | Role |
|------|-----|------|
| Near Black | `#231F20` | Primary dark background |
| Dark Charcoal | `#2F2B2C` | Secondary dark surface |
| Amber / Gold | `#FFA406` | Primary brand accent |
| Warm Cream | `#FFF2DD` | Primary light background |
| Light Peach | `#FFE6BB` | Secondary warm accent |
| Neutral Gray | `#DCDCDC` | Muted text on dark |

### Base Colors

| Token | Hex | Usage |
|-------|-----|-------|
| `--bg-color` | `#231F20` | Page background (warm near-black) |
| `--surface-color` | `#2F2B2C` | Cards, footer, elevated surfaces (dark charcoal) |
| `--bg-light` | `#FFF2DD` | Light-mode / inverted backgrounds (warm cream) |
| `--text-primary` | `#ffffff` | Headings, primary content on dark |
| `--text-primary-light` | `#231F20` | Headings, primary content on light/cream |
| `--text-secondary` | `#DCDCDC` | Body text, captions, subtitles on dark |

### Accent Colors

| Token | Hex | Usage |
|-------|-----|-------|
| `--accent-primary` | `#FFA406` | Primary CTAs, highlights, brand accent (amber/gold) |
| `--accent-secondary` | `#FFE6BB` | Softer accent, icon fills, secondary highlights (warm peach) |
| `--accent-gradient` | `linear-gradient(135deg, #FFA406, #FFE6BB)` | Hero text, primary buttons |

### Semantic Colors

- **Success**: `#4ade80` (form success states)
- **Error**: `#f87171` (form error states)

### Guidelines

- Use `--accent-primary` (amber `#FFA406`) for interactive elements and links — it reads as "clickable" and is the brand's signature color.
- `--accent-secondary` (warm peach `#FFE6BB`) is for softer highlights; never use it as a primary action color.
- Reserve the full amber gradient for hero highlights and primary CTAs only.
- Avoid cool-toned accents (blue, cyan, violet) — they conflict with the warm brand palette.
- Avoid introducing new accent colors; extend the palette only when semantically necessary.

---

## Typography

### Font Stack

| Context | Font | Weights | Usage |
|---------|------|---------|-------|
| Primary (EN) | Outfit | 300, 400, 600, 700 | Body, headings, UI |
| Vietnamese | Be Vietnam Pro | 300, 400, 600, 700 | All content when `lang="vi"` |

> **Note**: The `Be Vietnam Pro` font has a larger visual footprint. When active (`lang="vi"`), the base font size is reduced to `80%` on the `html` element to maintain visual consistency with the English version.

### Scale

- **Hero title**: `4rem` (responsive: `clamp(1.8rem, 7vw, 2.3rem)` on mobile)
- **Section title**: `2.5rem` (1.75rem on mobile)
- **Card title**: `1.5rem`
- **Body**: `1rem`–`1.1rem`
- **Small / captions**: `0.85rem`–`0.95rem`

### Guidelines

- Use `letter-spacing: -0.03em` for large headings.
- Line height: `1.6` for body, `1.1` for hero titles.
- Gradient text: apply `.gradient-text` (amber → warm peach) to key phrases only (e.g., "Builders-First" in hero).

---

## Spacing & Layout

### Spacing Scale

| Token | Value | Usage |
|-------|-------|-------|
| `--spacing-sm` | `0.5rem` | Tight gaps, icon margins |
| `--spacing-md` | `1rem` | Default gaps, padding |
| `--spacing-lg` | `2rem` | Section internal spacing |
| `--spacing-xl` | `4rem` | Section padding (3rem on mobile) |

### Layout

- **Container**: `max-width: 1280px`, horizontal padding `var(--spacing-lg)`.
- **Section padding**: `var(--spacing-xl)` vertical.
- **Header height**: `80px` (mobile/tablet), `60px` (desktop).

### Responsive Breakpoints

- **Mobile**: `< 768px`
- **Tablet**: `768px`–`1024px`
- **Desktop**: `≥ 1025px`

---

## Components

### Glass (.glass)

The signature surface treatment:

```css
background: rgba(255, 255, 255, 0.03);
backdrop-filter: blur(10px);
border: 1px solid rgba(255, 164, 6, 0.12); /* amber-tinted border */
border-radius: var(--border-radius);
```

Use for: header, cards, modals, partner strips, location info cards.

> Note: Border tint uses amber (`#FFA406`) at low opacity for brand consistency — preferred over neutral white borders.

### Buttons

- **Primary** (`.btn-primary`): Amber gradient background (`#FFA406` → `#FFE6BB`), dark text (`#231F20`). Use for main CTAs (e.g., "Open Hub App", "Subscribe to Calendar").
- **Secondary** (`.btn-secondary`): Translucent background, amber-tinted border. Use for secondary actions (e.g., "Connect With Us", "View SOPs").

Hover: slight `translateY(-2px)` and warm amber glow shadow.

### Cards

- Apply `.glass` for surface.
- Hover: `translateY(-5px)`, increased background opacity, stronger amber-tinted border.
- Card icons use `--accent-primary` (amber `#FFA406`).

### Forms

- Inputs: `rgba(255, 255, 255, 0.05)` background, `rgba(255, 255, 255, 0.1)` border.
- Focus: `--accent-primary` border, slightly brighter background.
- Use `.visually-hidden` for labels when placeholders suffice; keep labels for accessibility.

### Modals & Overlays

- Overlay: `rgba(0, 0, 0, 0.85)`–`0.95` with `backdrop-filter: blur(8px)`.
- Content: `.glass`, centered, max-width constrained.
- Close buttons: circular, translucent, rotate 90° on hover.

---

## Motion & Interaction

### Transitions

- Default: `all 0.3s ease`.
- Use for: hover states, modal open/close, lightbox.

### Hover Patterns

- **Links**: Opacity 0.8 → 1, color → `--accent-primary` (amber).
- **Buttons**: `translateY(-2px)`, amber glow shadow.
- **Cards**: `translateY(-5px)`, background brightening, stronger amber border.
- **Gallery items**: `translateY(-5px)`, image scale `1.1`, overlay reveal.

### Scroll

- `scroll-behavior: smooth`.
- `scroll-padding-top` accounts for fixed header.
- `scroll-margin-top` on sections for anchor navigation.

---

## Accessibility

- **Focus states**: Ensure visible focus rings on interactive elements (browsers provide defaults; avoid `outline: none` without replacement).
- **Contrast**: Primary text on dark background meets WCAG AA. Secondary text may need review for AAA.
- **Labels**: Use `.visually-hidden` for form labels when design uses placeholders; never omit labels.
- **ARIA**: Modals use `role="dialog"`, `aria-modal="true"`, `aria-labelledby`. Buttons have `aria-label` where icon-only.
- **Language**: `[lang="vi"]` switches to Be Vietnam Pro for Vietnamese content.

---

## Page-Specific Guidelines

### Landing Page

- Hero: Full viewport height, centered content, radial gradient glow.
- Section order: About → Leadership → Activities → Location → Calendar → Contact.
- Gallery: Paginated (6 per page), lightbox with keyboard nav.

### Sub-pages (SOPs, Brand Kit, Event Guidelines)

- Same header/footer as landing.
- Content area: `max-width: 52rem`–`56rem`, centered.
- Markdown content: styled headings, list markers in `--accent-primary` (amber), links in amber.

### Brand Kit

- Logo cards: Preview area (light/dark/amber) + metadata + download.
- Use three canonical background combinations from the brand kit:
  - **Light**: Cream (`#FFF2DD`) background — for dark logo variants
  - **Dark**: Near-black (`#231F20`) background — for light/amber logo variants
  - **Amber**: Gold (`#FFA406`) background — for dark logo variants
- Use amber gradient for dark preview backgrounds.

---

## Brand Consistency

### Voice

- **Tone**: Confident, inclusive, builder-focused.
- **Avoid**: Jargon overload, exclusivity, corporate stiffness.

### Imagery

- Gallery: Real community photos, workshops, events.
- Partner logos: Consistent sizing, grayscale by default with color on hover (where applicable).

### External Embeds

- Calendar (Luma): Use dark theme variant.
- Map: Apply `filter: invert(90%) hue-rotate(180deg)` for dark-mode consistency.

---

## Do's and Don'ts

### Do

- Use CSS custom properties for all colors, spacing, and typography.
- Apply `.glass` for elevated surfaces.
- Keep gradient usage intentional and sparse (amber → warm peach only).
- Maintain consistent section structure (title → subtitle → content).
- Test in both EN and VI for typography and layout (check that the 20% font-size reduction for VI maintains design balance).
- Use the three canonical background combos from the brand kit: cream, dark near-black, amber.

### Don't

- Add cool-toned accents (violet, cyan, blue) — they conflict with the warm amber brand palette.
- Add new accent colors without design review.
- Use heavy borders; prefer subtle amber-tinted glass edges.
- Overuse gradient text.
- Introduce new font families.
- Break the dark warm theme (e.g., pure `#000000` or pure cool-gray backgrounds) without clear rationale.

---

## File Reference

> File paths below are relative to the danang-hub-landing project.

| File | Purpose |
|------|---------|
| `src/style.css` | All styles, CSS variables, component classes |
| `src/template.html` | Main landing page structure |
| `public/assets/` | Logos, favicons, partner assets |
| `src/assets/logos/` | Brand kit logo variants |
