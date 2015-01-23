## Dotvim

Not The Ultimate Vim Configuration, only mine.

### Prerequisites

* [Neovim](https://github.com/neovim/neovim/wiki/Installing)
* [Python client for Neovim](https://github.com/neovim/python-client)
* [The Silver Searcher (Ag)](http://geoff.greer.fm/ag/)

### Installation

    $ git clone https://github.com/josuecau/dotvim.git ~/.nvim
    $ mkdir -p ~/.nvim/autoload
    $ curl -fLo ~/.nvim/autoload/plug.vim \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    $ ln -s ~/.nvim/nvimrc ~/.nvimrc

Launch Vim and run `:PlugInstall`
