filetype plugin indent on
syntax on
set number relativenumber
set nobackup noswapfile
set expandtab smarttab tabstop=4 shiftwidth=4 autoindent
set mouse=
set viminfo=
set guicursor=
set ignorecase smartcase hlsearch incsearch
set encoding=utf8
set pastetoggle=<F2>
map q <Nop>
map Q <Nop>
set laststatus=2 noruler noshowmode shortmess=F

call plug#begin()
    Plug 'itchyny/lightline.vim'
    Plug 'mattn/emmet-vim'
    Plug 'lifepillar/vim-solarized8'
call plug#end()

let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

colorscheme solarized8
set termguicolors
