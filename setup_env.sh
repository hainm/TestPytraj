#!/bin/sh

# install miniconda
wget http://repo.continuum.io/miniconda/Miniconda-3.7.0-Linux-x86_64.sh -O miniconda.sh;
bash miniconda.sh -b

export PATH=$HOME/miniconda/bin:$PATH
conda install --yes conda-build jinja2 binstar pip
# do now install cython here. Do it later with different version on .travis.yaml
conda create -y -n myenv python=$PYTHON_VERSION numpy h5py mpi4py

source activate myenv

# install other packages here
pip install git+git://github.com/ParmEd/ParmEd
pip install memory_profiler
pip install psutil
pip install cclib
