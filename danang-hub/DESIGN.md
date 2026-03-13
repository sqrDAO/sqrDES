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

- **Dark-first** — Deep, rich dark backgrounds create focus and reduce eye strain for long sessions.
- **Glassmorphism** — Frosted glass surfaces add depth and hierarchy without heavy borders.
- **Gradient accents** — Violet-to-cyan gradients signal innovation and energy without overwhelming.
- **Generous whitespace** — Let content breathe. Avoid clutter; prioritize scannability.

---

## Color Palette

### Base Colors

| Token | Hex | Usage |
|-------|-----|-------|
| `--bg-color` | `#0d0d12` | Page background |
| `--surface-color` | `#16161e` | Cards, footer, elevated surfaces |
| `--text-primary` | `#ffffff` | Headings, primary content |
| `--text-secondary` | `#a1a1aa` | Body text, captions, subtitles |

### Accent Colors

| Token | Hex | Usage |
|-------|-----|-------|
| `--accent-primary` | `#7c3aed` | Primary CTAs, gradient start |
| `--accent-secondary` | `#22d3ee` | Links, icons, badges, gradient end |
| `--accent-gradient` | `linear-gradient(135deg, violet, cyan)` | Hero text, primary buttons |

### Semantic Colors

- **Success**: `#4ade80` (form success states)
- **Error**: `#f87171` (form error states)

### Guidelines

- Use `--accent-secondary` (cyan) for interactive elements and links — it reads as "clickable" and aligns with tech/Web3 associations.
- Reserve the full gradient for hero highlights and primary CTAs only.
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
- Gradient text: apply `.gradient-text` to key phrases only (e.g., "Builders-First" in hero).

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
border: 1px solid rgba(255, 255, 255, 0.08);
border-radius: var(--border-radius);
```

Use for: header, cards, modals, partner strips, location info cards.

### Buttons

- **Primary** (`.btn-primary`): Gradient background, white text. Use for main CTAs (e.g., "Open Hub App", "Subscribe to Calendar").
- **Secondary** (`.btn-secondary`): Translucent background, subtle border. Use for secondary actions (e.g., "Connect With Us", "View SOPs").

Hover: slight `translateY(-2px)` and soft shadow.

### Cards

- Apply `.glass` for surface.
- Hover: `translateY(-5px)`, increased background opacity, stronger border.
- Card icons use `--accent-secondary`.

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

- **Links**: Opacity 0.8 → 1, color → `--accent-secondary`.
- **Buttons**: `translateY(-2px)`, shadow.
- **Cards**: `translateY(-5px)`, background brightening.
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
- Markdown content: styled headings, list markers in `--accent-secondary`, links in cyan.

### Brand Kit

- Logo cards: Preview area (light/dark) + metadata + download.
- Use brand gradient for dark preview backgrounds.

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
- Keep gradient usage intentional and sparse.
- Maintain consistent section structure (title → subtitle → content).
- Test in both EN and VI for typography and layout (check that the 20% font-size reduction for VI maintains design balance).

### Don't

- Add new accent colors without design review.
- Use heavy borders; prefer subtle glass edges.
- Overuse gradient text.
- Introduce new font families.
- Break the dark theme (e.g., white content blocks) without clear rationale.

---

## File Reference

> File paths below are relative to the danang-hub-landing project.

| File | Purpose |
|------|---------|
| `src/style.css` | All styles, CSS variables, component classes |
| `src/template.html` | Main landing page structure |
| `public/assets/` | Logos, favicons, partner assets |
| `src/assets/logos/` | Brand kit logo variants |
