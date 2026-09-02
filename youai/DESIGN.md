---
design-system: "YouAI"
version: "2.0.0"
colors:
  background: "#0A0A0A"
  surface: "#1A1A1A"
  surface-alt: "#181818"
  elevation-1: "#141414"
  elevation-2: "#1A1A1A"
  border: "#222222"
  text-primary: "#FFFFFF"
  text-secondary: "#B3B3B3"
  # Metadata only. 3.45:1 on the canvas, 3.54:1 on the light ground — under AA
  # in both modes. See Text for the two ways out.
  text-muted: "#666666"
  text-disabled: "rgba(179, 179, 179, 0.4)"
  accent: "#FFC700"
  # Mode-aware: the light hover is #E0B400, not this one. Read the token, never
  # the literal.
  accent-hover: "#e6b800"
  # Two roles, two tokens, deliberately. `on-accent` is the ink that sits ON a
  # gold fill; the fill is the same gold in both modes, so the ink does not
  # change. `gold-ink` is gold-coloured *text* on the page background, which has
  # to darken in light mode. One token cannot carry both — see Light Mode.
  on-accent: "#181818"
  gold-ink: "#FFC700"
  grid: "rgba(255, 199, 0, 0.05)"
  # Canonical semantic values are the 700 shades. These are fill/badge/border
  # values; semantic *text* uses a different shade per mode, see Agent Status.
  semantic-info: "#0066CC"
  semantic-success: "#009900"
  semantic-warning: "#999900"
  semantic-error: "#990000"
  semantic-info-text-dark: "#66B7FF"
  semantic-success-text-dark: "#66FF66"
  semantic-warning-text-dark: "#FFFF66"
  semantic-error-text-dark: "#FF6666"
colors-light:
  # The sqrDAO master warm light palette. Warm off-white and taupe, never a cool
  # inversion of the dark ramp.
  background: "#FAF9F6"
  surface: "#FFFFFF"
  surface-alt: "#F2F0EA"
  elevation-1: "#F2F0EA"
  elevation-2: "#E9E6DE"
  border: "#E4E0D6"
  text-primary: "#181818"
  text-secondary: "#5C574C"
  text-muted: "#8A8474"
  text-disabled: "rgba(92, 87, 76, 0.4)"
  accent: "#FFC700"
  accent-hover: "#E0B400"
  on-accent: "#181818"
  gold-ink: "#7A5E00"
  grid: "rgba(122, 94, 0, 0.06)"
secondary-accent:
  # Teal, sparing — roughly 80/20 behind gold. `main` is a fill/marker/stripe
  # value. Teal *text* picks by mode: `light-on-dark` on the dark canvas,
  # `dark` on the light ground. See Secondary Accent.
  main: "#3F7A6E"
  light-on-dark: "#5A9488"
  dark: "#2F665B"
typography:
  display:
    fontFamily: "'Instrument Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontWeight: 700
    letterSpacing: "-0.02em"
  body:
    fontFamily: "'Instrument Sans', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontWeight: 400
    fontSize: "1rem"
    lineHeight: 1.6
  ui:
    fontFamily: "'IBM Plex Mono', ui-monospace, SFMono-Regular, 'SF Mono', Menlo, Consolas, monospace"
    fontWeight: 600
    textTransform: "uppercase"
    letterSpacing: "0.08em"
    fontSize: "0.75rem"
  code:
    fontFamily: "'JetBrains Mono', 'SF Mono', Menlo, Monaco, Consolas, monospace"
    fontWeight: 400
    fontSize: "0.875rem"
spacing:
  base: "8px"
  xs: "4px"
  sm: "8px"
  md: "16px"
  lg: "24px"
  xl: "32px"
  xxl: "48px"
breakpoints:
  xs: "0px"
  sm: "600px"
  md: "900px"
  lg: "1200px"
  xl: "1536px"
