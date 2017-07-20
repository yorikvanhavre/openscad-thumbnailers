#!/usr/bin/env sh

echo "import(\"$1\");" > /tmp/stl2png_$(basename $1).scad
/usr/bin/openscad  --colorscheme="Tomorrow" --imgsize=$3,$3 -o $2.png /tmp/stl2png_$(basename $1).scad
rm /tmp/stl2png_$(basename $1).scad
/usr/bin/convert $2.png -fuzz 20% -transparent white $2.png
mv $2.png $2
