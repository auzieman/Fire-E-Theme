#!/bin/sh
# Run in the existing constrained BKC native compiler job, not on the desktop.
set -eu
cd "$(dirname "$0")"
mkdir -p ../build
edje_cc -id . wallpaper.edc ../build/wallpaper-still.edj
# Fire Strong Animated is held back after user visual review (2026-10-30).
# Its experimental sources remain for revision; do not package existing outputs.
