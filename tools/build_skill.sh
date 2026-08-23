#!/usr/bin/env bash
#
# Assemble the sqrdao-design Claude skill from this repo.
#
# The skill is a bundle, not a separate copy of the design system: every
# reference file in it is the repo's own DESIGN.md, copied at build time. Build
# it here so the two can never drift.
#
# Usage:
#   tools/build_skill.sh            # build dist/sqrdao-design.skill
#   tools/build_skill.sh --check    # verify a build would match what is on disk
#
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"

SKILL_NAME="sqrdao-design"
STAGE="$(mktemp -d)"
OUT_DIR="$ROOT/dist"
OUT="$OUT_DIR/${SKILL_NAME}.skill"
CHECK=0
[[ "${1:-}" == "--check" ]] && CHECK=1

trap 'rm -rf "$STAGE"' EXIT

fail() { echo "error: $*" >&2; exit 1; }

# doc path in repo -> reference filename inside the bundle
REFERENCES=(
  "DESIGN.md:sqrdao.md"
  "BRAND-KIT.md:brand-kit.md"
  "youai/DESIGN.md:youai.md"
  "summit/DESIGN.md:summit.md"
  "danang-hub/DESIGN.md:danang-hub.md"
  "empower-residency/DESIGN.md:empower-residency.md"
)

# source asset -> path inside the bundle. Only assets that actually exist and
# are cleared for use belong here. Placeholders and raw Figma exports must not
# ship: the skill treats everything it bundles as safe to hand to a user.
ASSETS=(
  "assets/danang-hub/logos/Main_Dark.svg:danang-hub/Main_Dark.svg"
  "assets/danang-hub/logos/Main_Light.svg:danang-hub/Main_Light.svg"
  "assets/danang-hub/logos/Mono_Dark.svg:danang-hub/Mono_Dark.svg"
  "assets/danang-hub/logos/Mono_Light.svg:danang-hub/Mono_Light.svg"
  "empower-residency/public/brand/logo-a.svg:empower-residency/logo-a.svg"
  "empower-residency/public/brand/topo-lines.svg:empower-residency/topo-lines.svg"
)

# ---------------------------------------------------------------- preflight --

[[ -f skill/SKILL.md ]] || fail "skill/SKILL.md is missing"
head -1 skill/SKILL.md | grep -q '^---$' || fail "skill/SKILL.md has no YAML frontmatter"
grep -q '^name: ' skill/SKILL.md || fail "skill/SKILL.md frontmatter has no 'name:'"
grep -q '^description: ' skill/SKILL.md || fail "skill/SKILL.md frontmatter has no 'description:'"

echo "==> checking generated tokens are current"
python3 tools/build_tokens.py --check \
  || fail "tokens/ is stale. Run: python3 tools/build_tokens.py"

if command -v xmllint >/dev/null 2>&1; then
  echo "==> validating bundled SVGs"
  for pair in "${ASSETS[@]}"; do
    src="${pair%%:*}"
    [[ -f "$src" ]] || fail "asset missing: $src"
    xmllint --noout "$src" || fail "invalid SVG: $src"
  done
else
  echo "==> xmllint not found, skipping SVG validation"
fi

# ------------------------------------------------------------------ assemble --

BUILD="$STAGE/$SKILL_NAME"
mkdir -p "$BUILD/references" "$BUILD/assets" "$BUILD/tokens"

cp skill/SKILL.md "$BUILD/SKILL.md"

echo "==> copying references"
for pair in "${REFERENCES[@]}"; do
  src="${pair%%:*}"; dst="${pair#*:}"
  [[ -f "$src" ]] || fail "design doc missing: $src"
  cp "$src" "$BUILD/references/$dst"
done

echo "==> copying assets"
for pair in "${ASSETS[@]}"; do
  src="${pair%%:*}"; dst="${pair#*:}"
  mkdir -p "$BUILD/assets/$(dirname "$dst")"
  cp "$src" "$BUILD/assets/$dst"
done

echo "==> copying tokens"
cp tokens/*.json "$BUILD/tokens/"

# The filesystem this repo lives on writes AppleDouble siblings; never ship them.
/usr/bin/find "$BUILD" \( -name '._*' -o -name '.DS_Store' \) -delete 2>/dev/null || true

# Verify the bundle really is the repo, not a stale copy of it.
echo "==> verifying bundle matches source"
for pair in "${REFERENCES[@]}"; do
  src="${pair%%:*}"; dst="${pair#*:}"
  cmp -s "$src" "$BUILD/references/$dst" || fail "reference drift: $dst"
done

# Fixed mtimes make the zip byte-reproducible, so --check can compare hashes.
/usr/bin/find "$BUILD" -exec touch -t 202001010000 {} +

# --------------------------------------------------------------------- emit --

mkdir -p "$OUT_DIR"
NEW="$STAGE/${SKILL_NAME}.skill"
# Feed zip an explicitly sorted file list rather than letting `zip -r` walk the
# tree. Directory traversal order is filesystem-dependent (APFS and ext4 differ),
# so `-r` produces a different byte stream per machine and --check would report a
# perfectly good bundle as stale in CI.
( cd "$STAGE" && /usr/bin/find "$SKILL_NAME" -type f | LC_ALL=C sort | zip -q -X "$NEW" -@ )

if (( CHECK )); then
  [[ -f "$OUT" ]] || fail "$OUT does not exist. Run: tools/build_skill.sh"
  if cmp -s "$NEW" "$OUT"; then
    echo "ok: $OUT is up to date"
    exit 0
  fi
  fail "$OUT is stale. Run: tools/build_skill.sh"
fi

mv "$NEW" "$OUT"
echo
echo "built $OUT"
unzip -l "$OUT" | tail -n +4 | sed '$d'
