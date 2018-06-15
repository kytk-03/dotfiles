setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=0
autocmd BufWritePre * :%s/\s+$//ge
setlocal textwidth=80
