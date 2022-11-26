sleep 1
i3-msg '[workspace=".*"] kill'

# i3-msg 'workspace 1; exec --no-startup-id /usr/bin/jupyter notebook --no-browser'

i3-msg 'workspace 1; exec --no-startup-id /usr/bin/alacritty -e htop'
sleep 0.1
i3-msg 'workspace 1; exec --no-startup-id /usr/bin/alacritty -e nvtop'
sleep 1

# this neofetch is currently not working
# i3-msg 'workspace 2; exec --no-startup-id /usr/bin/alacritty -e neofetch'
i3-msg 'workspace 2; exec --no-startup-id /usr/bin/firefox --new-window'
sleep 1

# i3-msg 'workspace 3; exec --no-startup-id /usr/bin/firefox --new-window 127.0.0.1:8000'
# sleep 1

i3-msg 'workspace number 2'
