" Set the font in the GUI
set guifont=Monaco:h15

" Hide Gvim / MacVim top toolbar
set guioptions-=T

" Reload the files edited
set guioptions+=c

" Make a copy of the file and overwrite the original one
set backupcopy=yes

" Increase linespace
"set linespace=2

" Disabling cursor blinking
set guicursor+=a:blinkon0

" Mouse support
set mouse=a

" Hide the mouse pointer while typing
set mousehide

" Dark background
set background=dark

" Fix Solarized colorscheme toggle background
call togglebg#map("")
