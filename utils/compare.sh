#! /bin/bash
set -eu

DIR="$(dirname "${0}")"
SAMPLE="ascii.txt"
DENSITY=300
JSIZE=20
USIZE=24 # JSIZEx1.2

mkdir -p "${DIR}"/../assets/

# Regular
magick -density "${DENSITY}" -fill turquoise -font ../fonts/ttf/jambo-mono-regular.ttf \
  -pointsize "${JSIZE}" label:@"${SAMPLE}" jambo.png
magick -density "${DENSITY}" -fill coral -font UbuntuMono-R.ttf \
  -pointsize "${USIZE}" label:@"${SAMPLE}" ubuntu.png
magick ubuntu.png jambo.png -compose multiply -composite "${DIR}"/../assets/comparison-R.png

# Bold
magick -density "${DENSITY}" -fill turquoise -font ../fonts/ttf/jambo-mono-bold.ttf \
  -pointsize "${JSIZE}" label:@"${SAMPLE}" jambo.png
magick -density "${DENSITY}" -fill coral -font UbuntuMono-B.ttf \
  -pointsize "${USIZE}" label:@"${SAMPLE}" ubuntu.png
magick ubuntu.png jambo.png -compose multiply -composite "${DIR}"/../assets/comparison-B.png

# Italic
magick -density "${DENSITY}" -fill turquoise -font ../fonts/ttf/jambo-mono-italic.ttf \
  -pointsize "${JSIZE}" label:@"${SAMPLE}" jambo.png
magick -density "${DENSITY}" -fill coral -font UbuntuMono-RI.ttf \
  -pointsize "${USIZE}" label:@"${SAMPLE}" ubuntu.png
magick ubuntu.png jambo.png -compose multiply -composite "${DIR}"/../assets/comparison-RI.png

# Bold Italic
magick -density "${DENSITY}" -fill turquoise -font ../fonts/ttf/jambo-mono-bolditalic.ttf \
  -pointsize "${JSIZE}" label:@"${SAMPLE}" jambo.png
magick -density "${DENSITY}" -fill coral -font UbuntuMono-BI.ttf \
  -pointsize "${USIZE}" label:@"${SAMPLE}" ubuntu.png
magick ubuntu.png jambo.png -compose multiply -composite "${DIR}"/../assets/comparison-BI.png

rm jambo.png
rm ubuntu.png
