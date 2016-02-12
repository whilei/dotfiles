# Sorts child dirs by size. 
sortsize(){
	 du -sh * | gsort -h
}
