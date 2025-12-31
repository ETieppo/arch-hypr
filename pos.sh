sudo pacman -Syu

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
makepkg -si

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -fsSL https://bun.sh/install | bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
yay -S hyprland-git beekeeper minio steam elecwhat-bin kanata adwaita-icon-theme ttf-jetbrains-mono-nerd
sudo pacman -S unzip firefox-developer-edition thunar wezterm minio-client postgresql zed bluez waybar kmonad pavucontrol ruby lua wofi hyprpaper apidog-bin greetd tuigreet

sudo cp -ri etc/* /etc/
sudo cp -ri root/* ~/

sudo -iu postgres initdb --locale=C.UTF-8 --encoding=UTF8 -D /var/lib/postgres/data

gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

sudo systemctl enable postgresql
systemctl --user start kanata.service
systemctl --user enable kanata.service
