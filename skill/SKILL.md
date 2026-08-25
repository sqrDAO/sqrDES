---
name: sqrdao-design
description: >-
  The single source of truth for designing anything in the sqrDAO ecosystem: colors, typography,
  components, layout, animations, and brand assets. Use this skill whenever building, styling, or
  auditing any sqrDAO surface, even if the user does not say the word "design": websites, landing
  pages, React/MUI components, HTML email, slide decks, pitch decks, event collateral, social
  graphics, brand kits, or design audits. Triggers on any of these names: sqrDAO, sqrFUND, sqrVOICE,
  sqrNODE, sqrBUIDL, sqrDES, YouAI, Da Nang Blockchain Hub, EMpower (Founders) Residency, Web3
  Builders' Summit, W3BS, or LFBUIDL. Also use it when the user asks to make something "on-brand",
  "match our style", apply the design system, run a design audit, or check that colors/typography/
  components conform to sqrDAO standards.
---

# sqrDAO Design System

This skill encodes the canonical sqrDAO ecosystem design guidelines (the `sqrDES` repo). Use it as the single source of truth so every surface you produce is on-brand and internally consistent.

Full canonical specs live in `references/`. This file gives you the philosophy, how to pick the right system, the common-case sqrDAO tokens inline, and how to apply them. Read the matching reference file whenever you need full detail or a sub-brand.

## Step 1: Pick the right design system

The ecosystem has one core system plus four distinct sub-brand systems. Each has its own palette and typography. **Do not mix them.** Choose one and commit to it for the whole artifact.

| If the work is for... | Use system | Reference file | Identity in one line |
|---|---|---|---|
| sqrDAO, sqrFUND, sqrVOICE, sqrNODE, sqrBUIDL, or anything ecosystem-level (default) | **sqrDAO** | `references/sqrdao.md` | Dark-first, minimal chrome, single gold accent (`#FFC700`) |
| YouAI product | **YouAI** | `references/youai.md` | "Precision Claw": electric orange (`#FF6820`) on near-black, sharp engineered geometry |
| Da Nang Blockchain Hub | **Da Nang Hub** | `references/danang-hub.md` | Warm, builders-first; amber/gold (`#FFA406`), glassmorphism, dark + light peach themes |
| EMpower Founders Residency | **EMpower** | `references/empower-residency.md` | Light-first; near-white canvas, single mint accent (`#aeffc8`), four-point sparkle motif |
| Web3 Builders' Summit / W3BS / LFBUIDL | **Summit** | `references/summit.md` | Pure-black event brand; gold (`#FFB800`) CTAs, dog-ear clipped corners, Anton display |
| Logos, sub-brand list, press/partner asset usage, do/don't | **Brand Kit** | `references/brand-kit.md` | Logo usage rules + sub-brand definitions |

When in doubt, default to the **sqrDAO** core system. If the user names a sub-brand, use that sub-brand's system. If a request spans multiple brands (e.g. a partnership deck), use the core sqrDAO system as the host and only bring in a sub-brand's mark where that brand is represented.

Always read the matching reference file before producing detailed work. The inline tokens below cover the core sqrDAO system only and are a fast path for small tasks; everything else (and all sub-brand work) requires the reference.

## Core sqrDAO tokens (fast path)

Design philosophy: **dark-first, minimal chrome, gold accent.** Near-black surfaces with a single gold accent to guide attention. Everything else recedes. Moderate rounding (technical but approachable). Flat at rest, elevation only on hover or for floating elements.

The system ships **two modes** sharing one gold accent. **Dark is canonical** (tokens below). **Light is a warm variant** for print, proposals, and light surfaces: warm off-white and taupe neutrals, never a cool white/gray inversion. Full light palette, dark-to-light token mapping, and the teal secondary accent are in `references/sqrdao.md` (v1.3.0).

### Colors

