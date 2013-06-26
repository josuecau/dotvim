#!/bin/bash

echo "Update dotvim..."
cd ~/.vim
git checkout master
git pull origin master
git submodule foreach git pull origin master
git submodule update
echo "Done."
