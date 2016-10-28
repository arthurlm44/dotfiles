call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/candycode.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'townk/vim-autoclose/'
Plug 'alvan/vim-closetag'
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
set hlsearch
colo candycode
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
