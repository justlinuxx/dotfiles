alias ls="eza --icons"
alias ll="eza -lh --icons --git"
alias la="eza -lah --icons --git"
alias tree="eza --tree --icons"
compdef eza=ls # Completions for eza like ls

alias cat="bat"

alias cd="z"

alias grep="rg --color=auto"
alias diff="diff --color=auto"

alias n="nvim"

alias y="yazi"

if [[ -f /etc/arch-release ]] && command -v paru > /dev/null 2>&1; then
  alias i="paru -S --needed"
  alias s="paru -Ss --needed"
  alias r="paru -Rns"
  alias u="paru -Syu"
fi
