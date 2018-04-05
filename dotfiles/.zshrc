source /home/ubuntu/go/src/github.com/rupa/z/z.sh
source ~/.zsh/gitps.sh
source ~/.zsh/plato.sh
source ~/.zsh/nvm.sh
source ~/.zsh/wsl.sh
source $P/plato-dotfiles/vendor/github.com/zsh-users/zsh-history-substring-search/zsh-history-substring-search.zsh
source $P/plato-dotfiles/vendor/github.com/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh

PROMPT='$(prompt_flag)
 $(git_super_status)%{$fg[white]%}%2~ %{%(!.$fg[red].$fg[green])%}%(!.⌦ .Ω) %{$reset_color%}'
#prompt redhat # preview: prompt -p
autoload -Uz promptinit && promptinit
autoload -U colors && colors

unsetopt BG_NICE

#alias xc='xclip -selection primary -o | xclip -selection clipboard -i'     # for linux. for osx use ...| pbcopy
source ~/.zsh/secret.sh


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
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
export SCREENDIR=$HOME/.screen