components:
  button:
    radius: "4px"
    fontFamily: "'IBM Plex Mono', monospace"
    fontWeight: 600
    textTransform: "uppercase"
    letterSpacing: "0.08em"
    fontSize: "0.75rem"
    transition: "all 0.2s ease"
    background: "#FFC700"
    color: "#181818"
    hoverBackground: "#e6b800"
    hoverGlow: "0 0 20px rgba(255, 199, 0, 0.28)"
    outlinedBorder: "1px solid #FFC700"
    outlinedColor: "#FFC700"
    outlinedHoverFill: "rgba(255, 199, 0, 0.08)"
    quietBorder: "1px solid #222222"
    quietColor: "#B3B3B3"
  card:
    radius: "6px"
    background: "#1A1A1A"
    border: "1px solid #222222"
    accentStripe: "2px solid #FFC700"
    hoverBorder: "rgba(255, 199, 0, 0.40)"
    hoverShadow: "0 2px 8px 0 rgba(255, 199, 0, 0.10)"
    selectedFill: "rgba(255, 199, 0, 0.06)"
    transition: "all 0.3s ease"
  input:
    radius: "4px"
    fontFamily: "'IBM Plex Mono', monospace"
    background: "rgba(255, 199, 0, 0.04)"
    border: "1px solid #222222"
    focusBorder: "#FFC700"
    focusGlow: "0 0 0 2px rgba(255, 199, 0, 0.25)"
  chip:
    radius: "4px"
    fontSize: "0.6875rem"
    background: "rgba(255, 199, 0, 0.12)"
    color: "#FFC700"
    neutralBackground: "#0A0A0A"
    neutralBorder: "1px solid #222222"
    neutralColor: "#B3B3B3"
  tab:
    fontSize: "0.6875rem"
    letterSpacing: "0.1em"
    activeIndicator: "2px solid #FFC700"
    activeColor: "#FFFFFF"
    inactiveColor: "#B3B3B3"
  dialog:
    radius: "8px"
    background: "#1A1A1A"
    border: "1px solid rgba(255, 199, 0, 0.25)"
    glow: "0 0 20px rgba(255, 199, 0, 0.20)"
    overlay: "rgba(0, 0, 0, 0.85)"
    overlayBlur: "blur(8px)"
  scrollbar:
    width: "6px"
    radius: "3px"
    track: "#0A0A0A"
    thumb: "#222222"
    thumbHover: "#B3B3B3"
  focus:
    outline: "2px solid #FFC700"
    outlineOffset: "2px"
    glow: "0 0 0 2px rgba(255, 199, 0, 0.25)"
# Component values that hard-code a palette colour must be re-pointed here too,
# or the alias stays frozen at its dark value while the page around it turns
# light. Overrides only; anything absent inherits the :root value. Values that
# are deliberately identical in both modes (a gold fill, ink on gold) are
# restated rather than omitted — the build cannot tell an intentional constant
# from a forgotten one, and warns for every component hex light mode re-points.
components-light:
  button:
    background: "#FFC700"
    color: "#181818"
    hoverBackground: "#E0B400"
    outlinedBorder: "1px solid #FFC700"
    outlinedColor: "#7A5E00"
    quietBorder: "1px solid #E4E0D6"
    quietColor: "#5C574C"
  card:
    background: "#FFFFFF"
    border: "1px solid #E4E0D6"
    accentStripe: "2px solid #FFC700"
  input:
    border: "1px solid #E4E0D6"
    focusBorder: "#7A5E00"
  chip:
    color: "#7A5E00"
    neutralBackground: "#FAF9F6"
    neutralBorder: "1px solid #E4E0D6"
    neutralColor: "#5C574C"
  tab:
    activeIndicator: "2px solid #FFC700"
    activeColor: "#181818"
    inactiveColor: "#5C574C"
  dialog:
    background: "#FFFFFF"
    border: "1px solid #E4E0D6"
    glow: "none"
    overlay: "rgba(24, 24, 24, 0.45)"
  scrollbar:
    track: "#FAF9F6"
    thumb: "#E4E0D6"
    thumbHover: "#8A8474"
  focus:
    # Gold is 1.5:1 on #FAF9F6 — below the 3:1 WCAG 1.4.11 minimum for a
    # non-text indicator. The light focus ring uses gold-ink (5.8:1).
    outline: "2px solid #7A5E00"
---

# YouAI Design System v2 — "Precision Gold"

YouAI is a personal assistant that lives in the cloud, powered by OpenClaw and always on.

v2 moves YouAI onto the sqrDAO master palette and typeface while keeping the structural
character that made it recognisable as a technical product. In one line: **sqrDAO's colours
and type, YouAI's geometry and chrome.**

---

## Overview

**Aesthetic identity**: near-black canvas, a single gold accent, sharp geometry, and
all-caps monospace chrome. Everything reads as engineered and deliberate. No decorative
curves, no gradients, no soft pastels.

**Tech stack**: React + MUI v5 with a custom theme provider. Instrument Sans (display and
body), IBM Plex Mono (UI chrome), JetBrains Mono (code), all from Google Fonts.

**Getting started**:
1. Load the three fonts in `index.html`.
2. Import the generated tokens (`tokens/youai.css`) or the app's own variable sheet.
3. Wrap the app in the YouAI MUI theme via `createAppTheme('dark')`.
4. Apply the dot-grid texture to the page canvas only.

| Concern | File |
|---------|------|
| MUI theme, palette, type scale, component overrides | `src/theme/theme.ts` |
| CSS custom properties (everything outside MUI) | `src/styles/shared-variables.css` |
| Canvas, dot-grid, scrollbar | `src/index.css`, `src/App.css` |
| Radius set | `RADIUS` in `src/theme/theme.ts` |
| Agent status text colours | `STATUS_TEXT` in `src/theme/theme.ts` |
| Block wordmark lockup | `src/components/brand/BlockWordmark.tsx` |

