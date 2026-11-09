# XDG Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# EDITOR
export EDITOR="nvim"
export VISUAL="nvim"

export GPG_TTY=$(tty)

export MANPAGER="nvim +Man!"

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

export PNPM_HOME='~/.local/share/pnpm'
case ":$PATH:" in
  ":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
