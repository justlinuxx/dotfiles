alias ls="eza --icons always --group-directories-first"
alias ll="eza -lh --icons --git --group-directories-first"
alias la="eza -lah --icons --git --group-directories-first"
alias tree="eza --tree --icons"
compdef eza=ls # Completions for eza like ls

alias cat="bat"

alias cd="z"

alias grep="rg --color=auto"
alias diff="diff --color=auto"

alias n="nvim"
alias lg="lazygit"

if [[ -f /etc/arch-release ]] && command -v paru > /dev/null 2>&1; then
  alias i="paru -S --needed"
  alias s="paru -Ss --needed"
  alias r="paru -Rns"
  alias u="paru -Syu"
fi

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}
