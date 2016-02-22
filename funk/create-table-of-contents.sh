readempath="$HOME"/.dotfiles/README.md


echo "
## Table of contents
" > $readempath # overwrites the previous README
echo "\`\`\`" >> $readempath
tree --dirsfirst -alLhtDFC 4 -I .git >> $readempath
echo "\`\`\`" >> $readempath
echo

echo "
## All of my brews
" >> $readempath
echo "\`\`\`" >> $readempath
brew list >> $readempath
echo "\`\`\`" >> $readempath