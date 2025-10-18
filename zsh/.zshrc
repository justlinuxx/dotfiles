ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

if ! command -v starship > /dev/null 2>&1; then
  curl -sS https://starship.rs/install.sh | sh
fi

eval "$(starship init zsh)"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

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


autoload -U compinit && compinit


bindkey "^H" backward-kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

alias ls="eza -lh --icons=auto --group-directories-first"

echo -ne "\e[5 q"
   


