# alacritty
rm -f ~/.xinitrc
ln -s ~/Documents/GitHub/config-files/arch/xinit/.xinitrc ~/

# alacritty
mkdir -p ~/.config/alacritty
rm -f ~/.config/alacritty/alacritty.yml
ln -s ~/Documents/GitHub/config-files/arch/shell/alacritty.yml ~/.config/alacritty/

# zsh shell
rm -f ~/.zshrc
ln -s ~/Documents/GitHub/config-files/arch/shell/.zshrc ~/ 
rm -f ~/.p10k.zsh
ln -s ~/Documents/GitHub/config-files/arch/shell/.p10k.zsh ~/ 

# vim
sudo rm -f /etc/vimrc
sudo ln -s ~/Documents/GitHub/config-files/arch/shell/.vimrc /etc/vimrc

# i3
mkdir -p ~/.config/i3
rm -f ~/.config/i3/config
n -s ~/Documents/GitHub/config-files/arch/i3/config ~/.config/i3/

rm -f ~/.config/i3/wallpaper.jpeg
wget -O ~/.config/i3/wallpaper.jpeg https://i.imgur.com/pMnZ1pT.jpeg

# rofi
mkdir -p ~/.config/rofi
rm -f ~/.config/rofi/config.rasi
ln -s ~/Documents/GitHub/config-files/arch/rofi/config.rasi ~/.config/rofi/

# picom
mkdir -p ~/.config/picom
rm -f ~/.config/picom/picom.conf
ln -s ~/Documents/GitHub/config-files/arch/picom/picom.conf ~/.config/picom/

# polybar
mkdir -p ~/.config/polybar
rm -f ~/.config/polybar/config.ini
ln -s ~/Documents/GitHub/config-files/arch/polybar/config.ini ~/.config/polybar/
rm -f ~/.config/polybar/launch.sh
ln -s ~/Documents/GitHub/config-files/arch/polybar/launch.sh ~/.config/polybar/

