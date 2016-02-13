# Sorts dirs and/or files by size. 
sortsize(){
	 du -sh * | gsort -h
}
