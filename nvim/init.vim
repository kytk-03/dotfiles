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

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'.' : '%%'

let g:python_host_prog = '/home/kiyotaka/.pyenv/versions/anaconda3-5.2.0/envs/py2.7/bin/python' 
let g:python3_host_prog = '/home/kiyotaka/.pyenv/versions/anaconda3-5.2.0/envs/py3.6/bin/python' 
source $VIMRUNTIME/macros/matchit.vim
hi MatchParen term=standout ctermbg=LightGrey ctermfg=Black guibg=LightGrey guifg=Black
set hidden
let g:tex_conceal=''
