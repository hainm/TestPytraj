#!/bin/sh

# install miniconda
if [ "$TRAVIS_OS_NAME" = "osx" ]; then
    wget http://repo.continuum.io/miniconda/Miniconda-3.7.0-MacOSX-x86_64.sh -O miniconda.sh;
else
    wget http://repo.continuum.io/miniconda/Miniconda-3.7.0-Linux-x86_64.sh -O miniconda.sh;
fi
bash miniconda.sh -b

export PATH=$HOME/miniconda/bin:$PATH
conda install --yes conda-build jinja2 binstar pip
# do now install cython here. Do it later with different version on .travis.yaml 
conda create -y -n myenv python=$PYTHON_VERSION numpy nose mpi4py libnetcdf openblas pyflakes jupyter notebook

source activate myenv
pip install https://github.com/ParmEd/ParmEd/archive/master.zip
conda install cclib -c omnia --yes
conda install mdtraj -c omnia --yes
