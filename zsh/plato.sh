#!/bin/bash
# envs
export GOPATH=$HOME/go
export GO111MODULE=auto
export GOPROXY=direct
export G=$GOPATH/src
export P=$GOPATH/src/github.com/therealplato
export GEM_HOME=$HOME/.local/gems
export PATH=$PATH:$GEM_HOME/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.10/bin
# Ordering's important here, I want brew's coreutils to be the first item in path
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export REVIEW_BASE="origin/master"
export LS_COLORS='no=00:fi=01:rs=0:di=04:ln=04;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;31:*.sh=00;31:*.csh=01;31:*.tar=00;32:*.tgz=00;32:*.arc=00;32:*.arj=00;32:*.taz=00;32:*.lha=00;32:*.lz4=00;32:*.lzh=00;32:*.lzma=00;32:*.tlz=00;32:*.txz=00;32:*.tzo=00;32:*.t7z=00;32:*.zip=00;32:*.z=00;32:*.dz=00;32:*.gz=00;32:*.lrz=00;32:*.lz=00;32:*.lzo=00;32:*.xz=00;32:*.zst=00;32:*.tzst=00;32:*.bz2=00;32:*.bz=00;32:*.tbz=00;32:*.tbz2=00;32:*.tz=00;32:*.deb=00;32:*.rpm=00;32:*.jar=00;32:*.war=00;32:*.ear=00;32:*.sar=00;32:*.rar=00;32:*.alz=00;32:*.ace=00;32:*.zoo=00;32:*.cpio=00;32:*.7z=00;32:*.rz=00;32:*.cab=00;32:*.wim=00;32:*.swm=00;32:*.dwm=00;32:*.esd=00;32:*.deb=00;32:*.rpm=00;32:*.jpg=00;34:*.jpeg=00;34:*.mjpg=00;34:*.mjpeg=00;34:*.gif=00;34:*.bmp=00;34:*.pbm=00;34:*.pgm=00;34:*.ppm=00;34:*.tga=00;34:*.xbm=00;34:*.xpm=00;34:*.tif=00;34:*.tiff=00;34:*.png=00;34:*.svg=00;34:*.svgz=00;34:*.mng=00;34:*.pcx=00;34:*.mov=00;34:*.mpg=00;34:*.mpeg=00;34:*.m2v=00;34:*.mkv=00;34:*.webm=00;34:*.webp=00;34:*.ogm=00;34:*.mp4=00;34:*.m4v=00;34:*.mp4v=00;34:*.vob=00;34:*.qt=00;34:*.nuv=00;34:*.wmv=00;34:*.asf=00;34:*.rm=00;34:*.rmvb=00;34:*.flc=00;34:*.avi=00;34:*.fli=00;34:*.flv=00;34:*.gl=00;34:*.dl=00;34:*.xcf=00;34:*.xwd=00;34:*.yuv=00;34:*.cgm=00;34:*.emf=00;34:*.ico=00;34:*.swf=00;34:*.md=01;36:*.MD=01;36:*.rtf=01;36:*.txt=01;36:*.pdf=01;36:*.py=00;36:*.go=00;36:*.robot=00;36:*.c=00;36:*.cc=00;36:*.coffee=00;36:*.cpp=00;36:*.css=00;36:*.sass=00;36:*.scss=00;36:*.go=00;36:*.h=00;36:*.hpp=00;36:*.html=00;36:*.java=00;36:*.js=00;36:*.jsx=00;36:*.php=00;36:*.pl=00;36:*.rb=00;36:*.robot=00;36:*.tcl=00;36:*.ts=00;36:*.tsx=00;36:*.test=00;36:*.wasm=00;36:*.dat=01;36:*.json=01;36:*.proto=01;36:*.sqlite=01;36:*.swag=01;36:*.template=01;36:*.tmpl=01;36:*.tpl=01;36:*.toml=01;36:*.xml=01;36:*.yml=01;36:*.yaml=01;36:*.a=04;30;41:*.o=04;30;41:*.out=04;30;41:*.so=04;30;41:*.cf=00;31;47:*.tf=00;31;47:*.kubeconfig=00;31;47:*.cfg=00;33:*.cnf=00;33:*.conf=00;33:*.config=00;33:*.env=00;33:*.ini=00;33:*.settings=00;33:*.rc=00;33:*.crt=01;31;40:*.pem=01;31;40:*.sha256sum=01;31;40:*.sum=01;31;40:*.diff=04;32:*.patch=04;32:*.ac=04;32:*.DS_Store=04;32:*.git=04;32:*.gitattributes=04;32:*.gitignore=04;32:*.idea=04;32:*.lock=04;32:*.sln=04;32:*.spelling=04;32:*.swp=04;32:*.tags=04;32:*.un~=04;32:*.log=00;30;46:';