| Role | Hex | Usage |
|---|---|---|
| Background | `#0A0A0A` | Page background, navbar |
| Surface (card) | `#1A1A1A` | Card backgrounds |
| Surface alt | `#181818` | Section/alt backgrounds |
| Border | `#222222` | Borders, dividers |
| Primary text | `#FFFFFF` | Headings, primary content |
| Secondary text | `#B3B3B3` | Body copy, captions (do not use white here) |
| Accent / gold | `#FFC700` | Buttons, links, highlights, focus ring |
| On accent | `#181818` | Ink sitting **on** a gold fill — same value in light mode |
| Gold ink | `#FFC700` | Gold-coloured **text** on the page — becomes `#7A5E00` in light |
| Accent hover | `#e6b800` | The one canonical hover for gold (use everywhere) |

Semantic colors use the 700 shade as canonical: info `#0066CC`, success `#009900`, warning `#999900`, error `#990000`. **These are fill values, not text values** (badge fills, status dots, alert borders, chart series). Do not repeat the old claim that 700 meets AA on `#0A0A0A`; it does not, and the reasoning was backwards, since darker shades lose contrast on a near-black canvas. Error 700 is 2.2:1 there and Info 700 is 3.6:1. For semantic **text in dark mode always use the 300 shade** (info `#66B7FF`, success `#66FF66`, warning `#FFFF66`, error `#FF6666`, all 6.9:1 or better); in light mode use 700 for info and error, 900 for success (`#006600`) and warning (`#666600`). Full ramps and the measured ratio table are in `references/sqrdao.md`.

**Light mode (warm) key tokens:** background `#FAF9F6`, card `#FFFFFF`, border/alt `#E4E0D6`, primary text `#181818`, secondary text `#5C574C` (warm taupe), accent hover `#E0B400`, accent tint `#FFEDAD`, chip fill `#FAF9F6` on a `#E4E0D6` border. The one rule that trips people up: gold `#FFC700` is ~1.5:1 on the light background, so in light mode it is **fill/decoration only**; all gold *text* (labels, links, table headers) uses darkened gold `#7A5E00`. The ink written *on* a gold fill is the exception and stays `#181818` in both modes: that is `on-accent`, a different token from `gold-ink`. Switching a page to light means moving card, tooltip and chip surfaces too, not just the palette.

**Secondary accent (teal):** `#3F7A6E` for non-text emphasis (flows, markers, second chart series, large text); `#2F665B` for small teal text; `#E9CF6A` is its warm gold tint pairing. Use sparingly, gold stays dominant (about 80/20). Never use teal for primary CTAs.

### Typography

- **Primary (everything):** Instrument Sans. Weights 400 / 500 / 600 / 700. Load via `next/font/google` with `display: swap`.
- **Labels (uppercase eyebrows, table headers, metadata):** IBM Plex Mono (fallback: ui-monospace stack), 0.85rem, weight 600, letter-spacing 0.1em, uppercase. Color `#FFC700` at 0.85 opacity in dark mode, `#7A5E00` in light mode.
- **Code:** JetBrains Mono (code only; labels are IBM Plex Mono).
- Section titles: weight 700, white. **700 is the ceiling** — Instrument Sans's weight axis is 400-700, so never specify 800 or 900 (the browser clamps or fakes it). Hero/display sizes scale up to 5–6.25rem. Full type scale in the reference.

### Key components

- **Primary button:** gold `#FFC700` bg, `#181818` text (`on-accent`, both modes), radius 8px, weight 700, no text-transform, flat (no shadow at rest), hover bg `#e6b800`. Transition `all 0.2s ease-in-out`.
- **Secondary button:** transparent bg, 1px `#FFC700` border, gold text (`gold-ink`: `#FFC700` dark, `#7A5E00` light — gold is 1.5:1 on the light background); on hover fill gold and switch text to `#181818` (`on-accent`, both modes).
- **Card:** `#1A1A1A` bg, 1px `#222222` border (light mode: `#FFFFFF` on `#E4E0D6`), radius 16px, flat at rest. Hover: `translateY(-8px)` + gold-tinted shadow `0 2px 8px 0 rgba(255,199,0,0.10)` (+ optional gold border). Transition `transform 0.3s ease-in-out`.
- **Focus (all interactive elements):** `outline: 2px solid #FFC700` dark / `#7A5E00` light (`--component-focus-outline`), `outline-offset: 2px`, on `:focus-visible`.
- Spacing scale is 8px-based (xs 4 / sm 8 / md 16 / lg 24 / xl 32 / xxl 48). Container max width 1440px.

