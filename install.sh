#!/bin/sh

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

[[ -f ~/.zshrc ]] && mv ~/.zshrc ~/.zsh.preconf

ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/stevep.zsh-theme ~/.oh-my-zsh/themes/
mkdir -p ~/.zsh/completion

ln -s $PWD/vimrc ~/.vimrc

ln -s $PWD/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
