#!/usr/bin/env bash
#
# horror/ mirror check. Catches drift between the two horror/ folders before
# anyone briefs work against a stale copy.
#
#   ./horror/mirror-check.sh
#       Compare this checkout's horror/ with horror/mirror-manifest.txt, which
#       records the blob SHA of every mirrored file.
#
#   ./horror/mirror-check.sh <checkout-a> <checkout-b>
#       Compare the two checkouts' horror/ folders file by file, including
#       mirror-manifest.txt and this script, which the manifest cannot list.
#
#   ./horror/mirror-check.sh --write
#       Rewrite mirror-manifest.txt from the current checkout. Do this in the
#       copy you trust, then copy the manifest to the other repo.
#
# Exit status: 0 in sync, 1 drift, 2 usage or missing folder.

set -uo pipefail

here=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd) || exit 2
root=$(dirname -- "$here")
manifest="$here/mirror-manifest.txt"
manifest_rel=horror/mirror-manifest.txt

hash_tree() { # $1 checkout root -> "<path>  <blob>" lines, in path order
  local checkout=$1
  ( cd -- "$checkout" 2>/dev/null || { echo "mirror-check: cannot enter $checkout" >&2; exit 2; }
    [ -d horror ] || { echo "mirror-check: no horror/ folder in $checkout" >&2; exit 2; }
    find horror -type f -print0 | LC_ALL=C sort -z |
      while IFS= read -r -d '' f; do
        printf '%s  %s\n' "$f" "$(git hash-object -- "$f")"
      done )
}

header() {
  cat <<'TXT'
# Blob SHAs for every mirrored file in horror/.
# Regenerate with: ./horror/mirror-check.sh --write
# Verify with:     ./horror/mirror-check.sh
#                  ./horror/mirror-check.sh <a-checkout> <b-checkout>
# This file cannot list its own hash, so only the two-checkout form catches
# drift in the manifest itself.
TXT
}

if [ "${1:-}" = "--write" ]; then
  { header; echo
    hash_tree "$root" | grep -v "^$manifest_rel  "
  } > "$manifest" || { echo "mirror-check: could not write $manifest" >&2; exit 2; }
  echo "mirror-check: wrote $manifest_rel ($(grep -vc '^#\|^$' "$manifest") files)"
  exit 0
fi

if [ $# -eq 2 ]; then
  left=$(hash_tree "$1") || exit 2
  right=$(hash_tree "$2") || exit 2
  diffout=$(diff -u <(printf '%s\n' "$left") <(printf '%s\n' "$right"))
  if [ -z "$diffout" ]; then
    echo "mirror-check: $1 and $2 agree on all $(printf '%s\n' "$left" | grep -c .) files in horror/"
    exit 0
  fi
  printf '%s\n' "$diffout" | grep '^[-+][^-+]' | sed 's/^/  /'
  echo "mirror-check: DRIFT between $1 and $2 above ('-' = first checkout, '+' = second)"
  exit 1
fi

[ $# -eq 0 ] || { echo "usage: mirror-check.sh [--write | <checkout-a> <checkout-b>]" >&2; exit 2; }

[ -f "$manifest" ] || { echo "mirror-check: $manifest_rel is missing; run --write" >&2; exit 2; }
expected=$(grep -v '^#' "$manifest" | sed '/^[[:space:]]*$/d')
actual=$(hash_tree "$root" | grep -v "^$manifest_rel  ")
diffout=$(diff -u <(printf '%s\n' "$expected") <(printf '%s\n' "$actual"))
if [ -z "$diffout" ]; then
  echo "mirror-check: horror/ matches $manifest_rel ($(printf '%s\n' "$expected" | grep -c .) files)"
  exit 0
fi
printf '%s\n' "$diffout" | grep '^[-+][^-+]' | sed 's/^/  /'
echo "mirror-check: DRIFT from $manifest_rel above ('-' = recorded, '+' = on disk)"
exit 1
