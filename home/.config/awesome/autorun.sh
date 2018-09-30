#!/usr/bin/env bash

function run {
  if [ $1 = "firefox" ]; then
    $@&
  elif ! pgrep $1 ; then
    $@&
  fi
}

run nm-applet
# run firefox https://soundcloud.com/discover
# run firefox https://movio.slack.com
