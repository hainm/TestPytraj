#!/bin/sh

# for testing to upload to pypi
git clone https://github.com/hainm/pytraj
cd pytraj

pip install -i https://pypi.anaconda.org/hainm/simple pytraj
cd tests
nosetests -vs .
