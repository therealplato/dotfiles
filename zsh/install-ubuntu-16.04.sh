#!/bin/bash

HEADERS="
linux-libc-dev
libasound2-dev
libattr1-dev
libgconf2-dev
liblua5.3-dev
libncurses5-dev
libnss3
libqt5qml-graphicaleffects
libsm-dev
libx11-dev
libX11-devel
libx11-xcb-dev
libxpm-dev
libxt-dev
libxtst-dev
python3-dev
xlibs-dev
xorg-libX11-devel"

UTILITIES="
apt-file
build-essential
dbus
fonts-inconsolata
gvim
konsole
rxvt-unicode
skonsole
x11-xserver-utils
xfce
xinput
xrb
xrdb
urxvt"

TOOLS="
nodejs
python3"

VIM="
ctags
vim-gtk
vim-gtk3
vim-X11"

QML="
qml-module-qtquick-controls
qml-module-qtquick-dialogs
qmlscene
qt5-default
qt5-qmake
qtdeclarative5-controls-plugin
qtdeclarative5-dev
qtdeclarative5-dialogs-plugin
qtdeclarative5-localstorage-plugin
qtdeclarative5-qtquick2-plugin
qtdeclarative5-window-plugin
"

apt-get -v install $HEADERS $VIM $TOOLS $UTILITIES
