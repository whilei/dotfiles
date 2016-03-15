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

declare -a sizes=("threeFive" "four" "fourSeven" "fiveFive" "iPad" "iPadPro")

for i in "${sizes[@]}";
do 
	mkdir -p "${PWD}/$i"
	new_path="${PWD}/$i/"
	cp "$1" "$new_path"
	if [ "$i" = "threeFive" ]; then
		`convert "$1" -resize 960x640 "$i/$1"`
	elif [ "$i" = "four" ]; then
		`convert "$1" -resize 1136x640 "$i/$1"`
	elif [ "$i" = "fourSeven" ]; then
		`convert "$1" -resize 750x1334 "$i/$1"`
	elif [ "$i" = "fiveFive" ]; then
		`convert "$1" -resize 1242x2208  "$i/$1"`
	elif [ "$i" = "iPad" ]; then
		`convert "$1" -resize 1536x2048 "$i/$1"`
	elif [ "$i" = "iPadPro" ]; then
		`convert "$1" -resize 2048x2732 "$i/$1"`
	fi
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

