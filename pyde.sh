#!/bin/bash
function pyde {
    SBASE="pyde"
    let NUM="$(tmux ls | grep $SBASE | tail -n 1 | cut -d ' ' -f 1 |\
	       sed 's/[^0-9]*//g')"+1

    SESSION="$SBASE$NUM"
    tmux new -s $SESSION -d
    tmux split-window -v
    
    # sleep to prevent commands being sent before window creation
    sleep 1.5
    
    tmux send-keys "ipython" C-m
    tmux select-pane -t 0
    if [ $# -eq 1 ]
    then 
        tmux send-keys "vim $1" C-m
    else
        tmux send-keys "vim" C-m
    fi
    tmux attach -t $SESSION
}
