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
export PATH=$PATH:$GOPATH/bin

#helpers
alias resource='source ~/.zshrc; echo ".zshrc sourced!"'
alias xc='xclip -selection primary -o | xclip -selection clipboard -i'
alias ls='ls -aG'
alias ls2='ls -ltrhGo' #long, recent at bottom, human readable
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias pwd='pwd -L && pwd -P'

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

# make the default docker machine connect on terminal open
export DM="default"
if [[ "$(docker-machine status $DM)" == "Running" ]]
then
  eval "$(docker-machine env $DM)"
fi

