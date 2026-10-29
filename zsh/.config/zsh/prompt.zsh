# eval "$(starship init zsh)"
BOLD="%B"
NO_BOLD="%b"

USERNAME="%n"
HOSTNAME="%M"

PROMPT="%F{cyan}$USERNAME%F{7}@%F{green}$HOSTNAME%f %F{blue}%1~%f $ "
RPROMPT="%(?..%F{red}x)%f"
