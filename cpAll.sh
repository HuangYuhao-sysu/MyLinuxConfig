#/bin/bash

cp ~/.tcshrc tcshrc
cp ~/.gitconfig gitconfig
cp ~/.vimrc vimrc
rm -rf vim
cp -r ~/.vim vim
find vim -name ".git*" -exec rm -rf {} +
