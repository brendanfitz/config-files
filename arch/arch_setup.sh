#!/bin/bash
WD="$HOME/Documents/GitHub/config-files/"

# alacritty
rm -f $HOME/.xinitrc
ln -s $WD/arch/xinit/.xinitrc $HOME/

# alacritty
mkdir -p $HOME/.config/alacritty
rm -f $HOME/.config/alacritty/alacritty.yml
ln -s $WD/arch/shell/alacritty.yml $HOME/.config/alacritty/

# zsh shell
rm -f $HOME/.zshrc
ln -s $WD/arch/shell/.zshrc $HOME/ 
rm -f $HOME/.zprofile
ln -s $WD/arch/shell/.zprofile $HOME/ 
rm -f $HOME/.p10k.zsh
ln -s $WD/arch/shell/.p10k.zsh $HOME/ 

# vim
sudo rm -f /etc/vimrc
sudo ln -s $WD/arch/shell/.vimrc /etc/vimrc

# i3
mkdir -p $HOME/.config/i3
rm -f $HOME/.config/i3/config
ln -s $WD/arch/i3/config $HOME/.config/i3/
rm -f $HOME/.config/i3/i3_startup.sh
ln -s $WD/arch/i3/i3_startup.sh $HOME/.config/i3/

chmod +x $WD/arch/i3/i3_startup.sh

WP_FILE=$HOME/.config/i3/wallpaper.jpeg
if ! test -f "$WP_FILE"; then
    wget -O $HOME/.config/i3/wallpaper.jpeg https://i.imgur.com/pMnZ1pT.jpeg
fi

# rofi
mkdir -p $HOME/.config/rofi
rm -f $HOME/.config/rofi/config.rasi
ln -s $WD/arch/rofi/config.rasi $HOME/.config/rofi/

# picom
mkdir -p $HOME/.config/picom
rm -f $HOME/.config/picom/picom.conf
ln -s $WD/arch/picom/picom.conf $HOME/.config/picom/

# polybar
mkdir -p $HOME/.config/polybar
rm -f $HOME/.config/polybar/config.ini
ln -s $WD/arch/polybar/config.ini $HOME/.config/polybar/
rm -f $HOME/.config/polybar/launch.sh
ln -s $WD/arch/polybar/launch.sh $HOME/.config/polybar/
