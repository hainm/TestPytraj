#!/bin/sh

conda install parmed -c ambermd --yes
conda install pysander -c hainm --yes

python -c 'import sander; print(sander)'
