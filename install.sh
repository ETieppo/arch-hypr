sudo pacman -S zsh
sudo chsh -s /bin/zsh
sudo pacman -Syu

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
makepkg -si

yay -S hyprland-git beekeeper minio steam
curl -fsSL https://bun.sh/install | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo pacman -S unzip firefox-developer-edition keyd thunar wezterm minio-client postgresql zed bluez waybar kmonad pavucontrol ruby lua wofi

sudo cp -ri etc/* /etc/
sudo cp -ri root/* ~/

gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
