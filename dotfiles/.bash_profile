# fix clear on windows:
export TERM=cygwin

# env
export VIM=$HOME/vimfiles
export VIMRUNTIME=/c/vim/vim80
alias vim="$VIMRUNTIME/vim"
export EDITOR=vim
export GOPATH=$HOME/go
export G=$GOPATH/src
export P=$GOPATH/src/github.com/therealplato
export R=$GOPATH/src/github.com/movio/red
export PATH=$PATH:$GOPATH/bin:/usr/local/sbin:$HOME/bin:/c/Python27/:"/c/Program Files (x86)/Sublime Text 3":"/c/Program Files (x86)/nodejs":"/c/Program Files/CMake/bin":$GOROOT/bin

alias resource='source ~/.bash_profile; echo ".bash_profile sourced!"'
alias ls='ls -aG --color=always'
alias ls2='ls -ltrhGo' #long, recent at bottom, human readable
alias cd='cd -P' # dereference symlinks
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias pwd='pwd -L && pwd -P' # show both absolute+symlinked
alias pwdcd='command pwd -P |xargs cd'
alias nov="grep --line-buffered -v vendor"
alias noi="grep --line-buffered -v level=info"
alias gv="govendor"
alias gvl="govendor list"

function mkdirc() {
  mkdir -p $@
  cd $@
}

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

