# find beautiful process
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"

# make dir and cd into it
mkcd(){
	 mkdir -p "$@" && cd "$@" # thanks cowboy. this is better
}

# alias eachdir=". ~/.dotfiles/bashers/each-dir.sh"

# The best rysyncer.
# The -a flag is for archive, which "ensures that symbolic links, devices, attributes, permissions, ownerships, etc. are preserved in the transfer"; the -z flag compresses files during the transfer; -v is for verbose; and --progress shows you your progress. I've enshrined this in an alias:
# Copy the files pointed to by the symbolic links ("transform symlink into referent file/dir") with the --L flag:
alias yp="rsync -avz -L --progress"

# EZ v
alias v="vim"

# make executable
alias chx="chmod +x"

