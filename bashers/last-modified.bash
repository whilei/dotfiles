
# Find last modifified file or dir.
lm() {
	if [[ $# -eq 0 ]]; then
		find . -type f | xargs ls -tr | tail -n 1
	elif [[ $# -eq 1 ]]; then
		find "$1" -type f | xargs ls -tr | tail -n 1
	elif [[ $# -eq 2 ]]; then
		find "$2" -type "$1" | xargs ls -tr | tail -n 1
	else
		echo "Use: $ lm <|d|f> <|[path]> (literally 'd' or 'f')"
		echo "Note: <|[path]> is relative to $CWD"
	fi
}