The theme is the source of truth for MUI components; the CSS variables cover everything
else. The two must stay in sync, and both must agree with this document.

---

## What changed from v1.1.0

| Concern | v1.1.0 "Precision Claw" | v2.0.0 "Precision Gold" | Why |
|---------|-------------------------|-------------------------|-----|
| Accent | `#FF6820` electric orange | `#FFC700` sqrDAO gold | One accent across the ecosystem; YouAI reads as a sqrDAO product |
| Second accent | `#00C4FF` cyan | `#3F7A6E` teal (sparing) | Master system's warm/cool pair; cyan competed with orange |
| Canvas | `#08090D` (blue-black) | `#0A0A0A` (neutral near-black) | Same canvas as sqrDAO, Summit and the Hub |
| Surface | `#0E1520` / `#141D2B` / `#1C2535` | `#1A1A1A` on `#222222` borders | Master surface ramp; blue-tinted panels read as a different brand |
| Display type | Chakra Petch, uppercase | Instrument Sans 700, sentence case, `-0.02em` | Master typeface; uppercase display fought the mono chrome |
| Body type | IBM Plex Sans | Instrument Sans 400 | One family for display and body, as in the master system |
| UI chrome | JetBrains Mono | IBM Plex Mono 600 | Master system's canonical label face; JetBrains Mono stays for code |
| Neutral borders | Always accent-tinted | `#222222` hairlines, gold on hover/active | Matches master flat-first structure; gold stays a signal, not a texture |
| Semantic set | `#22c55e` / `#f97373` / `#eab308` | Master 700 fills, 300 text | v1's warning chip measured 1.9:1 |
| Light mode | Two colours, cool white | Full warm palette + component surfaces | A light page needs its card, chip and focus values moved too |
| Max font weight | 700 | 700 | Instrument Sans has no axis above 700 — never request one |

**Unchanged:** sharp geometry (≤8px radius), all-caps mono UI chrome, border-and-glow
elevation instead of drop shadows, the 2px left accent stripe on cards, the dot-grid canvas
texture, and every accessibility rule in v1.

### Token renames

`accent-light` / `accent-dark` / `primary.*` are gone. Pick the replacement by **role**,
never by mode — that mistake is what the split exists to prevent.

| v1.1.0 | v2.0.0 | Role |
|--------|--------|------|
| `primary.main` | `accent` | The gold fill itself, both modes |
| `primary.dark` | `accent-hover` | Hover on a gold fill (`#e6b800` dark, `#E0B400` light) |
| — | `on-accent` | Ink written **on** a gold fill (`#181818`, both modes) |
| — | `gold-ink` | Gold **text** on the page (`#FFC700` dark, `#7A5E00` light) |
| `secondary.main` | `secondary-accent.main` | Teal fills, markers, stripes |
| `secondary.light` | `secondary-accent.light-on-dark` | Teal **text** on the dark canvas |
| `secondary.dark` | `secondary-accent.dark` | Teal **text** on the light ground |

---

## Colors

### Accent

| Token | Value | Usage |
|-------|-------|-------|
| `accent` | `#FFC700` | Buttons, active states, stripes, focus rings, live indicators |
| `accent-hover` | `#e6b800` dark / `#E0B400` light | The hover state of a gold fill, and nothing else |
| `on-accent` | `#181818` | Ink written **on** a gold fill — same in both modes |
| `gold-ink` | `#FFC700` dark / `#7A5E00` light | Gold **text** on the page background |

> **`on-accent` vs `gold-ink`.** These point in opposite directions and must never share a
> token. `background: var(--color-accent); color: var(--color-on-accent)` is correct in both
> modes; the same button reading `--color-gold-ink` is gold-on-gold at 3.9:1 in light. Ink on
> gold is 11.4:1 either way, because the fill does not move.

> **The hover is mode-aware.** `#e6b800` is the dark value only. Read
> `--color-accent-hover` and let the `[data-theme="light"]` block supply `#E0B400`; a
> hard-coded `#e6b800` ships the dark hover onto a light page.

Gold at `rgba(255,199,0,0.12)` is the chip fill; `rgba(255,199,0,0.04)` is the input fill;
`rgba(255,199,0,0.06)` is the selected-card fill; `rgba(255,199,0,0.05)` is the canvas
dot-grid; `rgba(255,199,0,0.08)` is the outlined-button hover fill. Those five values are
the whole translucent set. Do not invent a sixth.

### Secondary accent — teal, sparing

Teal replaces v1's cyan as the second data series, the second agent-state colour, or a
non-gold card stripe. Keep gold dominant, roughly 80/20, and never use teal for a primary
action.

