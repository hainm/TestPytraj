#!/bin/shh

git clone https://github.com/hainm/conda-recipes
cd conda-recipes
git checkout no_openmp
conda build libcpptraj
