sortlastmodified(){
	# annoyingly groups by folders
	# find . -not -path "*.git*" -type f | xargs ls -ltr
	# does not group by folders. 
	# requires GNU findutils --> `brew install findutils`
	gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' '
}
