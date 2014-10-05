" Use vim, no vi defaults
set nocompatible

" Include plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/switch.vim'
Plug 'bling/vim-airline'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'evidens/vim-twig', { 'for': 'twig' }
Plug 'garbas/vim-snipmate'
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion', { 'on': '<Plug>(easymotion-prefix)' }
Plug 'majutsushi/tagbar'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim', { 'on': 'Gist' }
Plug 'mattn/webapi-vim'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'mkd' }
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim', { 'on': 'Ag' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' }
Plug 'scrooloose/syntastic'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/LargeFile'
Plug 'vim-scripts/restore_view.vim'
Plug 'vim-scripts/smarty-syntax', { 'for': 'smarty' }
Plug 'vim-scripts/taglist.vim'
call plug#end()

" Remove swap and backup files from your working directory
set backupdir=~/.vim/backup
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim/tmp

" Set colorscheme
let g:seoul256_background=234
colorscheme seoul256
set background=dark

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
set formatoptions=tcqrn1
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

" Prevent the cursor from changing the current column when jumping to other
" lines within the window
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

" Turn on the wild menu
set wildmenu

" Ignore this files
set wildignore+=.git,.svn,.hg
set wildignore+=*.so,*.swp,*.sw,._*,.DS_Store
set wildignore+=*.zip,*.tar,*.gz,*.bz2,*.rar

" Map leader
let mapleader=","
let g:mapleader=","

" Paste multiple times
xnoremap p pgvy

" Toggle paste mode
set pastetoggle=<F2>

" Toggle hlsearch with <Leader>/
nnoremap <silent> <Leader>/ :set hlsearch! hlsearch?<CR>

" Delete trailing whitespaces
nnoremap <silent> <Leader>$ :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Format the entire file
nnoremap <silent> <F6> ggVG=

" Re-hardwrap paragraphs of text
nnoremap <Leader>q gqip

" Upper/lower word
nmap <Leader>u mQviwU`Q
nmap <Leader>l mQviwu`Q

" Upper/lower first char of word
nmap <Leader>U mQgewvU`Q
nmap <Leader>L mQgewvu`Q

" Use :w!! to sudo & write
cmap w!! w !sudo tee % >/dev/null

" Open a new vertical split and switch over to it
nnoremap <Leader>m <C-w>v<C-w>l

" Easy Motion
nmap <Leader> <Plug>(easymotion-prefix)

" Switch
nnoremap - :Switch<cr>

" NERDTree
let NERDTreeChDirMode=2
let NERDTreeWinSize=35
nnoremap <silent> <F1> :NERDTreeTabsToggle<CR>

" Airline
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='monochrome'

" TagBar
nnoremap <F3> :TagbarToggle<CR>

" Easy Align
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

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

" CtrlP
let g:ctrlp_working_path_mode='ra'

" Mardown
let g:vim_markdown_folding_disabled=1

" LargeFile
let g:LargeFile=2

" Ag
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching=0
endif
