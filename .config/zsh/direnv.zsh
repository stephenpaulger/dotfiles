#!/usr/bin/env zsh

# Exit if the 'direnv' command can not be found
if ! (( $+commands[direnv] )); then
    return
fi

eval "$(direnv hook zsh)"
