#!/usr/bin/env bash

# Find git repositories in specified root dir (like ~) and make a substitution in the
# `config` file.

root_dir=$1
old=$2
new=$3

if [[ $# -eq 0 ]]; then
	echo "Use: ./shit-changed-my-github-username.sh ~ hotdogn00bmonke1986 jimjameson"
	echo "Namely:    ./THISSCRIPT ROOT_DIR OLD NEW"
fi

	for gitdir in `find $root_dir -type d -name .git`; do
		conf="$gitdir/config"
		dir=${gitdir%/.git}
		git -C $dir init &> /dev/null
		if [ $? -eq 0 ]; then
			echo "	[OK] $dir"
		else
			>&2 echo "	[FAIL] $dir"
		fi
	done

