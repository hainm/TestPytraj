#!/bin/sh

conda install pysander -c hainm --yes

python -c 'import sander; print(sander)'
