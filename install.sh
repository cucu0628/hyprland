#!/bin/bash

# Engedélyezzük a külső repókat
sudo dnf copr enable erikreider/SwayNotificationCenter -y

# Rendszer frissítése
sudo dnf update -y

# Csomagok telepítése
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
  vulkan-icd-loader \
  vulkan-mesa-layers \
  vulkan-intel \
  vulkan-radeon \
  cmake \
  ags \
  xdg-desktop-portal-hyprland \
  xdg-desktop-portal \
  hyprpolkitagent \
  brave-browser \
  libappindicator-gtk3 \
  SwayNotificationCenter \
  fastfetch

# GNOME színtéma beállítása sötét módra
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

echo "config fájlok másolása..."

# Konfigurációs fájlok másolása
cd
rsync -av --delete ~/HYPRLAND/cava ~/.config/
rsync -av --delete ~/HYPRLAND/hypr ~/.config/
rsync -av --delete ~/HYPRLAND/kitty ~/.config/
rsync -av --delete ~/HYPRLAND/nwg-displays ~/.config/
rsync -av --delete ~/HYPRLAND/nwg-dock-hyprland ~/.config/
rsync -av --delete ~/HYPRLAND/nwg-drawer ~/.config/
rsync -av --delete ~/HYPRLAND/swaync ~/.config/
rsync -av --delete ~/HYPRLAND/waybar ~/.config/
rsync -av --delete ~/HYPRLAND/wofi ~/.config/
rsync -av --delete ~/HYPRLAND/wofi ~/.config/

# Befejező üzenet
echo "A telepítés sikeresen befejeződött. Kérlek indítsd újra a géped vagy a szükséges alkalmazásokat."
