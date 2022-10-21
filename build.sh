#!/bin/bash

function bold() {
  printf "\n\033[1m$@\033[0m\n"
}
function appendVimComment() {
  printf "\"\n\" $1\n" >> $VRC
}

OS=$(uname | tr '[:upper:]' '[:lower:]')
bold "therealplato/dotfiles: $OS"

# clean
CMD="rm -rf ./tmp/ ./generated/"
bold "$CMD" && $CMD

CMD="mkdir -p ./generated/themer $HOME/.zsh"
bold "$CMD" && $CMD


FORCE=0
USE_THEME=0
# THEME="./misc/themes/themer-default.colors"
# THEME="./misc/themes/monogreen-v5.colors"
THEME="./misc/themes/themer-pink/colors.js"
V=./vim
VRC=./generated/.vimrc
VIMFILES=./generated/.vim
CP=cp
:>$VRC

while test $# -gt 0; do
  case "$1" in
    -f|--f|--force)
	  FORCE=1
	  break
      ;;
    *)
      break
      ;;
    --theme)
	  USE_THEME=1
	  break
      ;;
    *)
      break
      ;;
  esac	
done

# prereqs

if [ $USE_THEME -eq 1 ]; then
  CMD="yarn install -s"
  bold "$CMD" && $CMD
fi

#
# OS Specific

if [ "$OS" = "darwin" ]; then
  # brew's recursive copy is broke
  CP="/bin/cp"

  CMD="mkdir -p $VIMFILES"
  bold "$CMD" && $CMD

  printf "\n\" osx-specific vim config via plato/dotfiles\n" >> $VIMFILES/platform.vimrc

  CMD="cat $V/osx.vimrc >> $VIMFILES/platform.vimrc"
  bold "$CMD" && eval $CMD
fi

if [ "$OS" = "windows" ]; then
  VRC=./generated/_vimrc
  VIMFILES=./generated/_vim
  # mkdir -p $VIMFILES
  # echo "\" windows-specific vim config via plato/dotfiles" >> $VIMFILES/platform.vimrc
  # cat $V/windows.vimrc >> $VIMFILES/platform.vimrc
fi

if [ "$OS" = "linux" ]; then
  if [ $USE_THEME -eq 1 ]; then
    CMD="./node_modules/.bin/themer -t themer-xresources -c $THEME -o ./tmp"
    bold "$CMD" && $CMD
  fi
  mkdir -p $VIMFILES
  echo "\" linux-specific vim config via plato/dotfiles" >> $VIMFILES/platform.vimrc
  cat $V/linux.vimrc >> $VIMFILES/platform.vimrc
  
  CMD="$CP home/.bash_profile home/.bashrc ./generated"
  bold "$CMD" && $CMD

  CMD="$CP -R home/.xmonad home/crt.json ./generated"
  bold "$CMD" && $CMD

  AWESOME="./generated/.config/awesome"
  CMD="mkdir -p $AWESOME"
  bold "$CMD" && $CMD

  CMD="$CP -R -T home/.config/awesome $AWESOME"
  bold "$CMD" && $CMD

  CMD="$CP -R vendor/github.com/lcpz/lain $AWESOME"
  bold "$CMD" && $CMD

  bold "assemble generated/.Xresources"
  while read line
  do
    echo $line >> ./generated/.Xresources
  done < ./home/.Xresources
  if [ $USE_THEME -eq 1 ]; then
    while read line
    do
      echo $line >> ./generated/.Xresources
    done < ./tmp/themer-xresources/themer-xresources-dark/.Xresources
  fi
fi

CMD="mkdir -p $VIMFILES/colors"
bold "$CMD" && $CMD


#
# theming
if [ $USE_THEME -eq 1 ]; then
  CMD="./node_modules/.bin/themer -t themer-hyper -t themer-wallpaper-block-wave -t themer-vim -c $THEME -o tmp/"
  bold "$CMD" && $CMD
  CMD="$CP tmp/themer-vim/ThemerVim.vim ./generated/.vim/colors"
  bold "$CMD" && $CMD
fi
set -e


#
# vim

appendVimComment "Generated by github.com/therealplato/dotfiles/vim/build.sh"

appendVimComment "sensible.vim"
cat $V/sensible.vim >> $VRC

appendVimComment "init.vimrc"
cat $V/init.vimrc >> $VRC

appendVimComment "plugins.vimrc"
cat $V/plugins.vimrc >> $VRC

appendVimComment "binds.vimrc"
cat $V/binds.vimrc >> $VRC

appendVimComment "go.vimrc"
cat $V/go.vimrc >> $VRC

appendVimComment "coc.vimrc"
cat $V/coc.vimrc >> $VRC

appendVimComment "ui.vimrc"
cat $V/ui.vimrc >> $VRC

appendVimComment "tabs.vimrc"
cat $V/tabs.vimrc >> $VRC

echo "" >> $VIMFILES/platform.vimrc
cat $VIMFILES/platform.vimrc >> $VRC

bold "generated $(wc -l $VRC | grep -Eo ^[0-9]+) lines of vimrc"

CMD="mkdir -p $VIMFILES/autoload"
bold "$CMD" && $CMD
CMD="$CP vendor/github.com/junegunn/vim-plug/plug.vim $VIMFILES/autoload/"
bold "$CMD" && $CMD

## emacs
CMD="$CP -R home/emacs.d ./generated/.emacs.d"
bold "$CMD" && $CMD

CMD="$CP home/.screenrc home/.gitconfig.reference home/.zshrc home/.zshenv ./generated"
bold "$CMD" && $CMD

CMD="$CP -R zsh/ generated/.zsh"
bold "$CMD" && $CMD

# coc-prettier config
CMD="$CP vim/coc-settings.json $VIMFILES"
bold "$CMD" && $CMD

if [ $FORCE -eq 1 ]; then
  CMD="$CP -vR ./generated/. $HOME"
  bold "$CMD" && $CMD

  # # couldn't find how to source this pre-X...
  # if [ "$OS" = "linux" ]; then
  #   CMD="xrdb merge $HOME/.Xresources"
  #   bold "$CMD" && $CMD
  # fi
fi
