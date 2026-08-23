# TODO — Queued Brand Assets

These assets are referenced in DESIGN.md v1.3.1 but have not been exported. **Do not reference these paths in production code until the files exist** — they will 404.

## Shipped

| Asset | Path | Notes |
|-------|------|-------|
| Logo A — horizontal | `public/brand/logo-a.svg` | 26.3 KB, 10 outlined paths, white fills + `#87FABB` sparkle, `xmllint` valid |
| Topo line decoration | `public/brand/topo-lines.svg` | 42.8 KB, `stroke="currentColor"`, `xmllint` valid |

## Pending exports

| Asset | Target path | Figma source | Notes |
|-------|------------|--------------|-------|
| Logo C — stacked | `public/brand/logo-c-stacked.svg` | File `NJPTBXCZlaweWduouOhu27` — stacked lockup selection | **Does not exist yet in Figma.** A placeholder (glow gradient only, no wordmark) was previously committed at this path and has been removed to prevent accidental use. Needs to be designed, then exported with paths outlined. |
| Logo A — square | `public/brand/logo-a-square.svg` | EMpower Figma, 1000 × 1000 framing | Specified in DESIGN.md "Logo Variants"; never exported. |
| Logo B — horizontal | `public/brand/logo-b.svg` | EMpower Figma, 1451 × 387 framing | Specified in DESIGN.md "Logo Variants"; never exported. |
| Logo B — square | `public/brand/logo-b-square.svg` | EMpower Figma, 1000 × 1000 framing | Specified in DESIGN.md "Logo Variants"; never exported. |
| Sparkle (solo) | `public/brand/sparkle.svg` | EMpower Figma, four-point sparkle glyph | Referenced by DESIGN.md "Sparkle Motif"; never exported. Export in `#87FABB`; recolor to `--accent` via CSS for solo UI use. |

## Export checklist

Per asset, before committing to `public/brand/`:

- [ ] Paths outlined (no live text) — the logo typefaces are decorative and must not be re-typeset
- [ ] Validated: `xmllint --noout <file>` exits 0
- [ ] Sparkle fill is `#87FABB` (`--logo-mint`), not the UI accent `#aeffc8` — see the "two mints" note in DESIGN.md
- [ ] Decorative strokes use `stroke="currentColor"` rather than a hardcoded hex
- [ ] Exported from `design-source/figma.svg` or Figma directly, never hand-redrawn
- [ ] DESIGN.md "Asset availability" note updated to drop the asset from the not-yet-shipped list

Delete this file once every row above has shipped.

## Source material

The full Figma board export lives at `design-source/figma.svg` (~38 MB, gitignored). It is not served and must not be moved back under `public/`. See `design-source/README.md`.
