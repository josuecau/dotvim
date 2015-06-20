## Dotvim

Not The Ultimate Vim Configuration, only mine.

### Prerequisites

* [The Silver Searcher (Ag)](http://geoff.greer.fm/ag/)
* [FZF](https://github.com/junegunn/fzf)

### Installation

    $ git clone https://github.com/josuecau/dotvim.git ~/.vim
    $ curl -fLo ~/.vim/autoload/plug.vim \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    $ ln -s ~/.vim/vimrc ~/.vimrc

Additionally for Neovim:

    $ ln -s ~/.vim ~/.nvim
    $ ln -s ~/.vim/vimrc ~/.nvimrc

Launch Vim, run `:PlugInstall` and relaunch Vim.
