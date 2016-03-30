#!/bin/bash

image=$1

# ## declare an array variable
# declare -a arr=("element1" "element2" "element3")

# ## now loop through the above array
# for i in "${arr[@]}"
# do
#    echo "$i"
#    # or do whatever with individual element of the array
# done

# error if unbound variable
set -u

declare -a sizes=("threeFive" "four" "fourSeven" "fiveFive" "iPad" "iPadPro")

for i in "${sizes[@]}";
do 
	
	mkdir -p "${PWD}/$i"
	new_path="${PWD}/$i/"
	cp "$1" "$new_path"

	MOGRIFY="/usr/local/bin/mogrify"
	echo "${MOGRIFY}"

	if [ "$i" = "threeFive" ]; then
		pushd "$new_path"
		`${MOGRIFY} -resize 640x960 "$1"`
		popd
	elif [ "$i" = "four" ]; then
		pushd "$new_path"
		`${MOGRIFY} -resize 640x1136 "$1"`
		popd
	elif [ "$i" = "fourSeven" ]; then
		pushd "$new_path"
		`${MOGRIFY} -resize 1334x750 "$1"`
		popd
	elif [ "$i" = "fiveFive" ]; then
		pushd "$new_path"
		`${MOGRIFY} -resize 2208x1242 "$1"`
		popd
	elif [ "$i" = "iPad" ]; then
		pushd "$new_path"
		`${MOGRIFY} -resize 2048x1536 "$1"`
		popd
	elif [ "$i" = "iPadPro" ]; then
		pushd "$new_path"
		`${MOGRIFY} -resize 2732x2048 "$1"`
		popd
	fi

	unset MOGRIFY

done



# mkdir -p threeFive
# 960 x 640 pixels for hi-res landscape (full screen) maximum

# mkdir -p four
# 1136 x 640 pixels for landscape (full screen) minimum

# mkdir -p fourSeven
# 750 x 1334 pixels for hi-res portrait

# mkdir -p fiveFive
# 1242 x 2208 pixels for hi-res portrait

# mkdir -p iPad
# 1536 x 2048 pixels for hi-res portrait (full screen) maximum

# mkdir -p iPadPro
# 2048 x 2732 pixels for hi-res portrait

# for i in "{sizes[@]}";
# do
	
# done