| Token | Value | Usage | Measured |
|-------|-------|-------|----------|
| `secondary-accent.main` | `#3F7A6E` | Fills, markers, stripes, chart series, large text | 4.0:1 on `#0A0A0A`, 4.7:1 on `#FAF9F6` |
| `secondary-accent.light-on-dark` | `#5A9488` | Teal **text** on the dark canvas | 5.7:1 on `#0A0A0A`, 5.0:1 on `#1A1A1A` |
| `secondary-accent.dark` | `#2F665B` | Teal **text** on the light ground | 6.3:1 on `#FAF9F6` |

> **Teal text picks by mode, and the direction flips.** On the light ground teal darkens to
> `#2F665B`; on the dark canvas it must *lighten* to `#5A9488`. `#2F665B` is **2.99:1** on
> `#0A0A0A`, worse than the base teal it was meant to improve on. Carrying the master
> system's light-mode teal rule into YouAI's dark-first surfaces is the one substitution
> that fails in both directions.

### Surfaces

| Level | Background | Border | Glow |
|-------|-----------|--------|------|
| Canvas | `#0A0A0A` | — | dot-grid `rgba(255,199,0,0.05)` at 24px |
| Surface | `#1A1A1A` | `#222222` | none |
| Elevation 1 (hover row, inset panel) | `#141414` | `#222222` | none |
| Raised / modal | `#1A1A1A` | `rgba(255,199,0,0.25)` | `0 0 20px rgba(255,199,0,0.20)` |
| Card hover | `#1A1A1A` | `rgba(255,199,0,0.40)` | `0 2px 8px rgba(255,199,0,0.10)` |
| Focus | — | `#FFC700` | `0 0 0 2px rgba(255,199,0,0.25)` |

Modal overlay: `rgba(0,0,0,0.85)` with `backdrop-filter: blur(8px)`.

### Text

| Token | Value | Usage |
|-------|-------|-------|
| Primary | `#FFFFFF` | Headings, agent names, log entries |
| Secondary | `#B3B3B3` | Body copy, captions, descriptions |
| Muted | `#666666` | Timestamps, metadata inside logs |
| Disabled | `rgba(179,179,179,0.4)` | Disabled labels, placeholders |

> **Known gap, in both modes.** Muted measures **3.45:1** on `#0A0A0A` and **3.54:1** in its
> light form (`#8A8474` on `#FAF9F6`), against the 4.5:1 AA threshold for normal-size text.
> It is used only for timestamps and log metadata. Either raise it (`#8A8A8A` is 5.7:1 dark,
> `#6E6959` is 5.2:1 light) or treat every use as decorative and duplicate the value in an
> accessible label. Do not extend it to body copy on the strength of "it is only metadata".

### Agent status

Status **text** uses the master 300 shades, which all clear AA on `#0A0A0A`: running
`#66FF66` (15.1:1), waiting `#FFFF66` (18.6:1), failed `#FF6666` (6.9:1), info `#66B7FF`
(9.2:1). Always pair the colour with a text label — never the dot alone.

Status **fills** take the 700 shades: success `#009900` and warning `#999900` carry `#181818`
ink (4.7:1, 5.8:1); error `#990000` and info `#0066CC` carry white (8.9:1, 5.6:1). The 700
shades are fill values and are not legible as text on the dark canvas — error 700 is 2.2:1
there. This replaces v1's `#eab308` + white, which measured 1.9:1.

In light mode semantic text switches again: 700 for info and error, 900 for success
(`#006600`) and warning (`#666600`).

### WCAG contrast ratios (dark, on `#0A0A0A`)

| Colour | Hex | Ratio | Grade |
|--------|-----|-------|-------|
| Primary text | `#FFFFFF` | 19.8:1 | AAA |
| Accent / gold ink | `#FFC700` | 12.6:1 | AAA |
| Secondary text | `#B3B3B3` | 9.4:1 | AA |
| Semantic 300 (status text) | `#66B7FF` / `#66FF66` / `#FFFF66` / `#FF6666` | 9.2 / 15.1 / 18.6 / 6.9 | AA |
| Teal text | `#5A9488` | 5.7:1 | AA |
| Teal fill | `#3F7A6E` | 4.0:1 | Large text / non-text only |
| Muted text | `#666666` | 3.45:1 | **Fails AA** — metadata only |
| Border | `#222222` | 1.2:1 | Decorative only |

All ratios are computed, not estimated. Re-measure before changing any value above.

---

## Light Mode

Light mode is a **warm** variant of the master palette, not a cool inversion, and it moves
more than the palette: card, chip, dialog, scrollbar and focus values all re-point. Building
against `tokens/youai.css` handles this — the `[data-theme="light"]` block carries both the
`--color-*` and the `--component-*` overrides.

