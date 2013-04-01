set nocompatible
call pathogen#infect()
syntax on
filetype plugin on
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
set guifont=Monaco:h13
set fileformat=unix
set encoding=utf-8 nobomb
set number
set ruler
set wrap
set history=100
set ignorecase
set smartcase
set incsearch
set hlsearch
set textwidth=79
set formatoptions=qrn1
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set cursorline
set gdefault
set t_Co=256
set title
set showmode
set mouse=a
set clipboard=unnamed
set noerrorbells
let mapleader=","
xnoremap p pgvy
"let NERDTreeShowHidden=1
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :TagbarToggle<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
