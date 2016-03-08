#!/bin/shh

git clone https://github.com/hainm/conda-recipes
cd conda-recipes
git checkout test
conda build libcpptraj
