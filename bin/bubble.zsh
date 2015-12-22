get_contacts(){
	. ~/.dotfiles/private/contacts.sh
	echo Got contacts. 
}

msg(){
	curl http://textbelt.com/text -d number=$1 -d "message=$2"
}
