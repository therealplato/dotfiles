source /usr/local/etc/profile.d/z.sh
source ~/zsh/gitps.sh
PROMPT=' $(git_super_status)%{$fg[white]%}%2~ %{%(!.$fg[red].$fg[green])%}%(!.⌦ .Ω) %{$reset_color%}'
#prompt redhat # preview: prompt -p
autoload -Uz promptinit && promptinit
autoload -U colors && colors

# envs
export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:/usr/local/sbin:$PATH:$HOME/bin

#alias xc='xclip -selection primary -o | xclip -selection clipboard -i'     # for linux. for osx use ...| pbcopy
source ~/zsh/secret.sh
alias resource='source ~/.zshrc; echo ".zshrc sourced!"'
alias ls='ls -aG'
alias ls2='ls -ltrhGo' #long, recent at bottom, human readable
alias cd='cd -P' # dereference symlinks
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias pwd='pwd -L && pwd -P' # show both absolute+symlinked
alias pwdcd='command pwd -P |xargs cd'
# brew vim:
alias vim="/usr/local/Cellar/vim/8.0.0094/bin/vim"
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
alias gd1="git diff HEAD^"
alias gd0="git diff --summary --stat"
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
alias dmon="dm start default && eval $(dm env default)"
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


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt incappendhistory 
setopt sharehistory
setopt extendedhistory
setopt auto_cd

autoload -Uz compinit && compinit
unsetopt completealiases # now aliases are expanded before zsh looks for tab completion
setopt completeinword
setopt menu_complete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true


# Vim mode:
bindkey -v
bindkey "^R" history-incremental-pattern-search-backward

# Make alt-dot append the last argument of previous command:
bindkey '\e.' insert-last-word
# Rebind home, end
bindkey '[4~' end-of-line
bindkey '[1~' beginning-of-line
bindkey '[3~' delete-char

# NVM
if [ -s ~/.nvm/nvm.sh ]; then
    NVM_DIR=~/.nvm
    source ~/.nvm/nvm.sh
fi

if [[ $1 == eval ]]
then
    "$@"
set --
fi

# Start and Connect to default docker-machine on new terminal
export DM="default"
# Start the default docker machine
if [[ "$(docker-machine status $DM)" == "Stopped" ]]
then
  docker-machine start $DM
fi

# Make the default docker machine active
if [[ "$(docker-machine status $DM)" == "Running" ]]
then
  eval "$(docker-machine env $DM)"
fi
