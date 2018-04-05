#!/bin/bash

#
# clean
rm -rf ./tmp/ ./generated/
mkdir -p ./generated/.vim/colors
mkdir -p $HOME/.zsh

#
# envs

FORCE=0
VRC=./generated/.vimrc
:>$VRC
VRC_DEST=$HOME/.vimrc
VIMFILES=$HOME/.vim
if [ -z ${OS+x} ]; then
    echo -e "Env OS not set, assuming osx"
    OS="osx"
fi
V=./vim/$OS

while test $# -gt 0; do
  case "$1" in
    -f|--f|--force)
	  FORCE=1
	  break
      ;;
    *)
      break
      ;;
  esac	
done

if [ "$OS" = "windows" ]; then
  VRC_DEST=$HOME/_vimrc
fi

#
# prereqs
yarn install

#
# theming
# THEME="./misc/themes/themer-default.colors"
THEME="./misc/themes/monogreen-v5.colors"
echo "generating themes..."
./node_modules/.bin/themer -t themer-hyper -t themer-wallpaper-block-wave -t themer-vim -c $THEME -o tmp/
# ./node_modules/.bin/themer -t themer-xterm -t themer-hyper -t themer-wallpaper-block-wave -t themer-vim -t themer-xresources -c $THEME -o tmp/
cp tmp/themer-vim/ThemerVim.vim ./generated/.vim/colors

set -e
#
# concat X config and generated xresources theme
while read line
do
  echo $line >> ./generated/.Xresources
done < ./dotfiles/.Xresources
while read line
do
  echo $line >> ./generated/.Xresources
done < ./tmp/themer-xresources/themer-xresources-dark/.Xresources


#
# vim
function appendVimComment() {
  printf "\"\n\" $1\n" >> $VRC
}

appendVimComment "Generated by github.com/therealplato/plato-dotfiles/vim/build.sh"

appendVimComment "sensible.vim"
cat $V/sensible.vim >> $VRC

appendVimComment "plugins.vimrc"
cat $V/plugins.vimrc >> $VRC

appendVimComment "config.vimrc"
cat $V/config.vimrc >> $VRC

appendVimComment "ui.vimrc"
cat $V/ui.vimrc >> $VRC

appendVimComment "binds.vimrc"
cat $V/binds.vimrc >> $VRC

appendVimComment "go.vimrc"
cat $V/go.vimrc >> $VRC

if [ "$OS" = "osx" ]; then
  appendVimComment "osx.vimrc"
  cat $V/osx.vimrc >> $VRC
fi

echo "generated $(wc -l $VRC | grep -Eo ^[0-9]+) lines of vimrc"

if [ $FORCE -eq 1 ]; then
  cp -v $VRC $VRC_DEST
  cp -vr ./generated/.vim/colors $VIMFILES
  cp -v ./generated/.Xresources $HOME
  cp -v dotfiles/.screenrc $HOME
  cp -v dotfiles/.zshrc $HOME
  cp -rv zsh/* $HOME/.zsh
fi
