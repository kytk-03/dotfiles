"dein Scripts-----------------------------
if &compatible
  set nocompatidf
  le
endif

let g:dein_dir = expand('~/.config/nvim/.vim/bundles')
let s:dein_repo_dir = g:dein_dir . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_dir)
	execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif

set runtimepath+=~/.config/nvim/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state(g:dein_dir)
	let s:toml = g:dein_dir . '/dein.toml'
	let s:lazy_toml = g:dein_dir . '/dein_lazy.toml'
	call dein#begin(expand('~/.config/nvim/.vim/bundles'), [$MYVIMRC, s:toml])

	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

syntax on
filetype plugin indent on
colorscheme molokai
set t_Co=256
hi Visual ctermbg=216

set nobackup
set viminfo=
set noundofile

set tabstop=2
set shiftwidth=2
set number
set encoding=utf-8
set expandtab
set history=200
set mouse=a
set ignorecase
set smartcase

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'.' : '%%'
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

if has('unix')
  let g:python_host_prog = '/home/kiyotaka/.pyenv/versions/anaconda3-5.2.0/envs/py2.7/bin/python' 
  let g:python3_host_prog = '/home/kiyotaka/.pyenv/versions/anaconda3-5.2.0/envs/py3.6/bin/python' 
endif
if has('win32') || has('win64')
  let g:python_host_prog = 'C:\Users\qpm\Anaconda3\envs\py2.7\python.exe' 
  let g:python3_host_prog = 'C:\Users\qpm\Anaconda3\envs\py3.6\python.exe' 
endif

source $VIMRUNTIME/macros/matchit.vim
hi MatchParen term=standout ctermbg=LightGrey ctermfg=Black guibg=LightGrey guifg=Black
set hidden
let g:tex_conceal=''
set spelllang+=cjk
set spell

augroup vimrc-local
  autocmd!
  autocmd BufNewFile,BufReadPost * call s:vimrc_local(expand('<afile>:p:h'))
augroup END

function! s:vimrc_local(loc)
  let files = findfile('.vimrc.local', escape(a:loc, ' ') . ';', -1)
  for i in reverse(filter(files, 'filereadable(v:val)'))
    source `=i`
  endfor
endfunction


xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

let mapleader = "\<Space>"
nnoremap <Leader>f :Denite -mode=normal file<CR>
nnoremap <Leader>g :Denite -mode=normal grep<CR>
nnoremap <Leader>b :Denite -mode=normal buffer<CR>
nnoremap <Leader>m :Denite -mode=normal file_mru<CR>
