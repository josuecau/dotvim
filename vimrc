" Use vim, no vi defaults
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'airblade/vim-gitgutter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'godlygeek/tabular'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/emmet-vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'

" Enable plugins
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Remove swap and backup files from your working directory
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Set colorscheme
set background=dark
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:airline_powerline_fonts = 1
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

" Show a colored column at 80 characters
set colorcolumn=80

" Sets how many lines of history VIM has to remember
set history=1000

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

" Indenting
set autoindent smartindent
set copyindent preserveindent
set noexpandtab
set shiftround
set shiftwidth=4
set smarttab
set softtabstop=0
set tabstop=4

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

" Delay the timeout of key sequences
set ttimeout
set ttimeoutlen=50

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

" Lines to scroll when cursor leaves screen
set scrolljump=3

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
set wildignore+=*.so,*.swp,._*,.DS_Store,.git,.svn,*.zip,*.tar.gz,*.tar.bz2,*.rar

" Map leader
let mapleader = ","
let g:mapleader = ","

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

" Use :w!! to sudo & write
cmap w!! w !sudo tee % >/dev/null

" NERDTree
let NERDTreeChDirMode = 2
let NERDTreeWinSize = 35
nnoremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" TagBar
nnoremap <F3> :TagbarToggle<CR>

" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" SuperTab
let g:SuperTabDefaultCompletionType = "context"

" Syntastic
let g:syntastic_error_symbol = '✘'
let g:syntastic_style_error_symbol = '>'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = '>'

