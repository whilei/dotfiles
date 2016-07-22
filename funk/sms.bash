



# add_contact JIM_BEAM 2185550123
add_contact(){
	local name="$1"
	local contact_sheet=$HOME/.dotfiles/private/contacts.sh

	echo "$name_mobile"\="$2" >> $contact_sheet
	. $contact_sheet
	echo Added "$name_mobile" @ "$2" to contacts, and sourced. 
}

# ie., $ sms $ISAAC_mobile "hey hey"
# contacts imported in private/
sms(){
	# Grab contact vars. 
	. $HOME/.dotfiles/private/contacts.sh
	# Do textbelt. 
	curl http://textbelt.com/text -d number=$1 -d "message=$2"
}
