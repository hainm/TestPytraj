#!/bin/sh

git clone https://github.com/hainm/pytraj
cd pytraj

pip install pytraj
python run_tests.py
