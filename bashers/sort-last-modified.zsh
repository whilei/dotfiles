# Does not group by folders. Accepts tail number as arg1.
# requires GNU findutils --> `brew install findutils`
lmodified(){
	# find . -not -path "*.git*" -type f | xargs ls -ltr # annoyingly groups by folders	
	gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -$1
}
