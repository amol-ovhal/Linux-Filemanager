function errorMessage() {
    MSG=$1
    dateMsg=`date +'%d %b  %l:%M'`
    echo "$(tput setaf 1) [ERROR] [${dateMsg}] $MSG !!! $(tput setaf 0)"
}

function infoMessage() {
    MSG=$1
    dateMsg=`date +'%d %b  %l:%M'`
    echo "$(tput setaf 2) [INFO] [${dateMsg}] $MSG $(tput setaf 0)"
}