### Palette

| Role | Token | Value |
|------|-------|-------|
| Canvas | `light.background` | `#FAF9F6` |
| Surface / card | `light.surface` | `#FFFFFF` |
| Surface alt / elevation 1 | `light.surface-alt` | `#F2F0EA` |
| Elevation 2 | `light.elevation-2` | `#E9E6DE` |
| Border | `light.border` | `#E4E0D6` |
| Primary text | `light.text-primary` | `#181818` |
| Secondary text | `light.text-secondary` | `#5C574C` |
| Muted text | `light.text-muted` | `#8A8474` |
| Gold ink | `light.gold-ink` | `#7A5E00` |
| Ink on gold | `light.on-accent` | `#181818` (unchanged) |
| Accent hover | `light.accent-hover` | `#E0B400` |

### Dark → light mapping

| Role | Dark | Light |
|------|------|-------|
| Canvas | `#0A0A0A` | `#FAF9F6` |
| Card / dialog surface | `#1A1A1A` | `#FFFFFF` |
| Border | `#222222` | `#E4E0D6` |
| Primary text | `#FFFFFF` | `#181818` |
| Secondary text | `#B3B3B3` | `#5C574C` |
| Accent (fills, stripes, markers) | `#FFC700` | `#FFC700` |
| Gold **text / labels** (`gold-ink`) | `#FFC700` | `#7A5E00` |
| Ink **on** a gold fill (`on-accent`) | `#181818` | `#181818` |
| Accent hover | `#e6b800` | `#E0B400` |
| Focus ring | `#FFC700` | `#7A5E00` |
| Neutral chip fill / border | `#0A0A0A` / `#222222` | `#FAF9F6` / `#E4E0D6` |
| Teal text | `#5A9488` | `#2F665B` |
| Dot-grid | `rgba(255,199,0,0.05)` | `rgba(122,94,0,0.06)` or omitted |
| Raised glow | `0 0 20px rgba(255,199,0,0.20)` | none — light mode is flat |

**Key rule**: gold is fill-and-text in dark mode, **fill only** in light. Gold is 1.5:1 on
`#FAF9F6`, so every gold *label, link and table header* uses `#7A5E00`, and so does the
**focus ring** — a gold ring in light mode is 1.5:1, under the 3:1 WCAG 1.4.11 floor for a
non-text indicator, which makes keyboard focus effectively invisible.

> **Open**: the outlined button's border is still an unqualified `1px solid #FFC700` in
> light mode, at that same 1.5:1. Its *text* has been moved to `#7A5E00`. Whether the border
> follows is a visual call about how the secondary button should look, and the master system
> has it open too — do not resolve it in one system alone.

### Light mode contrast ratios

| Colour | Hex | On `#FAF9F6` | On `#FFFFFF` | Grade |
|--------|-----|--------------|--------------|-------|
| Primary text | `#181818` | 16.9:1 | 17.8:1 | AAA |
| Secondary text | `#5C574C` | 6.8:1 | 7.2:1 | AA |
| Gold ink | `#7A5E00` | 5.8:1 | 6.1:1 | AA |
| Teal text | `#2F665B` | 6.3:1 | 6.6:1 | AA |
| Muted text | `#8A8474` | 3.5:1 | 3.7:1 | **Fails AA** — metadata only |
| Gold fill | `#FFC700` | 1.5:1 | 1.6:1 | Decorative / fills only |

### Turning it on

Light mode is **opt-in via `data-theme="light"`**, never via `prefers-color-scheme`.

The MUI theme is constructed once, so an OS-level media query flips the CSS variables while
every MUI surface stays dark — which is exactly how a light `/register` page ended up beside
a dark `/login`. Set the attribute **and** pass `'light'` to `createAppTheme()` from the same
piece of state, so the two halves cannot disagree.

---

## Typography

| Font | Role | Usage |
|------|------|-------|
| **Instrument Sans** | Display + body | Headings 700 `-0.02em`, body 400 / 1.6 |
| **IBM Plex Mono** | UI chrome | Buttons, tabs, chips, table headers, eyebrows, timestamps — 600, uppercase, `0.08–0.14em` |
| **JetBrains Mono** | Code | Code blocks, payloads, raw agent output |

### Type scale

| Variant | Size | Weight | Font | MUI |
|---------|------|--------|------|-----|
| Hero | 4.75rem | 700 | Instrument Sans, `-0.03em` | `h1` |
| h1 | 2.375rem | 700 | Instrument Sans, `-0.02em` | `h2` |
| h2 | 1.625rem | 700 | Instrument Sans, `-0.02em` | `h3` |
| h3 | 1.1875rem | 600 | Instrument Sans | `h4` |
| body | 1rem / 1.6 | 400 | Instrument Sans | `body1` |
| body-sm | 0.8125rem / 1.6 | 400 | Instrument Sans | `body2` |
| eyebrow | 0.6875rem | 600 | IBM Plex Mono, uppercase, `0.14em` | `overline` |
| button | 0.75rem | 600 | IBM Plex Mono, uppercase, `0.08em` | `button` |
| meta | 0.625rem | 400 | IBM Plex Mono, `0.08em`, muted | `caption` |

