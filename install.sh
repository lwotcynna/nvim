#!/data/data/com.termux/files/usr/bin/env bash

# Author: Tasos Latsas

# spinner.sh
#
# Display an awesome 'spinner' while running your long shell commands
#
# Do *NOT* call _spinner function directly.
# Use {start,stop}_spinner wrapper functions

# usage:
#   1. source this script in your's
#   2. start the spinner:
#       start_spinner [display-message-here]
#   3. run your command
#   4. stop the spinner:
#       stop_spinner [your command's exit status]
#
# Also see: test.sh


function _spinner() {
  # $1 start/stop
  #
  # on start: $2 display message
  # on stop : $2 process exit status
  #           $3 spinner function pid (supplied from stop_spinner)

  local on_success="DONE"
  local on_fail="FAIL"
  local white="\e[1;37m"
  local green="\e[1;32m"
  local red="\e[1;31m"
  local nc="\e[0m"

  case $1 in
    start)
      # calculate the column where spinner and status msg will be displayed
      let column=$(tput cols)-${#2}-8
      # display message and position the cursor in $column column
      echo -ne ${2}
      printf "%${column}s"

      # start spinner
      i=1
      sp='\|/-'
      delay=${SPINNER_DELAY:-0.15}

      while :
      do
        printf "\b${sp:i++%${#sp}:1}"
        sleep $delay
      done
      ;;
    stop)
      if [[ -z ${3} ]]; then
        echo "spinner is not running.."
        exit 1
      fi

      kill $3 > /dev/null 2>&1

      # inform the user uppon success or failure
      echo -en "\b["
      if [[ $2 -eq 0 ]]; then
        echo -en "${green}${on_success}${nc}"
      else
        echo -en "${red}${on_fail}${nc}"
      fi
      echo -e "]"
      ;;
    *)
      echo "invalid argument, try {start/stop}"
      exit 1
      ;;
  esac
}

function start_spinner {
  # $1 : msg to display
  _spinner "start" "${1}" &
  # set global spinner pid
  _sp_pid=$!
  disown
}

function stop_spinner {
  # $1 : command exit status
  _spinner "stop" $1 $_sp_pid
  unset _sp_pid
}

function instal {
  echo "[!] This will override your current neovim configuration"
  echo "Consider a backup before continuing"
  echo -n "Press [ENTER] to proceed or [CTRL+C] to cancel."
  read
  echo
  start_spinner "~~ Installing Neovim"
  pkg install neovim -y &>/dev/null
  stop_spinner $?
  start_spinner "~~ Installing NodeJS"
  pkg install nodejs -y &>/dev/null
  stop_spinner $?
  start_spinner "~~ Configuring Neovim"
  npm i -g neovim &>/dev/null
  nvim=$HOME/.config/nvim
  [ -d $nvim ] && mv $nvim $nvim.bak \
    && mkdir -p $nvim && cp -r * $nvim \
    || mkdir -p $nvim && cp -r * $nvim && sleep 3
  stop_spinner $?
  echo
  echo "Installation finished."
}
instal
