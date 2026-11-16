if [ -d ~/bin ] ; then
    PATH=$HOME/bin:"${PATH}"
fi

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec start-hyprland
fi

export PNPM_HOME='~/.local/share/pnpm'
case ":$PATH:" in
  ":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
