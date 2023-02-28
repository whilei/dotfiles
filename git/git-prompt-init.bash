# Set bash ps1 with git status.
# These beginning and ending brackets help bash know
# how much room the prompt will take up.
color_red='\[\e[31m\]'
color_blue='\[\e[34m\]'
color_reset='\[\e[0m\]'
color_white_back='\[\e[47m\]'
color_white='\[\e[37m\]'
color_yellow_bg='\[\e[43m\]'
color_white_on_blue='\[\e[0;37;44m\]'

color_white_on_purp='\[\e[37;45m\]'
color_white_on_red='\[\e[37;41m\]'
color_red_on_white='\[\e[31;47m\]'
color_green_on_blue='\[\e[32;44m\]'

COLOR_NC='\[\e[0m\]' # No Color
COLOR_WHITE='\[\e[1;37m\]'
COLOR_BLACK='\[\e[0;30m\]'
COLOR_BLUE='\[\e[0;34m\]'
COLOR_LIGHT_BLUE='\[\e[1;34m\]'
COLOR_GREEN='\[\e[0;32m\]'
COLOR_LIGHT_GREEN='\[\e[1;32m\]'
COLOR_CYAN='\[\e[0;36m\]'
COLOR_LIGHT_CYAN='\[\e[1;36m\]'
COLOR_RED='\[\e[0;31m\]'
COLOR_LIGHT_RED='\[\e[1;31m\]'
COLOR_PURPLE='\[\e[0;35m\]'
COLOR_LIGHT_PURPLE='\[\e[1;35m\]'
COLOR_BROWN='\[\e[0;33m\]'
COLOR_YELLOW='\[\e[1;33m\]'
COLOR_GRAY='\[\e[0;30m\]'
COLOR_LIGHT_GRAY='\[\e[0;37m\]'

# COLOR_WHITE_ON_PURPLE='\[\e[37;35m\]'

# git ps1 settings from git-prompt
# 'set to nonempty value to turn on'
# In addition, if you set GIT_PS1_SHOWDIRTYSTATE to a nonempty value,
# unstaged (*) and staged (+) changes will be shown next to the branch
# name.  You can configure this per-repository with the
# bash.showDirtyState variable, which defaults to true once
# GIT_PS1_SHOWDIRTYSTATE is enabled.
# If you would like to see if there're untracked files, then you can set
# GIT_PS1_SHOWUNTRACKEDFILES to a nonempty value. If there're untracked
# files, then a '%' will be shown next to the branch name.  You can
# configure this per-repository with the bash.showUntrackedFiles
# variable, which defaults to true once GIT_PS1_SHOWUNTRACKEDFILES is
# enabled.
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto,verbose"
# If you would like to see the difference between HEAD and its upstream,
# set GIT_PS1_SHOWUPSTREAM="auto".  A "<" indicates you are behind, ">"
# indicates you are ahead, "<>" indicates you have diverged and "="
# indicates that there is no difference. You can further control
# behaviour by setting GIT_PS1_SHOWUPSTREAM to a space-separated list
# of values:
#
#     verbose       show number of commits ahead/behind (+/-) upstream
#     name          if verbose, then also show the upstream abbrev name
#     legacy        don't use the '--count' option available in recent
#                   versions of git-rev-list
#     git           always compare HEAD to @{upstream}
#     svn           always compare HEAD to your SVN upstream

ethericon=$(echo -e "\xE2\x9F\xA0")
ethericon=$ethericon # '$'
time_p="\t\[$(tput sgr0)\]" # HH:MM:SS

# user@comp ~> \u@\h
ps1_lg() {
	PS1=${color_white_on_blue}'\w'${color_reset}' '${color_white_on_red}'$(__git_ps1 "%s")'${color_reset}' '${COLOR_LIGHT_GREEN}${ethericon}${color_reset}' '
}
# For when I'm using a small terminal and a long $CWD.
# Just set the input on a newline beneath CWD, GITINFO, ie
# --------------------
# ia@mh cwd `git status`
# $ echo
ps1_llg(){
	PS1=${color_white_on_blue}'\w'${color_reset}' '${color_white_on_red}'$(__git_ps1 "%s")'${color_reset}'\n'${COLOR_LIGHT_GREEN}${ethericon}${color_reset}' '
}

# bfgdollar='$'
# bfgdollar='>'
bfgdollar=''
ps1_bfg(){
  # PS1=${COLOR_LIGHT_BLUE}'$(openssl rand -hex 1)'${color_reset}${COLOR_GREEN}' $(date +%m-%d\ %H:%M:%S)'${color_reset}' '${color_white_on_blue}'\w'${color_reset}' '${color_white_on_red}'$(__git_ps1 "%s")'${color_reset}'\n'${bfgdollar}''
  PS1=${COLOR_CYAN}'$(grep -E "^[a-zA-Z]{3}$" /usr/share/dict/words | shuf -n 1 | tr "[:upper:]" "[:lower:]")'${color_reset}${COLOR_GREEN}' $(date +%y-%m-%dT%H:%M:%S)'${color_reset}' '${color_white_on_blue}'\w'${color_reset}' '${color_white_on_red}'$(__git_ps1 "%s")'${color_reset}'\n'${bfgdollar}''
}

ps1_sm() {
    PS1=':\w '${COLOR_YELLOW}${ethericon}${color_reset}' '
}

# Turn it on.
# ps1_lg
ps1_bfg




