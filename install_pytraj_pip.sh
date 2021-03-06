#!/bin/sh


# just clone to get test files
git clone https://github.com/amber-md/pytraj
cd pytraj

# just clone to get saved test files
git clone https://github.com/amber-md/cpptraj

pip install pytraj

python run_tests.py sim

cd tests/fake_amberhome/
export AMBERHOME=`pwd`

cd .. && nosetests -vs .
