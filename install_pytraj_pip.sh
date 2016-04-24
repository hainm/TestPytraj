#!/bin/sh


# just clone to get test files
git clone https://github.com/amber-md/pytraj
cd pytraj

# just clone to get saved test files
git clone https://github.com/amber-md/cpptraj

pip install pytraj

python run_tests.py sim || exit 1

source devtools/travis-ci/run_tests.sh
cd tests && nosetests energies/*py -vs

# python run_tests.py
