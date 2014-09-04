" Use vim, no vi defaults
set nocompatible
filetype off

" Include plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source plugins
call vundle#end()

" Enable plugins
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Remove swap and backup files from your working directory
set backupdir=~/.vim/backup
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim/tmp

" Set colorscheme
set background=dark
set t_Co=256
let g:solarized_termcolors=256
let g:solarized_termtrans=1
"let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
colorscheme solarized
highlight SignColumn ctermbg=8

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
set showbreak=↪

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
set autoindent
set backspace=indent,eol,start
set smartindent
set copyindent
set preserveindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2

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

" Automatically change the current directory
set autochdir

" Enable setting title
set title

" Configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Show current vim mode
set noshowmode

" Keep 3 lines when scrolling
set scrolloff=3

" Lines to scroll when cursor leaves screen
set scrolljump=3

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
let mapleader=","
let g:mapleader=","

" Paste multiple times
xnoremap p pgvy

" Toggle paste mode
nmap <silent> <F1> :set invpaste<CR>:set paste?<CR>
imap <silent> <F1> <ESC>:set invpaste<CR>:set paste?<CR>

" Toggle hlsearch with <leader>/
nnoremap <silent> <Leader>/ :set hlsearch! hlsearch?<CR>

" Delete trailing whitespaces
nnoremap <Leader>tw :%s/\s\+$//e<CR>

" Format the entire file
nmap <leader>ff ggVG=

" Re-hardwrap paragraphs of text
nnoremap <leader>q gqip

" Upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" Upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" Use :w!! to sudo & write
cmap w!! w !sudo tee % >/dev/null

" Open a new vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>l

" Switch
nnoremap - :Switch<cr>

" NERDTree
let NERDTreeChDirMode=2
let NERDTreeWinSize=35
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
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabContextDefaultCompletionType="<c-n>"
let g:SuperTabClosePreviewOnPopupClose=1

" Syntastic
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='✘'
let g:syntastic_style_error_symbol='>'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol='>'

" Mardown
let g:vim_markdown_folding_disabled=1
