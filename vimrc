set nocompatible
call pathogen#infect()
syntax on
filetype plugin on
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
set fileformat=unix
set encoding=utf-8 nobomb
set number
set ruler
set wrap
set linebreak
set history=100
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set textwidth=79
set formatoptions=qrn1
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set cursorline
set nostartofline
set gdefault
set laststatus=2
set spelllang=en,fr
set spell
set spellsuggest=5
set t_Co=256
set title
set showmode
set scrolloff=3
set mouse=a
set clipboard=unnamed
set shortmess=atI
set noerrorbells
set wildmenu
let mapleader=","
xnoremap p pgvy
"let NERDTreeShowHidden=1
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :TagbarToggle<CR>
nnoremap <F4> :GundoToggle<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
" keep block highlighted when indenting
vmap >> >gv
vmap << <gv
autocmd FileType text setlocal formatprg=par\ -w80 formatoptions=1t noexpandtab complete+=s
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
