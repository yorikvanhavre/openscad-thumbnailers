#!/usr/bin/env sh

/usr/bin/openscad --colorscheme="Tomorrow Night" --imgsize=$3,$3 -o $2.png $1
/usr/bin/convert $2.png -fuzz 20% -transparent white $2.png
mv $2.png $2
