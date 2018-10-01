#!/usr/bin/env bash

function run {
  if [ $1 = "google-chrome" ]; then
    $@&
  elif ! pgrep $1 ; then
    $@&
  fi
}

run nm-applet
run google-chrome --app=https://movio.slack.com
run google-chrome --app=https://soundcloud.com/discover
