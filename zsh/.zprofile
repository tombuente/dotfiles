mkdir $XDG_CONFIG_HOME/fontconfig/conf.d
ln -s /usr/share/fontconfig/conf.avail/10-nerd-font-symbols.conf $XDG_CONFIG_HOME/fontconfig/conf.d

if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    exec sway --unsupported-gpu
fi
