#!/bin/bash

# SPDX-FileCopyrightText: 2023 sudorook <daemon@nullcodon.com>
#
# SPDX-License-Identifier: GPL-3.0-or-later
#
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the Free
# Software Foundation, either version 3 of the License, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program. If not, see <https://www.gnu.org/licenses/>.

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
