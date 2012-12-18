#!/bin/sh

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

[[ -f ~/.zshrc ]] && mv ~/.zshrc ~/.zsh.preconf

ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/stevep.zsh-theme ~/.oh-my-zsh/themes/

ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/ackrc ~/.ackrc

ln -s $PWD/vimrc ~/.vimrc
mkdir -p ~/.vim/ftplugin/
ln -s $PWD/vim/ftplugin/python.vim ~/.vim/ftplugin/python.vim

hg clone http://bitbucket.org/sjl/hg-prompt/ ~/.hg/hg-prompt/
