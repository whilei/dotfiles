# Smoke the hash.
alias busy="cat /dev/urandom | hexdump -C | grep 'ca fe'" 
alias vid2gif=". ~/.dotfiles/funk/video-to-gif.sh"
alias paper="bash $HOME/.dotfiles/funk/paper.sh" # explicit bash command here seems to fix ? some getopts issues
alias build_readem="bash $HOME/.dotfiles/funk/readem.sh"

# for app store screenshot making
alias screenShotter="bash $HOME/.dotfiles/funk/screenshotter.sh"


# Lists the ten most used commands.
alias history_topten="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"