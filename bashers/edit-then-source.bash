# edit scripts and source it right after
vs(){ 
	local filename=$1
	local filepath=$PWD/$filename
	e_success "Editing: $filename"
	vim $filename
	source $filepath
	e_success "Sourced: $filepath"
}