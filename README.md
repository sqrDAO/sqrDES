# sqrDAO Design Guidelines

Central design guideline for the sqrDAO ecosystem. Use this repo as the single source of truth for colors, typography, components, and brand assets across all sqrDAO projects.

**Official brand assets:** [sqrdao.com/brand-kit](https://www.sqrdao.com/brand-kit)

---

## Quick Reference

Two modes share one gold accent. Dark is canonical; light is a warm variant for print/proposals.

| Token | Dark | Light | Usage |
|-------|------|-------|-------|
| Background | `#0A0A0A` | `#FAF9F6` | Page background |
| Accent | `#FFC700` | `#FFC700` | Fills, links, highlights |
| Accent Text | `#FFC700` | `#7A5E00` | Gold text / labels |
| Primary Text | `#FFFFFF` | `#181818` | Headings, primary content |
| Secondary Text | `#B3B3B3` | `#5C574C` | Body text, captions |
| Card Surface | `#1A1A1A` | `#FFFFFF` | Card backgrounds |
| Border | `#222222` | `#E4E0D6` | Borders, dividers |

**Secondary accent:** `#3F7A6E` (teal, use sparingly)

**Typography:** Instrument Sans (primary), IBM Plex Mono (labels), JetBrains Mono (code)

---

## Documentation

| Document | Description |
|----------|-------------|
| [BRAND-KIT.md](BRAND-KIT.md) | Brand assets, logo usage, sub-brands, Do/Don't guidelines |
| [DESIGN.md](DESIGN.md) | sqrDAO full design reference: colors, typography, layout, components, animations |
| [youai/DESIGN.md](youai/DESIGN.md) | YouAI "Precision Claw" design system — dark, electric orange, sharp geometry |
| [danang-hub/DESIGN.md](danang-hub/DESIGN.md) | Da Nang Blockchain Hub design system |
| [empower-residency/DESIGN.md](empower-residency/DESIGN.md) | Empower Residency design system — 3‑week, fully funded founder residency in Da Nang (May 4–29, 2026) with mentorship, investor demo day, and content production |
| [summit/DESIGN.md](summit/DESIGN.md) | Web3 Builders' Summit (LFBUIDL) design system |

---

## Design tokens

Do not transcribe hexes out of these docs. Every system's palette, type, spacing, breakpoints
and component values are generated into [`tokens/`](tokens/) as JSON and CSS custom properties,
straight from each `DESIGN.md`'s frontmatter.

```css
@import "tokens/sqrdao.css";
.cta { background: var(--color-accent); color: var(--color-accent-text); }
```

See [tokens/README.md](tokens/README.md) for naming conventions and the full file list.

---

## Build

The docs are the source of truth; `tokens/` and the Claude skill bundle are both generated
from them.

| Command | What it does |
|---------|--------------|
| `python3 tools/build_tokens.py` | Regenerate `tokens/` from the DESIGN.md frontmatter |
| `python3 tools/build_tokens.py --check` | Fail if `tokens/` is stale |
| `tools/build_skill.sh` | Build `dist/sqrdao-design.skill` from the docs, assets and tokens |
| `tools/build_skill.sh --check` | Fail if the built bundle no longer matches the repo |

Run both `--check` commands in CI. They are what stop the skill bundle and the tokens from
drifting away from the docs, which has happened before.

**After editing any `DESIGN.md`, regenerate both** and commit the results:

```bash
python3 tools/build_tokens.py && tools/build_skill.sh
```

Requires Python 3 with `pyyaml`, and `zip`. `xmllint` is optional (SVG validation is skipped
without it).

---

## Claude skill

[`skill/SKILL.md`](skill/SKILL.md) is the source for the `sqrdao-design` Claude skill. The
built bundle at `dist/sqrdao-design.skill` packages it with all six reference docs, the
in-repo brand assets, and the generated tokens. `dist/` is gitignored; build it when you need
to install or share the skill.

---

## Sub-brands

sqrDAO, sqrFUND, sqrVOICE, sqrNODE, sqrBUIDL, Web3 Builders' Summit — logos and assets available at [sqrdao.com/brand-kit](https://www.sqrdao.com/brand-kit).
