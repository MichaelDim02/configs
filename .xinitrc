#!bin/sh
# $XConsortium: xinitrc.cpp,v 1.4 91/08/22 11:41:34 rws Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/usr/X11R6/lib/X11/xinit/.Xresources
sysmodmap=/usr/X11R6/lib/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

## Layout
setxkbmap -layout us,gr
setxkbmap -option 'grp:alt_shift_toggle'

## Pulseaudio
start-pulseaudio-x11
pulseaudio --start

## bindings
sxhkd &

## dunst
dunst &

## compton
compton &

## batsignal
batsignal &

## i3
exec i3
exec i3-gaps
