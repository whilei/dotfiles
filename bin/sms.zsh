export contact_sheet=$HOME/.dotfiles/private/contacts.sh

# add_contact JIM_BEAM 2185550123
add_contact(){
	local name="$1"
	echo "export $name"\="$2" >> $contact_sheet
	. $contact_sheet
	echo Added "$name" @ "$2" to contacts. 
}

# ie., $ sms $ISAAC "hey hey"
# contacts imported in private/
sms(){
	curl http://textbelt.com/text -d number=$1 -d "message=$2"
}
