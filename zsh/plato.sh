
# envs
export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/.go
export G=$GOPATH/src
export P=$GOPATH/src/github.com/therealplato
export R=$GOPATH/src/github.com/movio/red
export PATH=$PATH:$GOPATH/bin:/usr/local/sbin:$PATH:$HOME/bin

alias resource='source ~/.zshrc; echo ".zshrc sourced!"'
alias ls='ls -aG'
alias ls2='ls -ltrhGo' #long, recent at bottom, human readable
alias cd='cd -P' # dereference symlinks
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias pwd='pwd -L && pwd -P' # show both absolute+symlinked
alias pwdcd='command pwd -P |xargs cd'
function mkdirc() {
  mkdir -p $@
  cd $@
}


alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
# brew vim:
alias vim="/usr/local/Cellar/vim/8.0.0344/bin/vim"
# alias vim="/usr/local/Cellar/vim/8.0.0094/bin/vim && clear"
# function vim() { command /usr/local/Cellar/vim/8.0.0094/bin/vim "$@" && clear }
# alias vim='vim()'
# macvim:
# alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias gource-all="gource --git-branch master --auto-skip-seconds 5 --bloom-multiplier 0.1 --highlight-dirs --seconds-per-day 0.1 --dir-name-depth 2 --key --highlight-users --viewport 1280x720 --user-friction 0.01 --max-user-speed 100 --elasticity 100"
alias gource-recent="gource --git-branch master --bloom-multiplier 0.1 --highlight-dirs --time-scale 1 --dir-name-depth 2 --key --start-date 2016-06-01 --highlight-users --viewport 1280x720"

#git
alias gs="git status"
alias gl="git log --oneline -n20"
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

#docker
alias dc="docker-compose"
alias dm="docker-machine"
alias dnuke="docker stop $(docker ps -q) && \
             docker volume rm $(docker volume ls -q) && \
             docker rm -f $(docker ps -aq) && \
             docker rmi -f $(docker images -aq)"

#go
alias dct="docker-compose run test go test"
alias nov="grep --line-buffered -v vendor"
alias noi="grep --line-buffered -v level=info"
alias gv="govendor"
alias gvl="govendor list"
