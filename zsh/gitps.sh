# Original: https://github.com/olivierverdier/zsh-git-prompt
# To install source this file from your .zshrc file

# see documentation at http://linux.die.net/man/1/zshexpn
# A: finds the absolute path, even if this is symlinked
# h: equivalent to dirname
export __GIT_PROMPT_DIR=${0:A:h}
# echo "*****$__GIT_PROMPT_DIR****"

# Initialize colors.
autoload -U colors
colors

# Values for the appearance of the prompt. Configure at will.
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GREEN="%{$fg[green]%}"
ZSH_THEME_RED="%{$fg[red]%}"
ZSH_THEME_CYAN="%{$fg[cyan]%}"
ZSH_THEME_YELLOW="%{$fg[yellow]%}"
# ZSH_THEME_GREEN="%{$fg_bold[green]%}"
# ZSH_THEME_RED="%{$fg_bold[red]%}"
# ZSH_THEME_CYAN="%{$fg_bold[cyan]%}"
# ZSH_THEME_YELLOW="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_BRANCH="⎇ "

# Allow for functions in the prompt.
setopt PROMPT_SUBST

autoload -U add-zsh-hook

add-zsh-hook chpwd chpwd_update_git_vars
add-zsh-hook preexec preexec_update_git_vars
add-zsh-hook precmd precmd_update_git_vars

## Function definitions
function preexec_update_git_vars() {
    case "$2" in
        git*|hub*|gh*|stg*)
        __EXECUTED_GIT_COMMAND=1
        ;;
    esac
}

function precmd_update_git_vars() {
    if [ -n "$__EXECUTED_GIT_COMMAND" ] || [ ! -n "$ZSH_THEME_GIT_PROMPT_CACHE" ]; then
        update_current_git_vars
        unset __EXECUTED_GIT_COMMAND
    fi
}

function chpwd_update_git_vars() {
    update_current_git_vars
    update_prompt_flag
}

function update_current_git_vars() {
    unset __CURRENT_GIT_STATUS

  local gitstatus="$__GIT_PROMPT_DIR/gitstatus.py"
  _GIT_STATUS=`python ${gitstatus} 2>/dev/null`
  __CURRENT_GIT_STATUS=("${(@s: :)_GIT_STATUS}")
  #echo $__CURRENT_GIT_STATUS
  GIT_BRANCH=$__CURRENT_GIT_STATUS[1]
  GIT_AHEAD=$__CURRENT_GIT_STATUS[2]
  GIT_BEHIND=$__CURRENT_GIT_STATUS[3]
  GIT_STAGED=$__CURRENT_GIT_STATUS[4]
  GIT_CONFLICTS=$__CURRENT_GIT_STATUS[5]
  GIT_CHANGED=$__CURRENT_GIT_STATUS[6]
  GIT_UNTRACKED=$__CURRENT_GIT_STATUS[7]
}

function update_prompt_flag() {
  KUBE_FLAG=""
  command pwd | grep "/kube-mc-red/eu"
  if [ $? -eq 0 ]
  then
    KUBE_FLAG="🇪🇺"
    return
  fi
  command pwd | grep "/kube-mc-red/us"
  if [ $? -eq 0 ]
  then
    KUBE_FLAG="🇺🇸"
    return
  fi
}

function prompt_flag() {
  echo "$KUBE_FLAG"
}


git_super_status() {
	precmd_update_git_vars
  if [ -n "$__CURRENT_GIT_STATUS" ]; then
    STATUS="$ZSH_THEME_GIT_PROMPT_PREFIX$ZSH_THEME_GREEN"
    # lowest to highest priority:
    if [ "$GIT_UNTRACKED" -ne "0" ]; then
      # STATUS="$STATUS UNTRACKED"
      STATUS="$STATUS$ZSH_THEME_CYAN"
    fi
    if [ "$GIT_CHANGED" -ne "0" ]; then
      # STATUS="$STATUS CHANGED"
      STATUS="$STATUS$ZSH_THEME_YELLOW"
    fi
    if [ "$GIT_STAGED" -ne "0" ]; then
      # STATUS="$STATUS STAGED"
      STATUS="$STATUS$ZSH_THEME_YELLOW"
    fi
    if [ "$GIT_CONFLICTS" -ne "0" ]; then
      # STATUS="$STATUS CONFLICTS"
      STATUS="$STATUS$ZSH_THEME_RED"
    fi
    STATUS="$STATUS$ZSH_THEME_GIT_PROMPT_BRANCH$GIT_BRANCH"
    STATUS="$STATUS%{${reset_color}%}$ZSH_THEME_GIT_PROMPT_SUFFIX"
    echo "$STATUS"
	fi
}

