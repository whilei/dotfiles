cc(){
	for entry in "$1"/*
	do
		TRIMMED=$(echo $entry | sed 's/\/\/*/\ \>\ /g')
		echo $TRIMMED
	done
}
