#!/usr/bin/env sh

set -euo pipefail
IFS=$'\n\t'

FOO=$(basename "$1")

echo "import(\"$1\");" > "/tmp/stl2png_$FOO.scad"
/usr/bin/openscad  --colorscheme="Cornfield" --imgsize="$3,$3" -o "$2.png" "/tmp/stl2png_$FOO.scad"
rm "/tmp/stl2png_$FOO.scad"
/usr/bin/convert "$2".png -fuzz 20% -transparent white "$2".png
mv "$2.png" "$2"
