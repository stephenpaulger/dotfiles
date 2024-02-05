# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "$HOME/.config/zsh/git.zsh"
plug "$HOME/.config/zsh/homebrew.zsh"

plug "wintermi/zsh-mise"
plug "wintermi/zsh-brew"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/exa"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit

[[ -f ~/.zsh_local ]] && source ~/.zsh_local
eval "$(zoxide init zsh)"
