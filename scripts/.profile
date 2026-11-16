if [ -d ~/bin ] ; then
    PATH=$HOME/bin:"${PATH}"
fi

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec start-hyprland -- --locked-cmd hyprlock
fi
