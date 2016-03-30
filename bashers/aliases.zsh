alias lastmod="bash $HOME/.dotfiles/bashers/last-modified.sh"

# http://stackoverflow.com/questions/3510673/find-and-kill-a-process-in-one-line-using-bash-and-regex
killkillkill(){
	kill $(ps aux | grep "$1" | awk '{print $2}')
}
