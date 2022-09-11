alias cdg='cd ~/Documents/Github'
alias cdo='cd ~/Documents/orglists'
alias chrome='google-chrome &>/dev/null &'
alias tmux='tmux -2'
alias tdl="vim ~/Documents/orglists/$(date '+%Y-%m-%d')"
alias netflix='google-chrome netflix.com &>/dev/null &'

function cdmet {
    BASEDIR=~/Documents/Github/nyc17_ds12/class_lectures/
    if [ $# -eq 0 ]; then
        cd "$BASEDIR"
    elif [ $# -eq 1 ]; then
        WEEKDIR=$(ll $BASEDIR | grep $1 | cut -d ' ' -f 10)
        cd "$BASEDIR$WEEKDIR"
    elif [ $# -eq 2 ]; then
        WEEKDIR=$(ll $BASEDIR | grep $1 | cut -d ' ' -f 10)
        DAYDIR=$(ll $BASEDIR$WEEKDIR | grep $1 | cut -d ' ' -f 10)
        cd "$BASEDIR$WEEKDIR$DAYDIR"
    fi
}
