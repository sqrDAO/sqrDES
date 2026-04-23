---
design-system: "Da Nang Blockchain Hub"
version: "1.1.0"
colors:
  background: "#231F20"
  surface: "#2F2B2C"
  text-primary: "#FFFFFF"
  text-primary-light: "#231F20"
  text-secondary: "#DCDCDC"
  light-background: "#FFF2DD"
  light-surface: "#FFFFFF"
  accent: "#FFA406"
  accent-secondary: "#FFE6BB"
  accent-gradient: "linear-gradient(135deg, #FFA406, #FFE6BB)"
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
  xl: "4rem"
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

**Tech stack**: Vanilla HTML/CSS with CSS custom properties. No frameworks.

**Getting started**:
1. Self-host Wolgen as `@font-face` (see Typography section for snippet)
2. Import Helvetica Neue via system font stack — no additional loading needed
3. Set CSS custom properties in `:root` (see `src/style.css`)
4. Apply `.glass` class to elevated surfaces

| File | Purpose |
|------|---------|
| `src/style.css` | All styles, CSS custom properties, component classes |
| `src/template.html` | Main landing page structure |
| `public/assets/` | Logos, favicons, partner assets |
| `src/assets/logos/` | Brand kit logo variants |

---

## Colors

> Source of truth: **Da Nang Blockchain Hub Brand Kit** (`assets/Da Nang Blockchain Hub Brand Kit.svg`).

### Official Brand Colors

| Name | Hex | Role |
|------|-----|------|
| Near Black | `#231F20` | Primary dark background |
| Dark Charcoal | `#2F2B2C` | Secondary dark surface |
| Amber / Gold | `#FFA406` | Primary brand accent |
| Warm Cream | `#FFF2DD` | Primary light background |
| Light Peach | `#FFE6BB` | Secondary warm accent |
| Neutral Gray | `#DCDCDC` | Muted text on dark |

### CSS Custom Properties

```css
:root {
  --bg-color: #231F20;
  --surface-color: #2F2B2C;
  --bg-light: #FFF2DD;
  --text-primary: #ffffff;
  --text-primary-light: #231F20;
  --text-secondary: #DCDCDC;
  --accent-primary: #FFA406;
  --accent-secondary: #FFE6BB;
  --accent-gradient: linear-gradient(135deg, #FFA406, #FFE6BB);
  --border-radius: 12px;
  --spacing-sm: 0.5rem;
  --spacing-md: 1rem;
  --spacing-lg: 2rem;
  --spacing-xl: 4rem;
}
```

### Semantic Colors

| State | Value | Usage |
|-------|-------|-------|
| Success | `#4ade80` | Form success feedback |
| Error | `#f87171` | Form error feedback |

### WCAG Contrast Ratios (on `#231F20` background)

| Color | Hex | Ratio | Grade |
|-------|-----|-------|-------|
| Primary text | `#FFFFFF` | ~17:1 | AAA |
| Amber accent | `#FFA406` | ~9.6:1 | AAA |
| Secondary text | `#DCDCDC` | ~10.2:1 | AAA |

### Guidelines

- Use `--accent-primary` (amber `#FFA406`) for interactive elements and links.
- `--accent-secondary` (warm peach `#FFE6BB`) is for softer highlights only — never as a primary action color.
- Reserve the amber gradient for hero highlights and primary CTAs only.
- Avoid cool-toned accents (blue, cyan, violet). Exception: semantic success/error colors.

---

## Typography

### Font Stack

| Role | Font | Weights | Usage |
|------|------|---------|-------|
| Display / Headings | Wolgen | 700, 900 | Hero titles, section headings, brand wordmark |
| Body / UI | Helvetica Neue | 300, 400, 700 | Body text, captions, labels, UI elements |

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
| Section vertical padding | `var(--spacing-xl)` (4rem; 3rem on mobile) |

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

Da Nang Hub uses **glassmorphism** to communicate depth — frosted surfaces with amber-tinted borders float above the dark near-black background.

| Level | Background | Backdrop Filter | Border |
|-------|-----------|-----------------|--------|
| Canvas | `#231F20` | none | none |
| Surface / Footer | `#2F2B2C` | none | none |
| Glass card | `rgba(255,255,255,0.03)` | `blur(10px)` | `1px solid rgba(255,164,6,0.12)` |
| Glass hover | `rgba(255,255,255,0.06)` | `blur(10px)` | `1px solid rgba(255,164,6,0.30)` |
| Modal overlay | `rgba(0,0,0,0.85)` | `blur(8px)` | — |
| Modal content | `rgba(255,255,255,0.05)` | `blur(10px)` | `1px solid rgba(255,164,6,0.20)` |

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

- Surface: `.glass`
- Hover: `translateY(-5px)` + increased background opacity + stronger amber-tinted border

| State | Visual |
|-------|--------|
| Default | `.glass` (3% white bg, 12% amber border) |
| Hover | 6% white bg + 30% amber border + `translateY(-5px)` |
| Focus (keyboard) | `outline: 2px solid #FFA406; outline-offset: 2px` |
| Loading | Shimmer overlay at 4% amber opacity |

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

Four canonical logo variants from the brand kit:

| Background | Logo Variant |
|-----------|--------------|
| Cream `#FFF2DD` | Amber/dark logo |
| White `#FFFFFF` | Dark logo |
| Dark `#231F20` | Amber/white logo |
| Amber `#FFA406` | Cream/white logo |

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
| Apply `.glass` for elevated surfaces | Use heavy opaque borders on cards |
| Provide `@supports not (backdrop-filter)` fallback for glass surfaces | Assume backdrop-filter works universally |
| Self-host Wolgen from a licensed package | Use Wolgen via an unlicensed CDN |
| Include Vietnamese glyph range in font-face declarations | Assume Latin-only glyphs cover VI content |
| Keep amber gradient usage intentional and sparse | Use gradient on large background fills |
| Implement focus trap + Escape key for modals | Open modals without ARIA role and focus management |
| Test in both EN and VI for typography and layout | Release without checking Vietnamese character rendering |
| Use the four canonical brand kit background combos | Introduce new background colors without design review |
| Use cool-toned accents only for semantic states (success/error) | Add blue, cyan, or violet as decorative accents |
