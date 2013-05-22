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
set iskeyword+=-
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
set hidden
set autoread
set title
set showmode
set scrolloff=3
set mouse=a
set clipboard=unnamed
set shortmess=atI
set noerrorbells
set viewoptions=cursor,folds,slash,unix
set wildmenu
let mapleader=","
let g:Powerline_symbols='fancy'
xnoremap p pgvy
"let NERDTreeShowHidden=1
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :TagbarToggle<CR>
nnoremap <F4> :GundoToggle<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap >> >gv
vmap << <gv
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType text setlocal formatprg=par\ -w80 formatoptions=1t noexpandtab complete+=s
