export contact_sheet=$HOME/.dotfiles/private/contacts.sh

get_contacts(){
	. $contact_sheet
	echo Got contacts. 
}

add_contact(){
	local name="$1m"
	echo "export $name"\="$2" >> $contact_sheet
	. $contact_sheet
	echo Added "$name" @ "$2" to contacts. 
}

msg(){
	curl http://textbelt.com/text -d number=$1 -d "message=$2"
}
