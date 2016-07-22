distinctfiletypes(){
	 find . -type f -name '*.*' | sed 's|.*\.||' | sort -u
}
