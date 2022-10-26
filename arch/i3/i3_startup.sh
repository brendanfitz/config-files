i3-msg '[workspace=".*"] kill'

# i3-msg 'workspace 1; exec /usr/bin/jupyter notebook --no-browser'

i3-msg 'workspace 1; exec /usr/bin/alacritty -e htop'
i3-msg 'workspace 1; exec /usr/bin/alacritty -e nvtop'
sleep 1

i3-msg 'workspace 2; exec /usr/bin/alacritty -e neofetch'
i3-msg 'workspace 2; exec /usr/bin/firefox --new-window'
sleep 1

# i3-msg 'workspace 3; exec /usr/bin/firefox --new-window 127.0.0.1:8000'
# sleep 1

i3-msg 'workspace number 2'
