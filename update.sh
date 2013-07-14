#!/bin/bash

echo "Update dotvim..."
cd ~/.vim
git checkout master
if git pull --rebase origin master
then
    git pull origin master
    git submodule foreach git pull origin master
    git submodule update --init
    echo "Done."
else
    echo "An error occurred. Please try again later."
fi