Display is **sentence case** in v2. Uppercase belongs to the mono chrome only — that
contrast is what carries YouAI's technical read now that Chakra Petch is gone.

**700 is the ceiling.** Instrument Sans's weight axis stops at 700; 800 or 900 is clamped or
synthesised.

---

## Layout

| Property | Value |
|----------|-------|
| Container max width | 72rem (1152px) |
| Horizontal padding | 24px |
| Header height | 4rem |
| Card max width (single-column forms) | 600px |

| Breakpoint | Min width | Primary usage |
|------------|-----------|---------------|
| xs | 0px | Mobile base |
| sm | 600px | Cards collapse to one column below this |
| md | 900px | Tablet layout switch |
| lg | 1200px | Desktop |
| xl | 1536px | Wide desktop |

These are the MUI defaults and the master system's values; v1's 960/1280/1920 set is gone.
Mobile wizard navigation uses `MobileStepper`.

---

## Elevation & Depth

YouAI uses **border and glow**, never a drop shadow. Depth is carried by border opacity and
glow intensity, so surfaces stay flat and the accent stays a signal.

| Level | Background | Border | Shadow / glow |
|-------|-----------|--------|---------------|
| Canvas | `#0A0A0A` | none | dot-grid texture |
| Surface | `#1A1A1A` | `#222222` | none |
| Elevation 1 | `#141414` | `#222222` | none |
| Elevation 2 (modal) | `#1A1A1A` | `rgba(255,199,0,0.25)` | `0 0 20px rgba(255,199,0,0.20)` |
| Card hover | `#1A1A1A` | `rgba(255,199,0,0.40)` | `0 2px 8px rgba(255,199,0,0.10)` |
| Focus | — | `#FFC700` | `0 0 0 2px rgba(255,199,0,0.25)` |

In light mode the glows go to `none`: on a warm ground a gold glow reads as a smudge. Never
use a numeric MUI `elevation`, a gradient, or a `backdropFilter` on an app surface — the
modal overlay's blur is the single exception.

---

## Shapes

Max radius stays **8px**. Buttons and inputs 4px, cards 6px, dialogs 8px, chips 4px, avatars
50%. No pills. The master system's 16px cards are deliberately **not** adopted — the sharper
corner is YouAI's remaining structural signature.

Radius comes from the theme (`RADIUS` in `theme.ts`) or the `--component-*-radius` variables.
A local `borderRadius` override is a bug, and `borderRadius: 999` is always wrong.

---

## Components

### Buttons

All three variants are IBM Plex Mono 600, uppercase, 0.75rem, `0.08em`, radius 4px. Size
through the MUI `size` prop only — never a per-call `fontSize`.

| Variant | Default | Hover |
|---------|---------|-------|
| **Contained** | `#FFC700` fill, `#181818` ink (`on-accent`) | `accent-hover` fill + `0 0 20px rgba(255,199,0,0.28)` |
| **Outlined** | transparent, `1px solid #FFC700`, `gold-ink` text | fill `rgba(255,199,0,0.08)` |
| **Quiet** (MUI `variant="text"`) | `1px solid #222`, `#B3B3B3` text | border `#444`, text `#FFFFFF` |

| State | Visual |
|-------|--------|
| Focus | `outline: 2px solid` the focus token, `outline-offset: 2px`, plus the glow |
| Disabled | opacity 0.5, `rgba(255,199,0,0.12)` fill for contained, `cursor: not-allowed` |
| Loading | label replaced by a 16px spinner in `accent`; `pointer-events: none` |

> The quiet variant owns the border. MUI's `text` variant is also what low-emphasis inline
> controls use, so giving `MuiButton-text` a border globally boxes every one of them
> app-wide. Scope the border to the quiet button, not to the variant.

### Cards

`#1A1A1A` on `1px solid #222`, radius 6px, 2px left stripe in `#FFC700` (teal `#3F7A6E` for
a secondary agent, `#FF6666` for an error). Hover raises the border to `rgba(255,199,0,0.40)`
and adds the gold-tinted shadow.

**No `translateY` lift.** The master system's cards rise 8px on hover; YouAI's sit in dense
agent grids where movement is noise. This is a deliberate divergence, not an omission.

| State | Visual |
|-------|--------|
| Default | `#222` hairline, gold left stripe |
| Hover | border `rgba(255,199,0,0.40)` + `0 2px 8px rgba(255,199,0,0.10)` |
| Focus (keyboard) | focus outline + offset |
| Loading | skeleton with a shimmer keyframe in gold at 4% |
| Error | left stripe switches to `#FF6666` |

