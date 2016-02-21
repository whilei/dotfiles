# Smoke the hash.
alias busy="cat /dev/urandom | hexdump -C | grep 'ca fe'" 
alias vid2gif=". ~/.dotfiles/funk/video-to-gif.sh"
alias paper="bash ./paper.sh" # explicit bash command here seems to fix ? some getopts issues