#!/bin/sh

git clone https://github.com/hainm/pytraj
cd pytraj
conda install pytraj -c ambermd --yes

git checkout gh-pages
make