### Selection

The border stays **1px in every state**. Selected reads as a gold border, a 2px gold left
stripe, a `rgba(255,199,0,0.06)` fill, and a gold check. Growing the border on select nudges
the card contents by a pixel and reads weakly next to the fill; see
`twin-wizard/selectableCardSx.ts`.

### Inputs and form patterns

`rgba(255,199,0,0.04)` fill, `1px solid #222`, radius 4px, IBM Plex Mono placeholder in
uppercase. Label is secondary text at rest, `gold-ink` on focus.

| State | Visual |
|-------|--------|
| Hover | border `rgba(255,199,0,0.30)` |
| Focus | border `accent` (light: `gold-ink`) + `0 0 0 2px rgba(255,199,0,0.25)` |
| Error | border `#FF6666` + `0 0 0 2px rgba(255,102,102,0.25)`, message in `#FF6666` |
| Success | border `#66FF66` |
| Disabled | opacity 0.5, `cursor: not-allowed` |

**Checkbox / radio**: gold fill when checked, `#181818` check mark, 4px radius on the
checkbox. Custom implementations need `role` and `aria-checked`.
**Select**: text-field border; panel on `#141414`; option hover `rgba(255,199,0,0.08)`.
**File input**: hidden `<input type="file">` behind an outlined-button trigger; show the
filename beneath in mono meta type.

### Dialogs and modals

`#1A1A1A`, `1px solid rgba(255,199,0,0.25)`, radius 8px, `0 0 20px rgba(255,199,0,0.20)`.
Overlay `rgba(0,0,0,0.85)` with `backdrop-filter: blur(8px)`.

```html
<div role="dialog" aria-modal="true" aria-labelledby="modal-title">
  <h2 id="modal-title">...</h2>
  <button aria-label="Close dialog">×</button>
</div>
```

On open, move focus to the first focusable element inside; trap Tab and Shift+Tab within the
dialog; Escape closes and returns focus to the trigger.

### Chips

Gold: `rgba(255,199,0,0.12)` fill, `gold-ink` text. Neutral: `#0A0A0A` fill, `1px solid
#222`, `#B3B3B3` text. Solid: `#FFC700` fill, `#181818` ink. 0.6875rem mono, radius 4px. All
three re-point in light mode.

### Tabs

IBM Plex Mono 0.6875rem uppercase `0.1em`, inactive secondary text, active primary text with
a 2px `#FFC700` underline. Focus takes the standard ring.

### Tables and logs

Header row in IBM Plex Mono 0.625rem uppercase gold at 85% opacity, `#222` row dividers,
primary column in `#FFFFFF`, supporting columns `#B3B3B3`, status column in mono using the
agent-status colours.

### Stepper (wizard)

Connector and active step in gold — **no gradient**; v1's orange-to-cyan connector has no
counterpart in the master system. Inactive steps are a `#222` hairline ring with secondary
text. Every step needs its own icon: a step falling back to the step-1 glyph reads as a bug.
Mobile uses `MobileStepper` with a gold progress bar.

### Pagination

IBM Plex Mono 0.75rem. Active page: gold fill, `#181818` ink. Hover `rgba(255,199,0,0.12)`.
Standard focus ring.

### Scrollbar

Track `#0A0A0A`, thumb `#222222`, thumb hover `#B3B3B3`, width 6px, radius 3px. The thumb is
**neutral**, not gold — a gold scrollbar puts the accent on the one element that is always
on screen.

### Third-party brand colour

A channel's own hex (`#25D366` WhatsApp, `#5865F2` Discord, `#4A154B` Slack, `#0068FF` Zalo,
`#229ED9` Telegram) belongs **inside the glyph only**. Labels, borders and buttons around it
take gold or the neutral ramp, so one card cannot show four competing accents.

---

## Texture

Dot-grid on the page canvas only, in gold:

```css
background-image: radial-gradient(circle, rgba(255,199,0,0.05) 1px, transparent 1px);
background-size: 24px 24px;
```

Light mode drops it to `rgba(122,94,0,0.06)` or omits it. Never on cards, surfaces or modals.

---

## Motion

0.2s ease for hover and focus, 0.3s ease for card and modal transitions. Keep glow-pulse for
live agent indicators (`box-shadow` 0 → 4px spread, `1.5s ease-in-out infinite`) and
fade-in-up for stream entries (24px translateY + opacity, 0.4s ease-out).

**Drop the glitch shift.** The 2–3px pixel-jitter read as orange-era styling and has no
counterpart anywhere else in the sqrDAO family. The scanline is gone with it.

