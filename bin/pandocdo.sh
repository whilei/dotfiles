# convert all from docx to plain in current dir
#alias pandocxtoplain="find ./ -iname "*.docx" -type f -exec sh -c 'pandoc "${0}" -o "${0%.docx}.text"' {} \;"
# " docx -> md
#alias pandocxtomd="find ./ -iname "*.docx" -type f -exec sh -c 'pandoc "${0}" -o "${0%.docx}.md"' {} \;"

# pandocconv(){
# local from=$1
# local to=$2
# find ./ -iname "*""$from" -type f; command pandoc "${0}" -o "${0%$from}$to";
# }

# pandocconv(){
# 	local from=$1
# 	local to=$2
# 	for file in *"$from"
# 	do
# 		command pandoc ./"$file" -o ./"$file/$from/$to"
# 	done
# }