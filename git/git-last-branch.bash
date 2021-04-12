#!/usr/bin/env bash

# I want a value in my shell for git branch names that works like cd's '-' value.
# LB: 'Last Branch'
LB=""

# This implementation treats LB as a global variable; across all git projects and shells.

__set_last_branch(){

  # Get current branch name.
  # If we are not in a git-controlled directory, return early.
  local __lb_new_branch="";
  __lb_new_branch=$(2> /dev/null git symbolic-ref --short HEAD)
  if [ -z "$__lb_new_branch" ]; then return; fi

  # We are currently in a git-controlled directory and have a branch name.

  # We'll touch the persistent branch files so avoid issues cat-ing them.
  # If they are created with touch, their cat'd values will just be empty.
  
  # n0 branch is our latest record of what our branch was prior to this prompt.
  touch /tmp/__lb_n0_branch;
  # n1 branch is the branch prior to that.
  touch /tmp/__lb_n1_branch;

  local __lb_n0_branch=""
  __lb_n0_branch="$(cat /tmp/__lb_n0_branch)"

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

