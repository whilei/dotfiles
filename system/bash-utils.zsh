#
#Set Colors
#

bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)

purple=$(tput setaf 171)
red=$(tput setaf 1)
green=$(tput setaf 76)
tan=$(tput setaf 3)
blue=$(tput setaf 38)

#
# Headers and  Logging
#

e_header() { printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@" 
}
e_arrow() { printf "➜ $@\n"
}
e_success() { printf "${green}✔ %s${reset}\n" "$@"
}
e_error() { printf "${red}✖ %s${reset}\n" "$@"
}
e_warning() { printf "${tan}➜ %s${reset}\n" "$@"
}
e_underline() { printf "${underline}${bold}%s${reset}\n" "$@"
}
e_bold() { printf "${bold}%s${reset}\n" "$@"
}
e_note() { printf "${underline}${bold}${blue}Note:${reset}  ${blue}%s${reset}\n" "$@"
}

# Export for use anywhere. 
export -f e_header
export -f e_arrow
export -f e_success
export -f e_error
export -f e_warning
export -f e_underline
export -f e_bold
export -f e_note

# Seek confirmation.
# seek_confirmation "Do you really want to?"
# if is_confirmed; then
# e_success "youre doing it!"
# else 
# e_error "youre not doing it"
# fi

seek_confirmation() {
  printf "\n${bold}$@${reset}"
  read -p " (y/n) " -n 1
  printf "\n"
}
export -f seek_confirmation

# Test whether the result of an 'ask' is a confirmation
is_confirmed() {
if [[ "$REPLY" =~ ^[Yy]$ ]]; then
  return 0
fi
return 1
}
export -f is_confirmed
