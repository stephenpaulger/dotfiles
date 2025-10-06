#!/usr/bin/env zsh

# Exit if the 'scorecard' command can not be found
if ! (( $+commands[scorecard] )); then
    return
fi

# Completions directory for `scorecard` command
local COMPLETIONS_DIR="${0:A:h}/completions"

# Add completions to the FPATH
typeset -TUx FPATH fpath
fpath=("$COMPLETIONS_DIR" $fpath)

# If the completion file does not exist yet, then we need to autoload
# and bind it to `scorecard`. Otherwise, compinit will have already done that.
if [[ ! -f "$COMPLETIONS_DIR/_scorecard" ]]; then
    echo adding scorecard
    typeset -g -A _comps
    autoload -Uz _scorecard
    _comps[scorecard]=_scorecard
fi


# Generate and load completion in the background
scorecard completion zsh >| "$COMPLETIONS_DIR/_scorecard" &|
