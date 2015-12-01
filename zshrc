HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

fpath=(~/.zsh/completion $fpath)

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit promptinit
compinit

zstyle ':completion:*' list-colors $LS_COLORS

precmd ()  { print -Pn "\e]0;%n@%m: %~\a" }

alias dm=docker-machine
alias dc=docker-compose  # This over-rides the existing dc command, which I never use.
alias ll="ls -l"
alias ls="ls --ignore=\*pyc --color"
alias vim="vim -p"

alias -g diffc="colordiff|less -R"

[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char


# virtualenvwrapper
export WORKON_HOME=$HOME/venvs
[[ -f /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh

# oh-my-zsh config
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stevep"
plugins=(git)
source $ZSH/oh-my-zsh.sh
unsetopt share_history

[[ -f ~/.zsh_local ]] && source ~/.zsh_local
