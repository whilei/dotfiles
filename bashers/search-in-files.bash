search(){
	local pattern=$1
	local dir=$2
	if [[ ! $# -eq 2 ]]; then 
		e_warning "Usage: search <pattern> <dir>"
	else 
		grep -R $pattern $dir
	fi
}
