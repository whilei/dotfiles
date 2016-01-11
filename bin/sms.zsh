export contact_sheet=$HOME/.dotfiles/private/contacts.sh

get_contacts(){
	. $contact_sheet
	echo Got contacts. 
}

# add_contact JIM_BEAM 2185550123
add_contact(){
	local name="$1"
	echo "export $name"\="$2" >> $contact_sheet
	. $contact_sheet
	echo Added "$name" @ "$2" to contacts. 
}

sms(){
	curl http://textbelt.com/text -d number=$1 -d "message=$2"
}
