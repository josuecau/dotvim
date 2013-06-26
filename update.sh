#!/bin/bash

echo "\033[0;34mUpdate dotvim...\033[0m"
cd ~/.vim
git checkout master
git pull origin master
git submodule foreach git pull origin master
git submodule update
echo "\033[0;34mDone.\033[0m"
