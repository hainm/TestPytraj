#!/bin/sh

git clone https://github.com/hainm/pytraj
cd pytraj

conda install pytraj -c ambermd --yes
python run_tests.py sim || exit 1
python run_tests.py
