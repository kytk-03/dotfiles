if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/kiyotaka/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/kiyotaka/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/kiyotaka/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/kiyotaka/.config/nvim/after,/home/kiyotaka/.config/nvim/.vim/bundles/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/kiyotaka/dotfiles/nvim/init.vim', '/home/kiyotaka/.config/nvim/.vim/bundles/dein.toml', '/home/kiyotaka/.config/nvim/.vim/bundles/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/kiyotaka/.config/nvim/.vim/bundles'
let g:dein#_runtime_path = '/home/kiyotaka/.config/nvim/.vim/bundles/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/kiyotaka/.config/nvim/.vim/bundles/.cache/init.vim'
let &runtimepath = '/home/kiyotaka/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/etc/xdg/nvim,/home/kiyotaka/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/kiyotaka/.config/nvim/.vim/bundles/repos/github.com/Shougo/vimproc.vim,/home/kiyotaka/.config/nvim/.vim/bundles/repos/github.com/Shougo/dein.vim,/home/kiyotaka/.config/nvim/.vim/bundles/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/kiyotaka/.config/nvim/.vim/bundles/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/kiyotaka/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/kiyotaka/.config/nvim/after'
filetype off
            imap <C-k>     <Plug>(neosnippet_expand_or_jump)
            smap <C-k>     <Plug>(neosnippet_expand_or_jump)
            xmap <C-k>     <Plug>(neosnippet_expand_target)
            smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
            if has('conceal')
              set conceallevel=2 concealcursor=niv
            endif
            let g:tex_flavor="latex"
            
            let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-6.0/lib/libclang-6.0.so.1'
            let g:deoplete#sources#clang#clang_header = '/usr/include/clang'
           
map <C-n> <plug>NERDTreeTabsToggle<CR>
              let g:nerdtree_tabs_open_on_console_startup=0
           
            let g:user_emmet_settings = { 'variables' : {  'lang' : "ja" }}
           
let g:NERDTreeShowHidden=1
            let g:deoplete#enable_at_startup = 1
            set completeopt-=preview
           
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
            let g:quickrun_config = get(g:, 'quickrun_config', {})
            let g:quickrun_config._ = { 'runner'    : 'vimproc', 'runner/vimproc/updatetime' : 60, 'outputter' : 'error', 'outputter/error/success' : 'buffer', 'outputter/error/error'   : 'quickfix', 'outputter/buffer/split'  : ':rightbelow 50vs', 'outputter/buffer/close_on_empty' : 1, }
            let g:quickrun_config['tex'] = { 'command' : 'latexmk',              'exec': ['%c -gg -pdfdvi %s', 'evince %s:r.pdf'],               }
            nnoremap <silent><F5> :w<CR>:QuickRun<CR>
           
let g:jedi#force_py_version = 2
