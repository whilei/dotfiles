# Find all different filetypes and sort them into respective folders. 
## Not the best way to do it.&trade; 
# This finds unique filetypes RECURSIVELY, which means you'll see a lot of "can't do it" errors for the filetypes without unsorted files.
# Thus it creates a lot unused directories because of this. 
# Whatever, we'll just delete those after.  

function sortdownloads {
	local dldir="$HOME/Downloads"
	local filetypesdl=`find $dldir -type f -name '*.*' | sed 's|.*\.||' | sort -u`

	for i in $filetypesdl; do
		# this creates a lot of unused dirs because of recursively finding filetypes
		mkdir -p $dldir/$i/
		# sorting hat
		mv $dldir/*".$i" $dldir/$i
		# delete empty dirs
		find $dldir/ -type d -empty -delete
	done	
}
export -f sortdownloads