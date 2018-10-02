#!/usr/bin/env bash

ACTIVE=0
function run {
  if ! pgrep $1 ; then
    $@&
  fi
}

run nm-applet
run light-locker
run firefox

# chrome uses one process for all app windows
APP1="https://movio.slack.com"
APP2="https://soundcloud.com/discover"
if ! pgrep --full -- "chrome --app=$APP1" ; then
  run google-chrome --app=$APP1
  run google-chrome --app=$APP2
fi
