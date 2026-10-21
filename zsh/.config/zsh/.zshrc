# HISTORY
HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# SHELL BEHAVIOUR
setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT

# ZOXIDE
eval "$(zoxide init zsh)"

# COMPLETION
autoload -Uz compinit
compinit
# Enable interactive completion menu selection
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # lowercase input matches upper and lower

# FZF
source <(fzf --zsh)

# fzf configuration
source "$ZDOTDIR/fzf.zsh"

# Aliases
source "$ZDOTDIR/aliases.zsh"

# Custom keybindings
source "$ZDOTDIR/bindings.zsh"

# Plugins and plugin manager
source "$ZDOTDIR/plugins.zsh"

# Prompt/theme
source "$ZDOTDIR/prompt.zsh"

