# --- Initialise zinit --------------------------------------------------------
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d $ZINIT_HOME ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
fi
if [ ! -d $ZINIT_HOME/.git ]; then
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"
# -----------------------------------------------------------------------------

zinit light "wintermi/zsh-brew"
zinit light "wintermi/zsh-mise"

zinit light "zap-zsh/exa"

zinit light "zsh-users/zsh-autosuggestions"
zinit light "zsh-users/zsh-syntax-highlighting"

zinit snippet "$HOME/.config/zsh/starship.zsh"
zinit snippet "$HOME/.config/zsh/git.zsh"
zinit snippet "$HOME/.config/zsh/aliases.zsh"
zinit snippet "$HOME/.config/zsh/scorecard.zsh"
zinit snippet "$HOME/.config/zsh/direnv.zsh"
zinit snippet "$HOME/.config/zsh/zoxide.zsh"

# Load and initialise completion system
autoload -Uz compinit
compinit

export WORDCHARS=${WORDCHARS/\/}

[[ -f ~/.zsh_local ]] && source ~/.zsh_local
