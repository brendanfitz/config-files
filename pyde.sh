#!/bin/bash
function pyde {
    SESSION='ipy'
    tmux new -s $SESSION -d
    tmux split-window -v
    
    # sleep to prevent commands being sent before window creation
    sleep 1.5
    
    tmux send-keys 'ipython' C-m
    tmux select-pane -t 0
    if [ $# -eq 1 ]
    then 
        tmux send-keys 'vim $1' C-m
    else
        tmux send-keys 'vim' C-m
    fi
    tmux attach -t $SESSION
}

pyde
