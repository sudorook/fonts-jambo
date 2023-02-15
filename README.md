# Jambo Mono Fonts

Slightly tweaked Ubuntu Mono fonts patched with the [Nerd
fonts](https://github.com/ryanoasis/nerd-fonts) icon set. They are merely
intended as fixes to several slight flaws in the original and not as a new font
project.

## Alterations

1. `W` and `w` - thickened to make character height appear more uniform across
   lines.
2. `-` - lengthened hyphen.
3. `*A*` - thickened and shifted left leg of italic.
4. `%` - rounder circles.
5. `$` - vertical line through the center.
6. `0` - diagonal line across the middle instead of a dot.
7. `m` - thickened and slightly lengthened middle.
8. `{` and `}` - thickened middle nub and brace ends.
9. OpenType font variant. (Ubuntu Mono is only available as TTF.)

The changes are very small.

Comparison with original below ('red' is original Ubuntu, 'cyan' is Jambo):

![Regular](assets/comparison-R.png)

![Italic](assets/comparison-RI.png)

![Bold](assets/comparison-B.png)

![Bold Italic](assets/comparison-BI.png)

## Available styles

1. JamboMono-{R,RI,B,BI}.ttf - TrueType variants (no Nerd symbolic fonts)
2. JamboMono-{R,RI,B,BI}.otf - OpenType font with hinting metadata (no Nerd symbolic fonts)
3. JamboMonoNerd-{R,RI,B,BI}.ttf - TrueType with Nerd symbolic fonts
4. JamboMonoNerd-{R,RI,B,BI}.otf - OpenType with Nerd symbolic fonts
5. JamboMonoNerd-{R,RI,B,BI}-WC.ttf - TrueType with Nerd symbolic fonts (Windows-compatible)
6. JamboMonoNerd-{R,RI,B,BI}-WC.otf - OpenType with Nerd symbolic fonts (Windows-compatible)

Patched against Nerd fonts v2.3.3 (01/24/2023).

## Installation

The `install` script will install the font in either
`${HOME}/.local/share/fonts` or `/usr/local/share/fonts`, depending of the user
is root or not. Simply run:
```bash
./install
```

## Building

All changes were made using Font Lab 8, including the hinting. The \*vfc file
are available in the 'src/' directory.
