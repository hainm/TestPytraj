#!/bin/sh

git clone https://github.com/amber-md/pytraj
cd pytraj

git clone https://github.com/amber-md/cpptraj

pip install pytraj
python run_tests.py
