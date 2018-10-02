#!/usr/bin/env bash

ACTIVE=0
function run {
  if ! pgrep $1 ; then
    $@&
  fi
}

run light-locker
run compton
run autorandr --change --force
run nm-applet
run firefox
run slack

# chrome uses one process for all app windows
APP1="https://soundcloud.com/discover"
if ! pgrep --full -- "chrome --app=$APP1" ; then
  run google-chrome --app=$APP1
fi
