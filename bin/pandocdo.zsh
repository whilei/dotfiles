# convert all from docx to plain in current dir
alias pandocxtoplain="find ./ -iname "*.docx" -type f -exec sh -c 'pandoc "${0}" -o "${0%.docx}.text"' {} \;"
# " docx -> md
alias pandocxtomd="find ./ -iname "*.docx" -type f -exec sh -c 'pandoc "${0}" -o "${0%.docx}.md"' {} \;"