For chips, tabs, tooltips, scrollbar, dividers, the full type scale, animations/keyframes, breakpoints, and WCAG ratios, read `references/sqrdao.md`.

## Step 2: Apply the system

Match the implementation to what the user is building.

**Never transcribe a hex by hand.** `tokens/` in this skill holds the exact palette, type, spacing, breakpoint and component values for every system, generated straight from the canonical docs: `tokens/sqrdao.json`, `youai.json`, `summit.json`, `danang-hub.json`, `empower-residency.json`, plus `tokens/index.json` listing each system with the doc version it was built from. Read the JSON for the system you picked and copy values from it rather than from prose or from memory. If a token you need is missing from the JSON, that is the signal it is not canonical yet, so ask rather than invent one.

**Web UI (React / Next.js / MUI):** The core sqrDAO site uses Next.js app router + MUI v5 (no Tailwind). Prefer theme tokens over hard-coded values: put colors in the palette, type in the typography config, and component tweaks in MUI component overrides rather than inline `sx`. Use `theme.spacing(n)`, not arbitrary pixels. If you are scaffolding from scratch, mirror the file layout in `references/sqrdao.md` (theme entry, colors, palette, typography, components, globals.css). Sub-brands differ: YouAI is MUI + custom provider, Da Nang Hub and Summit are lighter stacks (Summit is vanilla HTML/CSS with custom properties). Check the reference for the chosen system.

**Standalone HTML / email / single pages:** Express tokens as CSS custom properties at `:root`, then reference them. Keep the gold accent disciplined: it marks interactive and high-priority elements only, never large decorative fills. (Note: HTML email clients are inconsistent with custom properties; inline critical styles for email.)

**Decks, slides, collateral, social graphics:** Carry the same palette, accent discipline, and type pairing. Dark canvas for sqrDAO/Summit, light canvas for EMpower, warm canvas for Da Nang Hub. Use the uppercase mono label as the eyebrow above titles. When generating a `.pptx`, also consult the `pptx` skill for file mechanics.

**Copy inside any artifact:** Never use em-dashes. Use commas, colons, parentheses, semicolons, or split sentences instead.

### Accent discipline (the one rule that defines the look)

The gold accent is a spotlight, not a paint. Use it for primary buttons, links, active states, focus rings, the section-label eyebrow, and small highlights. Never use it as a large background fill or decorative wash. Everything non-interactive stays in the near-black + grey range so the accent always means "look here."

### Logos and brand assets

Do not invent, redraw, or recolor logos. Canonical marks for sqrDAO, sqrFUND, sqrVOICE, sqrNODE, sqrBUIDL, and the Summit live at the official brand kit (`sqrdao.com/brand-kit`) in SVG and PNG, dark and light variants. If one of those logo files is needed and not provided, point the user to the brand kit rather than fabricating one.

Two sub-brands ship canonical SVGs inside this skill (mirrored from the sqrDES repo); use these files directly instead of the brand kit or any redraw:

- **Da Nang Blockchain Hub** (`assets/danang-hub/`): `Main_Dark.svg`, `Main_Light.svg`, `Mono_Dark.svg`, `Mono_Light.svg`. **The suffix names the ink, not the canvas** (the opposite of the sqrDAO brand-kit convention, so do not carry that one over): `*_Dark.svg` is near-black `#231F20` ink and goes on cream or white; `*_Light.svg` is cream `#FFF2DD` ink and goes on near-black or dark photography. Getting this backwards renders the mark invisible. Use `Main_*` unless single-tone reproduction is required, and never recolor a variant.
- **EMpower Founders Residency** (`assets/empower-residency/`): `logo-a.svg` (full lockup, white fills + `#87FABB` sparkle, **dark surfaces only** — EMpower is light-first, but no black-wordmark export exists yet, so on the default `#f8f8f8` canvas either place the lockup on a `#1a1a1a` surface or leave the space rather than putting white on near-white) and `topo-lines.svg` (decorative topo background, uses `stroke="currentColor"` so set the color via CSS). These two are the only EMpower assets that exist. The square/horizontal Logo A and B variants, the solo `sparkle.svg`, and the stacked "logo C" lockup are all specified in the reference but **not exported** — never emit those paths. If one is needed, say it is pending rather than inventing it.

