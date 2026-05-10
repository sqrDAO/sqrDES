# TODO — Queued Brand Assets

These assets are referenced in DESIGN.md v1.3.0 but could not be exported in this PR because Figma access was unavailable to the agent. **Do not reference these paths in production code until the files exist.**

## Pending exports

| Asset | Target path | Figma source | Notes |
|-------|------------|--------------|-------|
| Logo C — stacked | `public/brand/logo-c-stacked.svg` | File `NJPTBXCZlaweWduouOhu27` — stacked lockup selection | **Does not exist yet in Figma.** Current file at path is a placeholder (glow gradient only). Needs to be designed and exported with paths outlined. |
| ~~Topo line decoration~~ | ~~`public/brand/topo-lines.svg`~~ | Extracted from `empower-residency/figma.svg` (lines 13–26) | ✅ Done — 42.8 KB, `stroke="currentColor"`, xmllint valid |
| ~~Logo A — full lockup~~ | ~~`public/brand/logo-a.svg`~~ | Extracted from `empower-residency/figma.svg` (lines 37–52, clip2 group) | ✅ Done — 26.3 KB, 10 outlined paths, white fills + #87FABB sparkle, xmllint valid |

## Export checklist

- [x] Paths outlined (no live text)
- [x] `topo-lines.svg` uses `stroke="currentColor"` (not a hardcoded hex)
- [x] `logo-a.svg` validated: `xmllint --noout` exits 0
- [x] SVGs committed to `empower-residency/public/brand/`
- [ ] `logo-c-stacked.svg` — **new Figma design required** before export (current file is not the correct asset)
- [ ] This file deleted once logo-c-stacked.svg is present
