#!/bin/sh


# just clone to get test files
git clone https://github.com/amber-md/pytraj
cd pytraj

# just clone to get saved test files
git clone https://github.com/amber-md/cpptraj

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    # pip install -i https://pypi.anaconda.org/ambermd/simple pytraj
    pip install pytraj
else
    pip install pytraj
fi

python run_tests.py sim || exit 1
python run_tests.py
