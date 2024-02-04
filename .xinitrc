setxkbmap "by,ru" "latin,winkeys" "grp:ctrl_space_toggle" &
xsetroot -cursor_name left_ptr &
xcalib -d :0 /usr/share/color/icc/colord/NV156FHM_N61.icm &
picom -b &
xwallpaper --zoom ~/.local/share/wallpaper.jpg &
luastatus -b dwm -B separator=' ' ~/.local/luastatus/backlight.lua ~/.local/luastatus/alsa.lua ~/.local/luastatus/battery.lua ~/.local/luastatus/xkb.lua ~/.local/luastatus/wireless.lua ~/.local/luastatus/time.lua &
xrdb .Xresources
exec dbus-run-session dwm
