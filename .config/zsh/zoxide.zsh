eval "$(zoxide init zsh)"

function cd() {
    if [ "$#" -eq 0 ]; then
        # No arguments, use builtin cd
        builtin cd
    elif builtin cd "$1"; then
        # cd-ing into the specified directory worked
        return
    elif [[ -n "$PS1" && "$+functions[zi]" ]]; then
        # cd-ing didn't work,
        # this looks like it's running in a shell and,
        # the zi function is defined
        zi "$1"
    fi
}
