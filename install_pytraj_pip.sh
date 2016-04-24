#!/bin/sh


# just clone to get test files
git clone https://github.com/amber-md/pytraj
cd pytraj

# check recent version that does not have 'esander'
git checkout 87639ddfc893a30c07c695a9913553e1c809eda7

# just clone to get saved test files
git clone https://github.com/amber-md/cpptraj

pip install pytraj

python run_tests.py sim || exit 1

cd tests/fake_amberhome/
export AMBERHOME=`pwd`

cd .. && nosetests energies/*py -vs
