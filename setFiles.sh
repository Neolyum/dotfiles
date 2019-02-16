#!/bin/bash

if [! -d "~/.tmux/plugins/tpm"]
then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
	cd  ~/.tmux/plugins/tpm 
	git pull
fi
if [! -f "~/.vim/autoload/plug.vim"]
then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi	

cp vimrc $HOME/.vimrc
cp terminatorConfig $HOME/.config/terminator/config
cp -r i3 $HOME/.config/i3
cp ZSH/zshrc $HOME/.zshrc
cp -rf ZSH/plugins $ZSH/custom/plugins
cp -rf ZSH/themes $ZSH/cusom/themes
cp tmux.conf $HOME/.tmux.conf
cd $ZSH/themes 
if [! -d "zsh-syntax-highlighting.theme"]
then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting.theme
else 
	cd zsh-syntax-highlighting.theme
	git pull
fi