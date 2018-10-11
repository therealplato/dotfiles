#!/usr/bin/env bash

CLEAN=1
if pgrep firefox ; then
  CLEAN=0
fi


# run1 limits to one per process
function run1 {
  if ! pgrep $1 ; then
    $@&
  fi
}

run1 light-locker
run1 compton
run1 autorandr --change --force
run1 nm-applet
run1 firefox

if [ $CLEAN = 1 ] ; then
  # firefox &
  # firefox session restore works fine
  # firefox --new-window https://soundcloud.com/discover &
  # firefox --new-window https://movio.slack.com &
fi
# run1 slack

# chrome is a cpu hog and is not allowed out
# APP1="https://soundcloud.com/discover"
# if ! pgrep --full -- "chrome --app=$APP1" ; then
#   run google-chrome --app=$APP1
# fi
