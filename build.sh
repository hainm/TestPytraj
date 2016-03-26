#!/bin/sh

git clone https://github.com/Amber-MD/conda-recipes
cd conda-recipes
conda build libcpptraj
# conda build pytraj
./run_build.sh pytraj/ # 2.7, 3.4, 3.5
