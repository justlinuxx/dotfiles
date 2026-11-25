BOLD="%B"
NO_BOLD="%b"

USERNAME="%n"
HOSTNAME="%M"


short_dir () {
  git_root=$PWD
  while [[ $git_root != / ]] && [[ ! -e $git_root/.git ]]; do
	git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
	prompt_short_dir="$(basename $git_root)${PWD/#$git_root/}"
  fi
  echo $prompt_short_dir
}


setopt prompt_subst

PROMPT='%F{green}%n@%M%f %F{blue}$(short_dir)%f $ '
RPROMPT="%(?..%F{red}x)%f"
