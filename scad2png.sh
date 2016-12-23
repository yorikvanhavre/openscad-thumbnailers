#!/usr/bin/env sh

/usr/bin/openscad --colorscheme="Tomorrow Night" --imgsize=$3,$3 -o $2.png $1
mv $2.png $2
