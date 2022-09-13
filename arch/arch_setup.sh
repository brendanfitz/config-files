# alacritty
mkdir ~/.config/alacritty
rm ~/.config/alacritty/alacritty.yml
ln -s ~/Documents/GitHub/config-files/arch/alacritty/alacritty.yml ~/.config/alacritty/

# zsh shell
rm ~/.zshrc
ln -s ~/Documents/GitHub/config-files/shell/.zshrc ~/ 
rm ~/.p10k.zsh
ln -s ~/Documents/GitHub/config-files/shell/.p10k.zsh ~/ 

# vim
rm /etc/vimrc
ln -s ~/Documents/GitHub/config-files/shell/.vimrc /etc/vimrc

# i3
mkdir ~/.config/i3
rm ~/.config/i3/config
ln -s ~/Documents/GitHub/config-files/arch/i3/config ~/.config/i3/

rm ~/.config/i3/wallpaper.jpeg
# wget -O ~/.config/i3/wallpaper.jpeg https://i.imgur.com/pMnZ1pT.jpeg

# rofi
mkdir ~/.config/rofi
rm ~/.config/rofi/config.rasi
ln -s ~/Documents/GitHub/config-files/arch/rofi/config.rasi ~/.config/rofi/

# picom
mkdir ~/.config/picom
rm ~/.config/picom/picom.conf
ln -s ~/Documents/GitHub/config-files/arch/picom/picom.conf ~/.config/picom/

# polybar
mkdir ~/.config/polybar
rm ~/.config/polybar/config.ini
ln -s ~/Documents/GitHub/config-files/arch/polybar/config.ini ~/.config/polybar/
rm ~/.config/polybar/launch.sh
ln -s ~/Documents/GitHub/config-files/arch/polybar/launch.sh ~/.config/polybar/

