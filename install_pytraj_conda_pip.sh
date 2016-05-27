#!/bin/sh

# for testing to upload to pypi
git clone https://github.com/hainm/pytraj
cd pytraj

pip install -i https://pypi.anaconda.org/hainm/simple pytraj
python run_tests.py sim || exit 1
python run_tests.py
