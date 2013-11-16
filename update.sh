#!/bin/bash

cd ~/.vim
git checkout master
git pull --rebase origin master
git submodule update --init --recursive
