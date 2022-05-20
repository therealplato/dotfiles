autoload -Uz promptinit && promptinit
autoload -Uz vcs_info

source ~/.zsh/secret.env

# source ~/.zsh/gitps.sh # Commented because python version is slow but haskell version requires building
#source $HOME/go/src/github.com/zsh-git-prompt/zsh-git-prompt/zshrc.sh
#export GIT_PROMPT_EXECUTABLE="haskell"

zstyle ':vcs_info:*' enable git
# zstyle ':vcs_info:git*' actionformats "%s  %r/%S %b %m%u%c "
zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

precmd() {
    vcs_info
}
setopt prompt_subst
#PROMPT='${vcs_info_msg_0_}%# '
PS1='%F{5}[%F{2}%n%F{5}] %F{3}%3~ ${vcs_info_msg_0_}%f%# '

source ~/.zsh/plato.sh
source ~/.zsh/nvm.sh
source ~/.zsh/wsl.sh
source ~/.zsh/secret.sh
source $P/dotfiles/vendor/github.com/zsh-users/zsh-history-substring-search/zsh-history-substring-search.zsh
source $P/dotfiles/vendor/github.com/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh
source $P/dotfiles/vendor/github.com/rupa/z/z.sh

#PROMPT='%(?..%{$fg[red]%}!) $(git_super_status)%{$fg[white]%}%2~ %{%(!.$fg[red].$fg[green])%}%(!.⌦ .Ω) %{$reset_color%}'
#prompt redhat # preview: prompt -p
autoload -U colors && colors

unsetopt BG_NICE

#alias xc='xclip -selection primary -o | xclip -selection clipboard -i'     # for linux. for osx use ...| pbcopy


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
# bindkey "^R" history-incremental-pattern-search-backward
history-incremental-pattern-search-backward-from-line () {
  zle history-incremental-pattern-search-backward $BUFFER
}
zle -N history-incremental-pattern-search-backward-from-line
bindkey -M viins "^R" history-incremental-pattern-search-backward-from-line
bindkey -M vicmd "^R" history-incremental-pattern-search-backward-from-line
bindkey -M isearch "^R" history-incremental-pattern-search-backward

# Open editor with C-X C-E
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line


# Make alt-dot append the last argument of previous command:
bindkey '\e.' insert-last-word
# Rebind home, end
bindkey '[4~' end-of-line
bindkey '[1~' beginning-of-line
bindkey '[3~' delete-char
