#alias xc='xclip -selection primary -o | xclip -selection clipboard -i'     # for linux. for osx use ...| pbcopy
alias resource='source ~/.zshrc; echo ".zshrc sourced!"'
alias ls='ls -aG'
alias ls2='ls -ltrhGo' #long, recent at bottom, human readable
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias pwd='pwd -L && pwd -P' # show both absolute+symlinked
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

#git
alias gs="git status"
alias gl="git log --oneline -n20"
alias gd="git diff"
alias gb="git branch"
alias gca="git add -A; git commit"
alias gco="git checkout"
alias gfa="git fetch --all"
alias gpu="git pull upstream"

#docker
alias dc="docker-compose"
alias dm="docker-machine"
alias dmon="dm start default && eval $(dm env default)"

#go
alias dct="docker-compose run test go test"
alias nov="grep --line-buffered -v vendor"
alias noi="grep --line-buffered -v level=info"

# env
export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:/usr/local/sbin:$PATH

source ~/zsh/gitps.sh
PROMPT=' $(git_super_status)%{$fg[white]%}%2~ %{%(!.$fg[red].$fg[green])%}%(!.⌦ .Ω) %{$reset_color%}'
#prompt redhat # preview: prompt -p
autoload -Uz promptinit && promptinit
autoload -U colors && colors

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

# Docker Beta For Mac sucked. Using docker machine again:
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
