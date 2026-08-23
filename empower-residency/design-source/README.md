# Design Source (not shipped)

Raw Figma exports used to derive the production assets in `public/brand/`.

**These files are gitignored.** They are multi-megabyte, contain artwork from more than one
brand, and must never be served to users. `public/` is a served directory in Next.js, so
nothing in here belongs there.

| File | Size | Notes |
|------|------|-------|
| `figma.svg` | ~38 MB | Full-board export of the [EMpower Founders Residency Figma file](https://www.figma.com/design/fCGlJuUlZx3Em40ltPUUjv/EMpower-Founders-Residency). Also contains Da Nang Hub colors (`#FFA406`, `#FFF2DD`) from adjacent boards; do not treat its palette as the EMpower palette. |

Production assets extracted from these sources live in `public/brand/` and are committed.
See `../TODO-assets.md` for what has and has not been extracted.
