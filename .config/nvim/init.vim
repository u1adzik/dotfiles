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
    Plug 'lifepillar/vim-solarized8'
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()

let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }

colorscheme solarized8
set termguicolors

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
