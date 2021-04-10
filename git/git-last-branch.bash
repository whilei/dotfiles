#!/usr/bin/env bash

# I want a value in my shell for git branch names that works like cd's '-' value.
# LB: 'Last Branch'
LB=""

__set_last_branch(){

  # Get current branch name.
  # If we are not in a git-controlled directory, return early.
  local __lb_new_branch="";
  __lb_new_branch=$(2> /dev/null git symbolic-ref --short HEAD)
  if [ -z "$__lb_new_branch" ]; then return; fi

  # We are currently in a git-controlled directory and have a branch name.

  
  # n0 branch is our latest record of what our branch was prior to this prompt.
  local __lb_n0_branch=""
  if [ -f /tmp/__lb_n0_branch ]; then
    __lb_n0_branch="$(cat /tmp/__lb_n0_branch)"
  fi

  LB="$(cat /tmp/__lb_n1_branch)"
  if [ "$__lb_n0_branch" != "$__lb_new_branch" ]; then
    LB="$__lb_n0_branch"
    echo "$__lb_n0_branch" > /tmp/__lb_n1_branch
  fi

  export LB
  echo "$__lb_new_branch" > /tmp/__lb_n0_branch
}
export -f __set_last_branch
export PROMPT_COMMAND="$PROMPT_COMMAND __set_last_branch;"

