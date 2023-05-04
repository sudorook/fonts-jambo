#! /bin/bash
set -eu

DIR="$(dirname "${0}")"
SAMPLE="ascii.txt"
DENSITY=300
JSIZE=91
USIZE=109

# Regular
magick +antialias -density "${DENSITY}" -fill turquoise -font ../fonts/ttf/jambo-mono-regular.ttf \
  -pointsize "${JSIZE}" label:@"${SAMPLE}" jambo.png
magick +antialias -density "${DENSITY}" -fill coral -font UbuntuMono-R.ttf \
  -pointsize "${USIZE}" label:@"${SAMPLE}" ubuntu.png
magick ubuntu.png jambo.png -compose multiply -composite comparison-large.png
magick comparison-large.png -resize 25% "${DIR}"/../assets/comparison-R.png

# Bold
magick +antialias -density "${DENSITY}" -fill turquoise -font ../fonts/ttf/jambo-mono-bold.ttf \
  -pointsize "${JSIZE}" label:@"${SAMPLE}" jambo.png
magick +antialias -density "${DENSITY}" -fill coral -font UbuntuMono-B.ttf \
  -pointsize "${USIZE}" label:@"${SAMPLE}" ubuntu.png
magick ubuntu.png jambo.png -compose multiply -composite comparison-large.png
magick comparison-large.png -resize 25% "${DIR}"/../assets/comparison-B.png

# Italic
magick +antialias -density "${DENSITY}" -fill turquoise -font ../fonts/ttf/jambo-mono-italic.ttf \
  -pointsize "${JSIZE}" label:@"${SAMPLE}" jambo.png
magick +antialias -density "${DENSITY}" -fill coral -font UbuntuMono-RI.ttf \
  -pointsize "${USIZE}" label:@"${SAMPLE}" ubuntu.png
magick ubuntu.png jambo.png -compose multiply -composite comparison-large.png
magick comparison-large.png -resize 25% "${DIR}"/../assets/comparison-RI.png

# Bold Italic
magick +antialias -density "${DENSITY}" -fill turquoise -font ../fonts/ttf/jambo-mono-bolditalic.ttf \
  -pointsize "${JSIZE}" label:@"${SAMPLE}" jambo.png
magick +antialias -density "${DENSITY}" -fill coral -font UbuntuMono-BI.ttf \
  -pointsize "${USIZE}" label:@"${SAMPLE}" ubuntu.png
magick ubuntu.png jambo.png -compose multiply -composite comparison-large.png
magick comparison-large.png -resize 25% "${DIR}"/../assets/comparison-BI.png

rm comparison-large.png
rm jambo.png
rm ubuntu.png
