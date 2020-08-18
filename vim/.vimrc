" Sensible defaults
source $VIMRUNTIME/vimrc_example.vim
set nobackup
set noundofile

" Set up ALE before it loads.
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {'javascript': ['prettier']}
let g:ale_linters = {'javascript': ['tsserver', 'eslint']}

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Plugins list
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Respect gitignore with ctrl+p
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Custom status line
set laststatus=2
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %l:%c
