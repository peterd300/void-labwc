#!/bin/bash

sudo xbps-install -Suy


#install open-vmtools-agent for guest in Vmware workstation
sudo xbps-install -Sy open-vm-tools
sudo ln -s /etc/sv/vmware-vmblock-fuse /var/service/
sudo ln -s /etc/sv/vmtoolsd /var/service/


# first install some usefull programs
sudo xbps-install -Sy htop btop make git wget unzip nano cmake curl gcc net-tools mlocate fastfetch

# install daemons for wayland
sudo xbps-install -Sy seatd dbus polkit elogind
sudo ln -s /etc/sv/seatd /var/service/
sudo ln -s /etc/sv/elogind /var/service/
sudo ln -s /etc/sv/dbus /var/service/
sudo ln -s /etc/sv/polkitd /var/service/
sudo sv up seatd
sudo sv up elogind
sudo sv up dbus
sudo sv up polkitd
sudo usermod -aG _seatd $USER

#install wayland and labwc
sudo xbps-install -Sy grim kanshi slurp mesa-dri wlr-randr wlroots Waybar pulseaudio xorg-server-xwayland  lxqt-policykit \
	pam_rundir
mkdir  -p ~/.config/kanshi


sudo xbps-install -Sy labwc labwc-menu-generator foot wofi swaybg swayidle swaylock
mkdir -p ~/.config/foot
sudo cp /etc/xdg/foot/foot.ini ~/.config/foot
sudo chown peter:peter ~/.config/foot/foot.ini

	
mkdir -p ~/.config/labwc
sudo cp /usr/share/doc/labwc/* ~/.config/labwc
sudo chown -R peter:peter ~/.config/labwc/*


#install filemanager + jpg viewer
sudo xbps-install -Sy Thunar thunar-archive-plugin thunar-media-tags-plugin tumbler lximage-qt  

#install geany
sudo xbps-install -Sy geany geany-editorconfig-plugin geany-plugins geany-plugins-extra

## install x11  fonts
sudo xbps-install -Sy nerd-fonts font-awesome adwaita-fonts adwaita-plus

## install sound support
sudo xbps-install -Sy pipewire alsa-plugins-pulseaudio wireplumber pavucontrol pamixer
sudo usermod -aG audio,video $(whoami)

echo " end of script !!!" 
