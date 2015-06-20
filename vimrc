" Include plugins
if filereadable(expand('~/.vim/plugins.vim'))
  call plug#begin('~/.vim/plugged')
  source ~/.vim/plugins.vim
  call plug#end()
endif

" Remove swap and backup files from your working directory
set backupdir=~/.vim/backup
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim/tmp

" Persistent undo
set undodir=~/.vim/undo
set undofile

" Set colorscheme
colorscheme base16-default
set background=dark

" Use Unix as the standard file type
set fileformat=unix

" Display line numbers
set number
set numberwidth=5

" Prevent Vim from showing '@' when a line doesn't fit on screen
set display+=lastline

" Always show current position
set ruler

" Wrap lines
set wrap
set linebreak
set textwidth=80
set formatoptions=qrn1
set showbreak=↪

" Show a colored column at 80 characters
set colorcolumn=+1

" Long lines slow down Vim
set synmaxcol=256

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

" Increment / decrement numbers and letters
set nrformats-=octal
set nrformats+=alpha

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
set timeoutlen=500
set ttimeoutlen=0

" Hides buffers instead of closing them
set hidden

" Set to auto read when a file is changed from the outside
set autoread

" Enable setting title
set title

" Configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Airline already shows vim mode
set noshowmode

" Keep 3 lines when scrolling
set scrolloff=3
set sidescrolloff=5

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
set wildmode=list:longest,full
set wildignorecase

" Ignore this files
set wildignore+=.git,.svn,.hg
set wildignore+=*.so,*.swp,*.sw,._*,.DS_Store
set wildignore+=*.zip,*.tar,*.gz,*.bz2,*.rar

" More natural window split
set splitbelow
set splitright

" Map leader
let mapleader="\<Space>"
let g:mapleader="\<Space>"

" Disable suspending Vim (use Tmux instead)
nnoremap <C-z> <Nop>

" Paste multiple times
xnoremap p pgvy

" Toggle paste mode
set pastetoggle=<F2>

" Toggle hlsearch with <Leader>/
nnoremap <silent> <Leader>/ :set hlsearch! hlsearch?<CR>

" Delete trailing whitespaces
nnoremap <silent> <Leader>$ :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>``

" Keep cursor in place when join lines with J
nnoremap J mzJ`z

" Format the entire file
nnoremap <silent> <F6> ggVG=

" Re-hardwrap paragraphs of text
nnoremap <Leader>q gqip

" Upper/lower word
nnoremap <Leader>u mQviwU`Q
nnoremap <Leader>l mQviwu`Q

" Capitalize word
nnoremap <Leader>U mQgewvU`Q

" Use :w!! to sudo & write
cmap w!! w !sudo tee % >/dev/null

" Easy Motion
nmap <Leader> <Plug>(easymotion-prefix)

" Switch
nnoremap - :Switch<cr>

" NERDTree
let NERDTreeChDirMode=1
let NERDTreeWinSize=35
nnoremap <silent> <F1> :NERDTreeTabsToggle<CR>

" Airline
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'

" TagBar
nnoremap <F3> :TagbarToggle<CR>
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1

" Easy Align
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

" SuperTab
let g:SuperTabClosePreviewOnPopupClose=1
let g:SuperTabContextDefaultCompletionType='<c-n>'
let g:SuperTabCrMapping=1
let g:SuperTabDefaultCompletionType='context'

" Syntastic
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_check_on_open=1
let g:syntastic_error_symbol='✘'
let g:syntastic_style_error_symbol='>'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_warning_symbol='>'

" FZF
nnoremap <Leader>z :FZF<CR>

" CtrlSF
nmap <Leader>g <Plug>CtrlSFPrompt
vmap <Leader>g <Plug>CtrlSFVwordPath
let g:ctrlsf_leading_space=5
let g:ctrlsf_position='right'

" Mardown
let g:vim_markdown_folding_disabled=1

" LargeFile
let g:LargeFile=2

" Ag
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif

" EditorConfig
if executable('editorconfig')
  let g:EditorConfig_core_mode='external_command'
endif
