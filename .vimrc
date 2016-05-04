call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/candycode.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
call plug#end()
syntax on
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
set number
set dir=~/.tmp/swap
set backup
set backupdir=~/.tmp/backup
set undofile
set undodir=~/.tmp/undo/
set mouse=a
colo candycode
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

