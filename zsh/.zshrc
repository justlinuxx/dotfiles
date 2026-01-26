# Setup Zinit
setup_plugin_manager() {
  ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
  [ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
  [ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
  source "${ZINIT_HOME}/zinit.zsh"
}

# Zinit packages
install_plugins() {
  zinit light zsh-users/zsh-syntax-highlighting
  zinit light zsh-users/zsh-completions
  zinit light zsh-users/zsh-autosuggestions
}

setup_prompt() {
  if ! command -v starship > /dev/null 2>&1; then
    curl -sS https://starship.rs/install.sh | sh
  fi
  eval "$(starship init zsh)"
}


# Setup fzf
setup_fzf() {
  source <(fzf --zsh)
}

setup_zoxide() {
  eval "$(zoxide init zsh)"
}

setup_yazi() {
  function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
  }
}

set_zsh_settings() {
  HISTSIZE=5000
  HISTFILE=~/.zsh_history
  SAVEHIST=$HISTSIZE
  HISTDUP=erase
  setopt appendhistory
  setopt sharehistory
  setopt hist_ignore_space
  setopt hist_ignore_all_dups
  setopt hist_save_no_dups
  setopt hist_ignore_dups
  setopt hist_find_no_dups

  # Set cursor style
  echo -ne "\e[5 q"


  autoload -U compinit && compinit
}

setup_bindings() {
  bindkey "^H" backward-kill-word
  bindkey "^[[1;5C" forward-word
  bindkey "^[[1;5D" backward-word
  bindkey "^[[3~" delete-char

  bindkey -s "^E" "yazi\n"
}

set_aliases() {
  alias ls="eza -lh --icons=auto --group-directories-first"
  alias cd='z'
}

set_variables() {
  export EDITOR=nvim
}


setup_plugin_manager
install_plugins
setup_prompt
setup_zoxide
setup_fzf
setup_yazi
set_zsh_settings
setup_bindings
set_variables
set_aliases

