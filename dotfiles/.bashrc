# Windows git-bash rc
alias ipfix="ipconfig -release; ipconfig -renew; ipconfig -flushdns"
alias lsr="ls -latr"

# Tab complete p/t/a<tab> to project/tests/acceptance
# Thx izabera@freenode#bash
izaberacomplete () { 
  local path oldpath ng=$(shopt -p nullglob)
  shopt -s nullglob
  printf -v path %q "${COMP_WORDS[COMP_CWORD]}"
  oldpath=$path
  path=${path//\//*/} path=${path#\*}
  eval "COMPREPLY=($path*)"
  if (( ${#COMPREPLY[@]} == 0 )); then COMPREPLY=("$oldpath"); fi
  eval "$ng"
}

# Run the completion function for some commands:
complete -F izaberacomplete -o bashdefault -o default -o filenames node npm cd mv cp ls

# Run for all commands without completion function: (requires bash >= 4.1)
# complete -F izaberacomplete -o bashdefault -o default -o filenames node npm cd mv cp ls
