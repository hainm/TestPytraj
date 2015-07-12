# copied from `ParmEd`
MINICONDA=Miniconda-latest-Linux-x86_64.sh
MINICONDA_MD5=$(curl -s http://repo.continuum.io/miniconda/ | grep -A3 $MINICONDA | sed -n '4p' | sed -n 's/ *<td>\(.*\)<\/td> */\1/p')
wget http://repo.continuum.io/miniconda/$MINICONDA
if [[ $MINICONDA_MD5 != $(md5sum $MINICONDA | cut -d ' ' -f 1) ]]; then
    echo "Miniconda MD5 mismatch"
    exit 1
fi
bash $MINICONDA -b

export PATH=$HOME/miniconda/bin:$PATH
conda install --yes conda-build jinja2 binstar pip
conda create -y -n myenv python=$PYTHON_VERSION numpy h5py

source activate myenv

# install other packages here
conda install --yes -c https://conda.binstar.org/omnia mdtraj
conda install --yes nose scipy
pip install git+git://github.com/swails/ParmEd
pip install memory_profiler
pip install psutil
