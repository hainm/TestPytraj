#!/bin/sh

git clone https://github.com/Amber-MD/conda-recipes
cd conda-recipes
conda build libcpptraj
conda build pytraj