if command -v setxkbmap &> /dev/null; then
  setxkbmap -option "terminate:ctrl_alt_bksp"
fi

#initdb: docker-compose run initdb new blah

# prompt
# add-zsh-hook preexec preexec_prev_cmd_time
# add-zsh-hook precmd precmd_prev_cmd_time
# export ZSH_PREV_CMD_TIME=""
# timer=0
# function preexec_prev_cmd_time() {
#   echo "preexec"
#   touch ~/preexec-foo
#   timer=${timer:-$SECONDS}
# }
#
# function precmd_prev_cmd_time() {
#   touch ~/precmd-foo
#   if [ $timer ]; then
#     touch ~/precmd-timer-foo
#     ZSH_PREV_CMD_TIME=$(($SECONDS - $timer))
#     # export RPROMPT="%F{cyan}${timer_show}s %{$reset_color%}"
#     unset timer
#   fi
# }

function makeme() { make $@ 2>&1 | tee build.log }
alias resource='source ~/.zshrc; echo ".zshrc sourced!"'
alias ls='ls -AG --group-directories-first --color=auto'
alias ls2='ls -ltrhGo' #long, recent at bottom, human readable
alias cd='cd -P' # dereference symlinks
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias diff='diff -y --suppress-common-lines'
alias pwd='pwd -L && pwd -P' # show both absolute+symlinked
alias pwdcd='command pwd -P |xargs cd'
alias agv="ag --ignore=vendor --ignore='*[tT]est*'"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias xclip="xclip -selection clipboard"
alias emacs="emacs --no-window-system"
# brew vim:
# alias vim="/usr/local/Cellar/vim/8.0.1450/bin/vim"
# alias vim='vim()'
# macvim:
# alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias gource-all="gource --git-branch master --auto-skip-seconds 5 --bloom-multiplier 0.1 --highlight-dirs --seconds-per-day 0.1 --dir-name-depth 2 --key --highlight-users --viewport 1280x720 --user-friction 0.01 --max-user-speed 100 --elasticity 100"
alias gource-recent="gource --git-branch master --bloom-multiplier 0.1 --highlight-dirs --time-scale 1 --dir-name-depth 2 --key --start-date 2016-06-01 --highlight-users --viewport 1280x720"
alias projectm="projectM-pulseaudio"

#git
alias gs="git status"
alias gl="git log --oneline -n20"
alias gll="git log --graph --decorate --oneline"
alias gd="git diff"
alias gds="git diff --staged"
alias gd0="git diff --summary --stat"
alias gd1="git diff HEAD^"
alias gd2="git diff HEAD^^"
alias gb="git branch"
alias gca="git add -A; git commit"
alias gco="git checkout"
alias gfa="git fetch --all"
alias gpu="git pull upstream"
alias gr="git rebase"
alias grc="git rebase --continue"
alias grH="git reset HEAD^"
alias gb10="git branch --sort=-committerdate | head -n10"


alias dct="docker-compose run test go test"
alias nov="grep --line-buffered -v vendor"
alias noi="grep --line-buffered -v level=info"
alias gv="govendor"
alias gvl="govendor list"

#docker
alias dc="docker-compose"
alias dm="docker-machine"

alias GS="git status"
alias digs="dig +short"


OS=$(uname | tr '[:upper:]' '[:lower:]')
if [ "$OS" = "darwin" ]; then
  export CLIPBOARD="pbcopy"
fi

if [ "$OS" = "windows" ]; then
 export CLIPBOARD="echo"
fi

if [ "$OS" = "linux" ]; then
 export CLIPBOARD="xclip -selection clipboard"
fi

