If you are looking for the MacOS keyboard layout in Linux, maybe it can be a solution depending on youre distro or compositor

# Were 
kmonad:
  .kbd:      ~/<change tieppo by user>/.config/kmonad/config.kbd # or the path did you put at kmonad.service
  .service:  /etc/systemd/system/kmonad.service
  
keyd: at /dev/keyd.conf
wezterm.lua: ~/.config/wezterm/wezterm.lua # or at ~/.wezterm.lua

sudo systemctl enable --now kmonad.service
sudo systemctl enable --now keyd


# Why
this setting file configure keyd inside another key remapper, I try to find some solution to use just one key remapper but I can't find an way.
so I finally finished an setting at kmonad thas almost gave me a perfect solution, except by "command+arrows", so this is here keyd comes in.
Oh, and of course this setting need wakeup after kmonad by race reasons

# About terminal?
I prefer WezTerm, so the configuration is for it, but I know Alacritty and Kitty can be easily configured.
