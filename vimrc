" Use vim, no vi defaults
set nocompatible

" Include pathogen
call pathogen#infect()
call pathogen#helptags()

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax on

" Set colorscheme
set background=dark
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:Powerline_symbols='fancy'
colorscheme solarized

" Use Unix as the standard file type
set fileformat=unix

" Set utf8 as standard encoding
set encoding=utf-8 nobomb

" Display line numbers
set number

" Always show current position
set ruler

" Wrap lines
set wrap
set linebreak
set textwidth=79
set formatoptions=qrn1

" Show a colored column at 85 characters
set colorcolumn=85

" Sets how many lines of history VIM has to remember
set history=100

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Highlight search dynamically as they are typed
set incsearch

" Applies substitutions globally on line
set gdefault

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" Include dash as word separator
set iskeyword+=-

" Automatic indentation
set autoindent

" 4 spaces instead of tab
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

" Highlight current line
set cursorline

" Prevent the cursor from changing the current column when jumping to other lines within the window
set nostartofline

" Tell Vim to always put a status line in, even if there is only one window
set laststatus=2

" Enable spell checking
set spelllang=en,fr
set spell
set spellsuggest=5

" Hides buffers instead of closing them
set hidden

" Set to auto read when a file is changed from the outside
set autoread

" enable setting title
set title

" configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Show current vim mode
set showmode

" Keep 3 lines when scrolling
set scrolloff=3

" Mouse support
set mouse=a

" Hide the mouse pointer while typing
set mousehide

" Accessing the system clipboard
set clipboard=unnamed

" Disable vim's startup message
set shortmess=atI

" No annoying sound on errors
set visualbell
set noerrorbells

" For restore_view plugin
set viewoptions=cursor,folds,slash,unix

" Turn on the WiLd menu
set wildmenu

" Ignore this files
set wildignore+=*.so,*.swp,._*,.git,.svn,*.zip,*.tar.gz,*.tar.bz2,*.rar

" Map leader
let mapleader = ","
let g:mapleader = ","

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'

" Paste multiple times
xnoremap p pgvy

" Toggle paste mode
nmap <silent> <F1> :set invpaste<CR>:set paste?<CR>
imap <silent> <F1> <ESC>:set invpaste<CR>:set paste?<CR>

" Toggle hlsearch with <leader>hs
nmap <leader>hs :set hlsearch! hlsearch?<CR>

" Format the entire file
nmap <leader>ff ggVG=

" Upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" Upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" NERDTree
map <Leader>n <plug>NERDTreeTabsToggle<CR>
"let NERDTreeShowHidden=1
nnoremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" TagBar
nnoremap <F3> :TagbarToggle<CR>

" Gundo
nnoremap <F4> :GundoToggle<CR>

" Tabularize
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

" Autocompletion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType text setlocal formatprg=par\ -w80 formatoptions=1t noexpandtab complete+=s