Wrap every keyframe in `@media (prefers-reduced-motion: no-preference)` — the
`no-preference` query, not `reduce`, so the animation is opt-in rather than opt-out.

---

## Accessibility

- **Focus ring**: `outline: 2px solid` + `outline-offset: 2px` on `:focus-visible` for every
  interactive element, plus `0 0 0 2px rgba(255,199,0,0.25)`. The ring is gold in dark mode
  and `#7A5E00` in light — read `--component-focus-outline` rather than the literal.
- **Colour alone never carries state.** Every status colour is paired with an uppercase mono
  label; a dot or a coloured chip on its own is not enough.
- **Semantic text picks its shade by mode**: 300 in dark, 700/900 in light. The 700 fills are
  not text values.
- **Muted text fails AA in both modes** and is restricted to timestamps and log metadata; if
  a user needs the value, duplicate it in an accessible label.
- **Keyboard navigation**: everything reachable by Tab; custom controls need `tabindex="0"`,
  a `role`, and the matching ARIA state.
- **Icon-only buttons** carry an `aria-label` naming the action.
- **Modals** trap focus and restore it to the trigger on close.
- **Reduced motion**: every keyframe behind `prefers-reduced-motion: no-preference`.
- **No emoji in product UI.** An emoji where an icon belongs is a defect, not a style choice.
- **Vietnamese glyph coverage**: Instrument Sans, IBM Plex Mono and JetBrains Mono all cover
  Latin Extended; verify diacritics on any font added later.

---

## Design Principles

1. **Dark-first** — dark is canonical; light is a warm variant that moves the component
   surfaces too, not just the palette.
2. **Border over shadow** — borders and glows carry depth; drop shadows and numeric
   elevations do not exist here.
3. **Monospace for UI chrome** — IBM Plex Mono on every button, tab, chip and timestamp;
   prose is Instrument Sans; JetBrains Mono is code only.
4. **One dominant accent** — gold. Teal is a second series at roughly 80/20 and never a
   primary action.
5. **Gold is a signal, not a texture** — structure is `#222` hairlines; gold marks what is
   interactive, active or live.
6. **Sharp geometry** — max 8px radius, no pills, no fully rounded cards.
7. **Sentence-case display, uppercase chrome** — the contrast between the two is the
   technical read.
8. **Accessible focus states** — a visible ring on every interactive element, in both modes.
9. **Reduced motion respected** — every animation is opt-in.

---

## Consuming the tokens

Do not transcribe hexes out of this document. The frontmatter above is the source of truth
and is generated into `tokens/youai.css` and `tokens/youai.json`.

```css
@import "tokens/youai.css";

.cta {
  background: var(--color-accent);
  color: var(--color-on-accent);            /* ink ON gold — same in both modes */
  border-radius: var(--component-button-radius);
}
.cta:hover { background: var(--color-accent-hover); }   /* #e6b800 dark, #E0B400 light */

.eyebrow { color: var(--color-gold-ink); }  /* gold TEXT — darkens in light mode */
```

Setting `data-theme="light"` on a container re-points the palette **and** the component
surfaces (`--component-card-*`, `--component-chip-*`, `--component-dialog-*`,
`--component-scrollbar-*`, `--component-focus-outline`). Anything the light block omits keeps
its dark value, which is why a component that hard-codes a hex the light block re-points is
reported by the build rather than shipped.

---

## Do's and Don'ts

| Do | Don't |
|----|-------|
| Use IBM Plex Mono for every button, tab, chip and timestamp | Reintroduce JetBrains Mono for UI chrome — it is for code only |
| Keep card radius at 6px and buttons at 4px | Adopt the master 16px card radius |
| Use `#222` hairlines for structure, gold for signal | Tint every border with the accent, as v1 did |
| Set display type in sentence case | Set headings in uppercase Chakra Petch |
| Read `--color-accent-hover` for the hover fill | Hard-code `#e6b800` — it is the dark value only |
| Write `on-accent` on a gold fill, `gold-ink` on the page | Use one token for both and ship gold-on-gold in light |
| Darken the focus ring to `#7A5E00` in light mode | Leave a 1.5:1 gold ring on the warm ground |
| Move card, chip, dialog and scrollbar surfaces with the mode | Re-point only the palette and call it light mode |
| Lighten teal to `#5A9488` for text on dark | Use `#2F665B` on the dark canvas — it is 2.99:1 |
| Use teal for a second series, sparingly | Bring back cyan `#00C4FF` |
| Keep the dot-grid on the canvas only | Put texture on cards or modals |
| Stop at font-weight 700 | Request 800/900 from Instrument Sans |
| Pair every status colour with a text label | Let a coloured dot or chip carry state alone |
| Keep a third-party brand hex inside its glyph | Let a channel colour reach a label, border or button |
| Let a stat card hold a number or nothing | Put an emoji where an icon belongs |
