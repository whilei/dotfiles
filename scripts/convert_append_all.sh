#!/bin/bash

# For all images ($1)  append individual images
# to make page-spreads. The first and last pages should remain on their lonesome.
# Images will be sorted and paired alphabetically.
#

# Usage: convert_append_all . appended
# ==   : convert_append_all [files] [out_dir]

# Change breaks for reading array.
SAVEIFS=$IFS
IFS=$(echo -en "\n\b") # Use newline instead of spaces. Cuz we put spaces in our filenames, suckas.

# Expects ONLY IMAGE FILES. EVERYTHING WILL BROKE IF NOT CORRECT. WATCH YOSELF.
dir=$1

arr=($(find $dir -type f)) # Get only the FILES from spec'd $1 directory.

length=${#arr[@]}
echo "There are $length files."

out_dir="$2"
echo "Making out dir if necessary: $2"
mkdir -p "$out_dir"

counter=1
for file in ${arr[@]}; do
	if [[ "$counter" -eq 1 ]]; then
		echo "First file: $file, not appending anything."

	elif [[ "$counter" -eq "$length" ]]; then
		echo "Last file: $file, not appending anything."

	else
		if ! (("$counter" % 2)); then
 		  echo "$counter is even. Will append with next file."
		  arr_location=$(($counter-1))
		  # Handle naming with placeholder 0's.
		  if [[ "$counter" -lt 10 ]]; then
		  	echo "convert +append ${arr[$arr_location]} ${arr[$counter]} $out_dir/0$counter.png"
		  	convert +append "${arr[$arr_location]}" "${arr[$counter]}" "$out_dir/0$counter.png"
		  else
		  	echo "convert +append ${arr[$arr_location]} ${arr[$counter]} $out_dir/$counter.png"
		  	convert +append "${arr[$arr_location]}" "${arr[$counter]}" "$out_dir/$counter.png"
		  fi
		else
			echo "$counter is odd"
		fi
	fi
	let counter=counter+1
done
unset counter
unset out_dir
unset arr
IFS=$SAVEIFS
