# eval "$(starship init zsh)"
BOLD="%B"
NO_BOLD="%b"

USERNAME="%n"
HOSTNAME="%M"

PROMPT="%F{cyan}$USERNAME%f@%F{green}$HOSTNAME%f %F{blue}%2~%f $ "
RPROMPT="%(?..%F{red}x)%f"
