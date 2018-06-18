setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=0
autocmd BufWritePre * :%s/\s+$//ge
setlocal textwidth=80

python3 << EOF
import subprocess
import sys
path = subprocess.run(['python','-c','import site; print(site.getsitepackages()[0])'],
                      stdout=subprocess.PIPE).stdout
path = path.strip()
path = path.decode('utf-8')
path = str(path)

if not path in sys.path:
    sys.path.append(path)
EOF
