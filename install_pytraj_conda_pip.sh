#!/bin/sh

# for testing to upload to pypi
git clone https://github.com/hainm/pytraj
cd pytraj

# just clone to get saved test files
git clone https://github.com/amber-md/cpptraj

pip install -i https://pypi.anaconda.org/hainm/simple pytraj

cd tests/fake_amberhome/
export AMBERHOME=`pwd`

cd ..

nosetests -vs .
