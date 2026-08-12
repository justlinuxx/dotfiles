# XDG Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# EDITOR
export EDITOR="nvim"
export VISUAL="nvim"

export GPG_TTY=$(tty)

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

export MANPAGER="bat -l man -p"

export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"
