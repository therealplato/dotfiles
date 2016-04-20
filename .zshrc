autoload -Uz promptinit && promptinit
autoload -U colors && colors
PROMPT=" %{%(!.$fg[red].$fg[green])%}%(!.⌦ .Ω) %{$fg[white]%}%2~ %{$reset_color%}"
#prompt redhat # preview: prompt -p

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt incappendhistory 
setopt sharehistory
setopt extendedhistory
setopt auto_cd

autoload -Uz compinit && compinit
setopt completealiases
setopt completeinword
setopt menu_complete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true


# Vim mode:
bindkey -v
# Make alt-dot append the last argument of previous command:
bindkey '\e.' insert-last-word
# Rebind home, end
bindkey '[4~' end-of-line
bindkey '[1~' beginning-of-line
bindkey '[3~' delete-char

export EDITOR=vim
export TERM=xterm-256color
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:/usr/local/sbin:$PATH

#helpers
alias resource='source ~/.zshrc; echo ".zshrc sourced!"'
#alias xc='xclip -selection primary -o | xclip -selection clipboard -i'
alias ls='ls -aG'
alias ls2='ls -ltrhGo' #long, recent at bottom, human readable
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias pwd='pwd -L && pwd -P' # show both absolute+symlinked
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

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

# Docker
alias dc="docker-compose"
alias dm="docker-machine"

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
