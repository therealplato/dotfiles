autoload -Uz promptinit && promptinit
autoload -U colors && colors
autoload -Uz vcs_info

source ~/.zsh/secret.env

# source ~/.zsh/gitps.sh # Commented because python version is slow but haskell version requires building
#source $HOME/go/src/github.com/zsh-git-prompt/zsh-git-prompt/zshrc.sh
#export GIT_PROMPT_EXECUTABLE="haskell"

# via https://stackoverflow.com/questions/49744179/zsh-vcs-info-how-to-indicate-if-there-are-untracked-files-in-git
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
     git status --porcelain | grep -m 1 '^??' &>/dev/null
  then
    hook_com[misc]='?'
  fi
}

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '='
zstyle ':vcs_info:*' unstagedstr '*'
# zstyle ':vcs_info:git*' actionformats "%s  %r/%S %b %m%u%c "
zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
# zstyle ':vcs_info:*' formats \
#     '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:*' formats \
    '%F{6}%r⎇  %b%F{9}%c%F{14}%u%F{10}%m '

precmd() {
    vcs_info
}
setopt prompt_subst
PS_BANG_IF_FAILED='%(?. .%{$fg[red]%}!)'
PS_PURPLE_GREEN_HOSTNAME='%F{5}[%F{2}%n%F{5}] '
PS_TWO_FOLDER_SEGMENTS='%F{7}%2~ '
PS_GIT='${vcs_info_msg_0_}'
PS_SCARY_ROOT_PROMPT='%{%(!.$fg[red].$fg[green])%}%(!.⌦ .Ω) %{$reset_color%}'
PS_CLEAR=''
PS_COLOR_EXAMPLES='%F{0}0%F{1}1%F{2}2%F{3}3%F{4}4%F{5}5%F{6}6%F{7}7%F{8}8%F{9}9%F{10}10%F{11}11%F{12}12%F{13}13%F{14}14%F{15}15'

PS1=""
# PS1+=${PS_COLOR_EXAMPLES}
PS1+=${PS_BANG_IF_FAILED}
PS1+=${PS_GIT}
PS1+=${PS_TWO_FOLDER_SEGMENTS}
PS1+=${PS_SCARY_ROOT_PROMPT}
PS1+=${PS_CLEAR}
#PROMPT='%(?..%{$fg[red]%}!) $(git_super_status)%{$fg[white]%}%2~ '

source ~/.zsh/plato.sh
source ~/.zsh/nvm.sh
source ~/.zsh/wsl.sh
source ~/.zsh/secret.sh
source $P/dotfiles/vendor/github.com/zsh-users/zsh-history-substring-search/zsh-history-substring-search.zsh
source $P/dotfiles/vendor/github.com/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh
source $P/dotfiles/vendor/github.com/rupa/z/z.sh

#PROMPT='%(?..%{$fg[red]%}!) $(git_super_status)%{$fg[white]%}%2~ %{%(!.$fg[red].$fg[green])%}%(!.⌦ .Ω) %{$reset_color%}'
#prompt redhat # preview: prompt -p

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
_comp_options+=(globdots)
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
