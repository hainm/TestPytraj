#!/bin/sh

git clone https://github.com/hainm/pytraj
cd pytraj

conda install pytraj-dev -c ambermd --yes
python run_tests.py
