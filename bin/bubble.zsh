msg(){
	. ~/.dotfiles/private/contacts.sh
	curl http://textbelt.com/text -d number=$1 -d "message=$2"
}
