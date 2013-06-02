" Set the font in the GUI
set guifont=Menlo\ for\ Powerline:h14

" Hide Gvim / MacVim top toolbar
set guioptions-=T

" Reload the files edited 
set guioptions+=c

" Make a copy of the file and overwrite the original one
set backupcopy=yes

" Increase linespace
set linespace=2

" Disabling cursor blinking
set guicursor+=a:blinkon0

" Dark background
set background=dark

" Fix Solarized colorscheme toggle background
call togglebg#map("")
