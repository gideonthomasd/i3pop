#!/bin/sh

sudo apt update && sudo apt upgrade

sudo apt install i3 dmenu htop lxappearance ubuntu-restricted-extras snapd pcmanfm thunar feh pavucontrol xcompmgr geany unzip fonts-font-awesome rofi gsimplecal curl sxhkd wget lxtask lxpolkit vlc lxterminal vim i3blocks gparted flatpak i3lock-fancy python3-pip fonts-powerline fonts-noto moc -yy

sudo apt install aptitude spectrwm bspwm polybar --yy

sudo apt install awesome awesome-extra

mkdir -p $HOME"/.fonts"
mkdir -p $HOME"/.icons"

mkdir -p $HOME"/.config/awesome"

#mkdir -p $HOME"/.config"
mkdir -p $HOME"/.config/lxterminal"
#mkdir -p $HOME"/.config/termite"
mkdir -p $HOME"/.config/rofi"
mkdir -p $HOME"/.config/jgmenu"
#mkdir -p $HOME"/.config/openbox"
#mkdir -p $HOME"/.config/obmenu-generator"
#mkdir -p $HOME"/.config/tint2"
mkdir -p $HOME"/.config/i3"
mkdir -p $HOME"/.config/i3blocks"
#mkdir -p $HOME"/.config/plank"
#mkdir -p $HOME"/.config/sakura"
#mkdir -p $HOME"/.config/succade"
#mkdir -p $HOME"/.config/bspwm"
mkdir -p $HOME"/.local"
mkdir -p $HOME"/.local/bin"
#mkdir -p $HOME"/.config/xmobar"
#mkdir -p $HOME"/.xmonad"

#########################################
####### Awesome #########################

cd awesome
cp -r * ~/.config/awesome
cd ..


###########################################
##### Bspwm ###############################
mkdir -p $HOME"/.config/bspwm"
mkdir -p $HOME"/.config/polybar-bspwm"

cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd bspwm
chmod +x bspwmrc
cd ..

cd polybar-bspwm
cp -r * ~/.config/polybar-bspwm
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

cd icons
cp -r * ~/.icons
cd ..


###########################################
#### Install Spectrwm #####################
###########################################

cp spectrwm.conf ~/.spectrwm.conf
cp baraction.sh ~/.local/bin/baraction.sh
cp weather_spectrwm.sh ~/.local/bin/weather_spectrwm.sh
cp spectrwm.sh ~/.local/bin/spectrwm.sh
cp powermenu.sh ~/powermenu.sh

cd i3
chmod +x *.sh
chmod +x testwallpaper
cd ..

cd i3blocks
chmod +x *.sh
cd ..

cp powermenu.sh ~/powermenu.sh
cp bashrc ~/.bashrc
cp lxterminal.conf ~/.config/lxterminal/lxterminal.conf

cd fonts
cp -r * ~/.fonts
cd ..

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

cd i3
cp -r * ~/.config/i3
cd ..

cd i3blocks
cp -r * ~/.config/i3blocks
cd ..

sudo dpkg -i jgmenu_4.3.0-1+b1_amd64.deb

git clone https://gitlab.com/dwt1/shell-color-scripts.git
cd shell-color-scripts
#rm -rf /opt/shell-color-scripts
sudo mkdir -p /opt/shell-color-scripts/colorscripts
sudo cp -rf colorscripts/* /opt/shell-color-scripts/colorscripts
sudo cp colorscript.sh /usr/bin/colorscript
cd ..


pip install --user bumblebee-status
cd ~/.config/i3/bumblebee-status/myfiles
#cp -r * ~/.local/lib/python3.8/site-packages/bumblebee_status/modules/contrib
cp -r * ~/.local/lib/python3.9/site-packages/bumblebee_status/modules/contrib

sudo snap install snap-store
sudo snap install brave

sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update
sudo apt install appimagelauncher

sudo apt install flatpak
#sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
