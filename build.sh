#!/bin/shh

git clone https://github.com/hainm/conda-recipes
cd conda-recipes
conda build libcpptraj
conda build pytraj
