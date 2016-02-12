
# rename all files from where $arg1 to $arg2
# primary for changing extensions
# ie $ changeextension .text .sh
changeextension(){
local from=$1
local to=$2
for file in *"$from"
do
  mv "$file" "${file/$from/$to}"
done
}
