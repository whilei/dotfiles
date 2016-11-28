#!/bin/bash

# Add top-right-bottom border for odd pages,
# and top-left-bottom border for even pages.
# For every second file in a given directory...
# Even files.
# for file in `find "$1" -type f | awk 'NR % 2 == 0'`; do
#   echo $file
# done
# # Odd files.
# for file in `find "$1" -type f |awk 'NR % 2 == 1'`; do
# 	echo $file
# done

#!/bin/bash
# DIRNAME="$1"
# for file in `find $DIRNAME -type f | sort | awk 'NR % 2 == 0'`; do
#   echo "going to modify" $file
#   #  ls -laFh $file           # show file details
#   #  rm $file                 # delete file
#   #  mv $file <newDirName>    # move file to <newDirName>
# done

cnt=0;
dir=$1
for file in $(find ./$dir -type f); # <-- if not too many matches
do
  let cnt=cnt+1;
  if [ $cnt -eq 2 ];
    then echo "$file";               # <-- do something
    cnt=0;                         # <-- alternate file
  fi;
done
