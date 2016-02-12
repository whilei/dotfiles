# Find all different filetypes and sort them into respective folders. 
## Not the best way to do it.&trade; 
# This finds unique filetypes RECURSIVELY, which means you'll see a lot of "can't do it" errors
# for the filetypes without unsorted files. It also creates a lot unused directories because of this. Whatever, we'll just delete those after.  

dldir=~/Downloads
filetypesdl=`find $dldir -type f -name '*.*' | sed 's|.*\.||' | sort -u` #

for i in $filetypesdl; do
	# this creates a lot of unused dirs
	mkdir -p $dldir/$i/
	# sorting hat
	mv $dldir/*".$i" $dldir/$i
	# delete empty dirs
	find $dldir/ -type d -empty -delete
done