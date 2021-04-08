#!/usr/bin/env bash

# I want a value in my shell for git branch names that works like cd's '-' value.

# LB 'Last Branch'
export LB=""
export __lb_current_branch=""

__set_last_branch(){
  local b="";
  b=$(2> /dev/null git symbolic-ref --short HEAD)

  if [ -z "$b" ]; then return; fi
  
  if [ "$__lb_current_branch" != "$b" ]; then
    if [ "$__lb_current_branch" = "" ]; then
      # Initialize
      export LB="$b"
    else
      # Update
      export LB="$__lb_current_branch"
    fi
  fi

  export __lb_current_branch="$b"
}
export -f __set_last_branch
export PROMPT_COMMAND="$PROMPT_COMMAND __set_last_branch;"




