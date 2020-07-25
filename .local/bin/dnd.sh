#!/bin/bash

getargs() {
  while getopts "se" opt
  do
    case $opt in
      s) start="true";;
      e) end="true";;
    esac
  done
}
start_dnd() {
  notify-send "Do Not Disturb mode START.";
  sleep 5
  notify-send "DUNST_COMMAND_PAUSE";
  touch /tmp/dnd.lock
}
end_dnd() {
  notify-send "DUNST_COMMAND_RESUME";
  notify-send "Do Not Disturb mode STOP. Notifications will be shown.";
  rm -f /tmp/dnd.lock
}
main() {
  getargs "$@";
  [[ "$start" ]] && start_dnd;
  [[ "$end" ]] && end_dnd;
}
main "$@"
