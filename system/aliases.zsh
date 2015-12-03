# better ls
alias ll='gls -lAh --color'

# find beautiful process
alias psg="ps aux | grep -v grep | gre -i -e VSZ -e"

# make dir and cd into it
mkcd(){
mkdir -p $1
cd $1
}

# make executable
alias chx="chmod +x"

# edit .bash_profile and re-source after
alias bro="nano ~/.bash_profile; source ~/.bash_profile;"

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# cd into dir and show contents
cdl(){
command cd $1
command gls -lAh --color
}
..l(){
command cd ..
command gls -lAh --color
}

alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"


