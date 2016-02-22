#!/bin/bash

# run it from ~/.dotfiles/

readempath="$HOME"/.dotfiles/README.md

echo "
## 5 files recently modified
" > $readempath # overwrites the previous README
echo "\`\`\`" >> $readempath
gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -5	>> $readempath
echo "\`\`\`" >> $readempath

echo "
## Table of contents
" >> $readempath 
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