> **EMpower has two mints.** The logo lockups carry `#87FABB` (`--logo-mint`, straight from Figma); the UI accent is `#aeffc8` (`--accent`). Use `#87FABB` only inside the lockup and never recolor `logo-a.svg` to match the UI accent. Everything else (CTAs, gradients, highlights) uses `#aeffc8`.

Logo usage rules (clear space, no modification, no conflicting backgrounds) are in `references/brand-kit.md`.

## Step 3 (optional): Design audit mode

When the user asks you to **audit, review, or check conformance** of an existing artifact against the design system (rather than build something new):

1. Identify which system applies (Step 1) and read its reference file in full.
2. Go through the artifact and compare against the canonical tokens: colors (exact hex), typography (families, weights, the uppercase mono label), component specs (radii, button/card styles, hover and focus states), spacing scale, accent discipline, and accessibility (focus ring, contrast, reduced-motion, semantic HTML).
3. Report findings with **stable IDs** so they can be tracked across iterations and consumed by other agents. Default to a JSON report, each finding shaped like:

```json
{
  "id": "SQRD-COLOR-001",
  "severity": "high",
  "category": "color",
  "location": "hero CTA button",
  "found": "#FFD740",
  "expected": "#e6b800",
  "rule": "Canonical gold hover is #e6b800; do not use alternate hover values.",
  "fix": "Replace the hover background with #e6b800."
}
```

Keep IDs stable across runs (same issue keeps the same ID); add new ones for new findings. Use severities like `high` / `medium` / `low` and categories like `color`, `typography`, `component`, `spacing`, `accessibility`, `accent-discipline`. If the user prefers prose or a checklist, follow their lead, but keep the stable-ID discipline.

## Do's and don'ts (core sqrDAO)

| Do | Don't |
|---|---|
| Use `#FFC700` for primary interactive elements only | Use gold for decorative backgrounds or large fills |
| Use `#e6b800` as the single gold hover everywhere | Mix hover values (no `#FFD740`, etc.) |
| Use secondary text `#B3B3B3` for body/captions | Use pure white for secondary text |
| Read the focus ring from `--component-focus-outline` on `:focus-visible` | Strip focus outlines, or hard-code a gold ring that is 1.5:1 in light mode |
| Use `theme.spacing(n)` / the 8px scale | Hard-code arbitrary pixel values |
| Keep base states flat; elevate only on hover/float | Add shadows to resting cards and buttons |
| Respect `prefers-reduced-motion` | Run animations unconditionally |
| Use semantic HTML and ARIA on icon-only buttons | Nest clickable `<div>`s without roles |
| Commit to one system per artifact | Mix sqrDAO with a sub-brand's palette/type |
| In light mode, use warm neutrals (`#FAF9F6`, `#5C574C`) | Invert dark mode to cool white/gray for light mode |
| In light mode, use `#7A5E00` (`gold-ink`) for gold text and labels | Use `#FFC700` for text on light backgrounds (fails contrast) |
| Use `on-accent` on a gold fill and `gold-ink` for gold text | Use one "accent text" colour for both and break one mode |
| Re-point card/tooltip/chip surfaces when you go light | Leave `#1A1A1A` cards on a `#FAF9F6` page |
| Keep gold dominant; use teal `#3F7A6E` sparingly | Give teal equal weight to gold or use it for primary CTAs |

The full do/don't tables (per system) are in each reference file. When you need anything beyond the fast path above, read the relevant `references/*.md` before producing the work.
