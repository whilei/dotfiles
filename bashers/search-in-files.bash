search(){
	local pattern=$2
	local dir=$1
	if [[ ! $# -eq 2 ]]; then
		e_warning "Usage: search <pattern> <dir>"
	else
		grep -R $pattern $dir
	fi
}
