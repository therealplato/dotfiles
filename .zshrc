# plato's .zshrc
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt incappendhistory 
setopt sharehistory
setopt extendedhistory

# Vim mode:
bindkey -v
# Emas mode:
# bindkey -v
# Make alt-dot append the last argument of previous command:
bindkey '\e.' insert-last-word
# Rebind home, end
bindkey '[4~' end-of-line
bindkey '[1~' beginning-of-line
bindkey '[3~' delete-char
autoload -Uz compinit
compinit
setopt completealiases
setopt completeinword
setopt menu_complete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

setopt auto_cd

autoload -Uz promptinit
promptinit
prompt redhat

REPORTTIME=10

export EDITOR=vim

alias resource='source ~/.zshrc; echo ".zshrc sourced!"'
alias xc='xclip -selection primary -o | xclip -selection clipboard -i'
alias ls='ls --color=auto' #long, recent at bottom, human readable
alias ls2='ls -ltrh --color=auto' #long, recent at bottom, human readable
alias cp='cp -vi' #verbose interactive
alias mv='mv -vi' #verbose interactive
alias pwd='pwd -L && pwd -P'

# NVM
if [ -s ~/.nvm/nvm.sh ]; then
    NVM_DIR=~/.nvm
    source ~/.nvm/nvm.sh
fi
