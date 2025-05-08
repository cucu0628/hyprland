#!/bin/bash

# Frissítjük a csomaglistát és telepítjük az alapvető csomagokat
sudo dnf copr enable erikreider/SwayNotificationCenter
sudo dnf update -y

# Telepítjük a Hyprland-ot és fejlesztői csomagot, ha pluginokat akarunk építeni
sudo dnf install -y \
  hyprland \
  hyprland-devel \
  waybar \
  nwg-dock \
  nwg-drawer \
  cava \
  hyprlock \
  nautilus \
  hypridle \
  hyprpaper \
  Hyprshot \
  playerctl \
  bluez-utils \
  mako \
  pavucontrol \
  wofi \
  xdg-desktop-portal-hyprland \
  hyprpolkitagent \
  brave \
  SwayNotificationCenter

# Beállítjuk a GNOME színtémát sötét módra
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

echo "config fájlok másolása"

# rsync -av --delete /forrás/mappa/ /cél/mappa/
rsync -av --delete ./cava ~/.config/
rsync -av --delete ./hypr ~/.config/
rsync -av --delete ./kitty ~/.config/
rsync -av --delete ./nautilus ~/.config/
rsync -av --delete ./nwg-displays ~/.config/
rsync -av --delete ./nwg-dock-hyprland ~/.config/
rsync -av --delete ./nwg-drawer ~/.config/
rsync -av --delete ./swaync ~/.config/
rsync -av --delete ./waybar ~/.config/
rsync -av --delete ./wofi ~/.config/


# Informáljuk a felhasználót, hogy a telepítés befejeződött
echo "A telepítés sikeresen befejeződött. Kérlek indítsd újra a géped vagy a szükséges alkalmazásokat."
