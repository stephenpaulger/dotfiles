#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Exit if the 'starship' command can not be found
if ! (( $+commands[starship] )); then
    return
fi

eval "$(starship init zsh)"
