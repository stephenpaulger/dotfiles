# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "wintermi/zsh-brew"
plug "wintermi/zsh-mise"

plug "zap-zsh/supercharge"
plug "amogower/exa" "606d0f9"  # waiting for this PR: https://github.com/zap-zsh/exa/pull/12
plug "zap-zsh/zap-prompt"

plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

plug "$HOME/.config/zsh/starship.zsh"
plug "$HOME/.config/zsh/git.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/scorecard.zsh"
plug "$HOME/.config/zsh/trivy.zsh"
plug "$HOME/.config/zsh/direnv.zsh"
plug "$HOME/.config/zsh/zoxide.zsh"

# Load and initialise completion system
autoload -Uz compinit
compinit

export WORDCHARS=${WORDCHARS/\/}

[[ -f ~/.zsh_local ]] && source ~/.zsh_local
