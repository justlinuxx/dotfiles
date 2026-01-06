# Setup Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
## I have to use zi for something different that zinit
unalias zi

# Zinit packages
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions


# Setup Starship
if ! command -v starship > /dev/null 2>&1; then
  curl -sS https://starship.rs/install.sh | sh
fi
eval "$(starship init zsh)"

# Setup fzf
source <(fzf --zsh)

# Setup zoxide
eval "$(zoxide init zsh)"


# Zsh Settings
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
bindkey "^[[3~" delete-char

# Keyoboard Shortcuts
bindkey -s "^E" "yazi\n"

# Aliases
alias ls="eza -lh --icons=auto --group-directories-first"
alias cd='z'
alias sl='sl -e'

# Yazi Setup
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# Variables
export Programming=/mnt/Home/Programming

export EDITOR=nvim

# Cursor
echo -ne "\e[5 q"