# clipboard a command result:
p() {
  eval "$@ | tee /tmp/clipboard"
  if [ $(cat /tmp/clipboard | wc -l) -eq 1 ]; then
    echo -n $(cat /tmp/clipboard) | xclip -selection clipboard
  else
    xclip -in /tmp/clipboard -selection clipboard
  fi
}

function todo() {
  head -n1 $HOME/todo
}

function rdns() {
  if (( $# < 1 )); then
    echo "$0 <ip> ..."
    return
  fi
  for ip in "${@}"; do
    dig +short -x $ip
  done
}


function dnuke() {
  docker ps -q        | xargs docker stop
  docker volume ls -q | xargs docker volume rm
  docker ps -aq       | xargs docker rm -f
  docker images -aq   | xargs docker rmi -f
}

function owner ()
{
    echo $1;
    git log --pretty=short -- $1 | grep Author: | cut -f 2 -d ' ' | sort | uniq -c | sort -rn;
    echo
}
function mkdirc() {
  mkdir -p $@
  cd $@
}
function wut() {
  find . | grep -i $@ | less
}

function sanitize(){
  sed -E '{s/[^ @]+@[^ @]+/sanitized@dev.null/g}' -
}

function cats {
  url="https://""$(curl -s https://imgur.com/r/catsstandingup \
    | grep -Eo 'i\.imgur\.com/[a-zA-Z0-9]{5,10}\.jpg' \
    | sed 's/b.jpg/.jpg/' \
    | sort --random-sort \
    | head -n1
  )"
  xdg-open $url
  echo "![cat]($url)"
}

function derps {
  echo "![derp](https://$(curl -s https://imgur.com/r/animalsbeingderps \
    | grep -Eo 'i\.imgur\.com/[a-zA-Z0-9]{5,10}\.jpg' \
    | sed 's/b.jpg/.jpg/' \
    | sort --random-sort \
    | head -n1 \
  ))"
}

function tips {
  echo "![derp](https://$(curl -s https://imgur.com/r/tippytaps \
    | grep -Eo 'i\.imgur\.com/[a-zA-Z0-9]{5,10}\.jpg' \
    | sed 's/b.jpg/.jpg/' \
    | sort --random-sort \
    | head -n1 \
  ))"
}

function awws {
  echo "![derp](https://$(curl -s https://imgur.com/r/awwducational\
    | grep -Eo 'i\.imgur\.com/[a-zA-Z0-9]{5,10}\.jpg' \
    | sed 's/b.jpg/.jpg/' \
    | sort --random-sort \
    | head -n1 \
  ))"
}

# Convert video to gif file.
# via https://superuser.com/a/1154859/278908
# Usage: video2gif video_file (scale) (fps)
video2gif() {
  ffmpeg -y -i "${1}" -vf fps=${3:-10},scale=${2:-320}:-1:flags=lanczos,palettegen "${1}.png"
  ffmpeg -i "${1}" -i "${1}.png" -filter_complex "fps=${3:-10},scale=${2:-320}:-1:flags=lanczos[x];[x][1:v]paletteuse" "${1}".gif
  rm "${1}.png"
}


function yamlok ()
{
    ruby -e "require 'yaml';puts YAML.load_file('$1')" > /dev/null 2>&1
}

function termcolors () {
	for x in {0..8}; do
	    for i in {30..37}; do
		for a in {40..47}; do
		    echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
		done
		echo
	    done
	done
	echo ""
}

function termcolors2 () {
  echo -e "\033[0mNC (No color)"
  echo -e "\033[1;37m15 White\t\033[0;30m0 Black"
  echo -e "\033[0;34m1 DarkBlue\t\033[1;34m9 LightBlue"
  echo -e "\033[0;32m2 DarkGreen\t\033[1;32m10 LightGreen"
  echo -e "\033[0;36m3 DarkCyan\t\033[1;36m11 LightCyan"
  echo -e "\033[0;31m4 DarkRed\t\033[1;31m12 LightRed"
  echo -e "\033[0;35m5 DarkMagenta\t\033[1;35m13 LightMagenta"
  echo -e "\033[0;33m6 DarkYellow\t\033[1;33m14 LightYellow"
  echo -e "\033[1;30m6 DarkGrey\t\033[0;37m7 LightGrey"
}
