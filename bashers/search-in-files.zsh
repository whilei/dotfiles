search(){
	local pattern=$1
	local dir=$2
	grep -R $pattern $dir
}
