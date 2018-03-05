# envs
export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/go
export G=$GOPATH/src
export P=$GOPATH/src/github.com/therealplato
export R=$GOPATH/src/github.com/movio/red
export PATH=/usr/local/Cellar/coreutils/8.28_1/libexec/gnubin:$GOPATH/bin:/usr/local/sbin:$HOME/bin:/usr/local/opt/imagemagick@6/bin:$PATH

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
alias pwd='pwd -L && pwd -P' # show both absolute+symlinked
alias pwdcd='command pwd -P |xargs cd'
alias agv="ag --ignore=vendor --ignore='*[tT]est*'"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
# brew vim:
alias vim="/usr/local/Cellar/vim/8.0.1450/bin/vim"
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

function catsup {
        curl -A "User-Agent: curl:alphabetsoup:v0.0.1 (by /u/alphabetsoup)" -s https://www.reddit.com/r/CatsStandingUp.json > ~/cats.json
        cats
}

function cats {
        idx=$(($RANDOM % 10))
        url=$(cat ~/cats.json|jq -r ".data.children[$idx].data.preview.images[0].source.url")
        echo "![cat]($url)"
        echo "![cat]($url)" | pbcopy
        open $url
}

# Convert video to gif file.
# via https://superuser.com/a/1154859/278908
# Usage: video2gif video_file (scale) (fps)
video2gif() {
  ffmpeg -y -i "${1}" -vf fps=${3:-10},scale=${2:-320}:-1:flags=lanczos,palettegen "${1}.png"
  ffmpeg -i "${1}" -i "${1}.png" -filter_complex "fps=${3:-10},scale=${2:-320}:-1:flags=lanczos[x];[x][1:v]paletteuse" "${1}".gif
  rm "${1}.png"
}
