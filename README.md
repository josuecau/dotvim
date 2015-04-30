## Dotvim

Not The Ultimate Vim Configuration, only mine.

### Prerequisites

* [Neovim](https://github.com/neovim/neovim/wiki/Installing)
* [Python client for Neovim](https://github.com/neovim/python-client)
* [The Silver Searcher (Ag)](http://geoff.greer.fm/ag/)
* [FZF](https://github.com/junegunn/fzf)

### Installation

    $ git clone https://github.com/josuecau/dotvim.git ~/.vim
    $ mkdir -p ~/.vim/autoload
    $ curl -fLo ~/.vim/autoload/plug.vim \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    $ ln -s ~/.vim ~/.nvim
    $ ln -s ~/.vim/vimrc ~/.vimrc
    $ ln -s ~/.vim/vimrc ~/.nvimrc

Launch Vim and run `:PlugInstall`
