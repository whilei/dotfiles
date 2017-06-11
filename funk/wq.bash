#!/usr/bin/env bash

# Write on paper. Save to Dropbox/paper/`date_stamp`.md

wq() {

base="$1"
name="$(random-word)-$(random-word).wq."

if [[ "$base" == "" ]]; then
	base="./"
fi

vim "${base}/${name}.md"
}
