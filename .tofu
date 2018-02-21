#!/usr/bin/env bash

alias l="ls -lsah"
alias lt="ls -lshart"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias gs="git status -sb"
alias ga="git add"
alias gl='git log --branches=* --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %s %Cgreen(%cr) " --abbrev-commit --date=relative'

alias psg="ps aux | grep"

function prompt_command {
  local XTERM_TITLE="\e]2;\u@\H:\w\a"

  local DOLLAR_COLOR="\[\e[1;32m\]"
  if [[ ${EUID} == 0 ]] ; then DOLLAR_COLOR="\[\e[1;31m\]"; fi
  local DOLLAR="$DOLLAR_COLOR⟠"

  local USER_COLOR="\[\e[1;35m\]"
  # if [[ ${EUID} == 0 ]]; then USER_COLOR="\[\e[41;1;32m\]"; fi

  PS1="$XTERM_TITLE$USER_COLOR\u\[\e[1;36m\]@\H:\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\n\
$DOLLAR \[\e[m\]"
}
export PROMPT_COMMAND=prompt_command
PROMPT_COMMAND()

