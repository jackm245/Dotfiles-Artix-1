#!/bin/bash
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

set -e  # bail on the first error encountered

typeset -A sessions
sessions=(
	[dwm]='dwm'
	[i3]='i3'
)

PS3=$'\nSession: '
select session in "${!sessions[@]}"; do
	[ -n "$session" ] && break
done
# now ${sessions[$session]} is our session startup command

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

SESSION=${1:-xfce}

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
    picom &
    sxhkd &
fi

get_session(){
	local dbus_args=(--sh-syntax --exit-with-session)
	case "$SESSION" in
		awesome) dbus_args+=(awesome) ;;
		bspwm) dbus_args+=(bspwm-session) ;;
		budgie) dbus_args+=(budgie-desktop) ;;
		cinnamon) dbus_args+=(cinnamon-session) ;;
		deepin) dbus_args+=(startdde) ;;
		dwm) dbus_args+=(dwm) ;;
		enlightenment) dbus_args+=(enlightenment_start) ;;
		fluxbox) dbus_args+=(startfluxbox) ;;
		gnome) dbus_args+=(gnome-session) ;;
		i3|i3wm) dbus_args+=(i3 --shmlog-size 0) ;;
		jwm) dbus_args+=(jwm) ;;
		kde) dbus_args+=(startkde) ;;
		lxde) dbus_args+=(startlxde) ;;
		lxqt) dbus_args+=(lxqt-session) ;;
		mate) dbus_args+=(mate-session) ;;
		xfce) dbus_args+=(xfce4-session) ;;
		openbox) dbus_args+=(openbox-session) ;;
		*) dbus_args+=("$SESSION") ;;
	esac

	echo "dbus-launch ${dbus_args[*]}"
}

#exec $(get_session)

# lastly we exec the chosen session
exec "${sessions[$session]}"
