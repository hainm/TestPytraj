import sys
from pytraj import frame
import subprocess

fn = frame.__file__

if sys.platform.startswith('darwin'):
    output = subprocess.check_output('otool -L {fn} | grep libcpptraj'.format(fn=fn), shell=True)
else:
    output = subprocess.check_output('ldd {fn} | grep libcpptraj'.format(fn=fn), shell=True)

print(output)
