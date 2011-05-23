HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt adam2

alias ll="ls -l"
alias ls="ls --ignore=\*pyc --color"

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[3~" delete-char # Del
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey ^R history-incremental-search-backward
