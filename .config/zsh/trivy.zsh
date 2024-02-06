#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Exit if the 'trivy' command can not be found
if ! (( $+commands[trivy] )); then
    return
fi

# Completions directory for `trivy` command
local COMPLETIONS_DIR="${0:A:h}/completions"

# Add completions to the FPATH
typeset -TUx FPATH fpath
fpath=("$COMPLETIONS_DIR" $fpath)

# If the completion file does not exist yet, then we need to autoload
# and bind it to `trivy`. Otherwise, compinit will have already done that.
if [[ ! -f "$COMPLETIONS_DIR/_trivy" ]]; then
    typeset -g -A _comps
    autoload -Uz _trivy
    _comps[trivy]=_trivy
fi


# Generate and load completion in the background
trivy completion zsh >| "$COMPLETIONS_DIR/_trivy" &|
