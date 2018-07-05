# envs
export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/go
export G=$GOPATH/src
export P=$GOPATH/src/github.com/therealplato
export R=$GOPATH/src/github.com/movio/red
export B=$GOPATH/src/github.com/movio/blue
export PATH=/usr/local/Cellar/coreutils/8.28_1/libexec/gnubin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH

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

alias resource='source ~/.zshrc; echo ".zshrc sourced!"'
alias ls='ls -aG'
alias ls2='ls -ltrhGo' #long, recent at bottom, human readable
alias cd='cd -P' # dereference symlinks
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias diff='diff -y --suppress-common-lines'
alias pwd='pwd -L && pwd -P' # show both absolute+symlinked
alias pwdcd='command pwd -P |xargs cd'
alias agv="ag --ignore=vendor --ignore='*[tT]est*'"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
# brew vim:
# alias vim="/usr/local/Cellar/vim/8.0.1450/bin/vim"
# alias vim='vim()'
# macvim:
# alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias gource-all="gource --git-branch master --auto-skip-seconds 5 --bloom-multiplier 0.1 --highlight-dirs --seconds-per-day 0.1 --dir-name-depth 2 --key --highlight-users --viewport 1280x720 --user-friction 0.01 --max-user-speed 100 --elasticity 100"
alias gource-recent="gource --git-branch master --bloom-multiplier 0.1 --highlight-dirs --time-scale 1 --dir-name-depth 2 --key --start-date 2016-06-01 --highlight-users --viewport 1280x720"

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

function cats {
  echo "![cat](https://$(curl -s https://imgur.com/r/catsstandingup \
    | grep -Eo 'i\.imgur\.com/[a-zA-Z0-9]{5,10}\.jpg' \
    | sed 's/b.jpg/.jpg/' \
    | sort --random-sort \
    | head -n1 \
  ))"
}

function derps {
  echo "![derp](https://$(curl -s https://imgur.com/r/animalsbeingderps \
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
