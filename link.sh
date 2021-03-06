#!/bin/sh

for FILE in ackrc gitconfig inputrc profile vimrc zshrc
do
	ln -f -s ~/src/brev/dotfiles/$FILE ~/.$FILE
done

for DIR in atom iterm2 ssh
do
  cd $DIR
  ./link.sh
  cd ..
done
