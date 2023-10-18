#/bin/bash

cp ~/.tcshrc tcshrc
cp ~/.gitconfig gitconfig
cp ~/.vimrc vimrc
find ~/.vim -name ".git*" -exec rm -rf {} +
rm -rf vim
cp -r ~/.vim vim
