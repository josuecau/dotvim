" Set the font in the GUI
set guifont=Monaco:h15

" Hide Gvim / MacVim top toolbar
set guioptions-=T

" Reload the files edited
set guioptions+=c

" Make a copy of the file and overwrite the original one
set backupcopy=yes

" Disabling cursor blinking
set guicursor+=a:blinkon0

" Mouse support
set mouse=a

" Hide the mouse pointer while typing
set mousehide

nnoremap <silent> <F5> :exec "colorscheme " .
  \ ((g:colors_name == "seoul256") ? "seoul256-light" : "seoul256")<CR>
