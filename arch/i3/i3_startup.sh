i3-msg '[workspace=".*"] kill'

i3-msg 'workspace 2; exec /usr/bin/jupyter notebook'
sleep 1.5
i3-msg 'workspace 1; exec /usr/bin/alacritty'
sleep 1
i3-msg 'workspace 1; exec /usr/bin/firefox --new-window https://www.wsj.com'
sleep 1
i3-msg 'workspace 3; exec /usr/bin/firefox --new-window https://www.gmail.com'
sleep 1
i3-msg 'workspace number 1'

