#! /bin/bash
set -eu

DIR="$(dirname "${0}")"
SAMPLE="ascii.txt"
SIZE=100
DENSITY=300

VARIANTS=(R RI B BI)

for VARIANT in "${VARIANTS[@]}"; do
  JAMBO=../ttf/JamboMono-"${VARIANT}".ttf
  UBUNTU=UbuntuMono-"${VARIANT}".ttf

  echo "Building comparison: ${VARIANT@Q}."

  magick +antialias -density "${DENSITY}" -fill red \
    -font "${UBUNTU}" -pointsize "${SIZE}" label:@"${SAMPLE}" "UbuntuMono-${VARIANT}.png"

  magick +antialias -density "${DENSITY}" -fill cyan \
    -font "${JAMBO}" -pointsize "${SIZE}" label:@"${SAMPLE}" "JamboMono-${VARIANT}.png"

  magick "UbuntuMono-${VARIANT}.png" "JamboMono-${VARIANT}.png" \
    -compose multiply -composite comparison-large-"${VARIANT}".png

  mkdir -p "${DIR}"/../assets/
  magick comparison-large-"${VARIANT}".png -resize 25% "${DIR}"/../assets/comparison-"${VARIANT}".png

  rm "JamboMono-${VARIANT}.png" "UbuntuMono-${VARIANT}.png" comparison-large-"${VARIANT}".png
done
