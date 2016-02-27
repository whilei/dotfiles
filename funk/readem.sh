#!/bin/bash

# run it from ~/.dotfiles/

readempath="$HOME"/.dotfiles/README.md

echo "" > $readempath # overwrites the previous README

echo "
## Table of contents
> \`tree --dirsfirst -alLhtDFC 4 -I .git >> $readempath\`

" >> $readempath 
echo "\`\`\`" >> $readempath
tree --dirsfirst -alLhtDFC 4 -I .git >> $readempath
echo "\`\`\`" >> $readempath
echo

echo "
## ... and the 5 most recently modified
> gfind . -not -path \"*.git*\" -type f -printf \"%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\\n\" | sort | cut -f 2- -d ' ' | tail -5	>> $readempath

" >> $readempath 
echo "\`\`\`" >> $readempath
gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -5	>> $readempath
echo "\`\`\`" >> $readempath

echo "
## Dependencies
> \`$ brew leaves >> README.md \`

" >> $readempath
echo "\`\`\`" >> $readempath
brew leaves >> $readempath
echo "\`\`\`" >> $readempath

echo "
## Gems
> \`env GEM_PATH=$GEM_HOME gem list\`
" >> $readempath
echo "\`\`\`" >> $readempath
env GEM_PATH=$GEM_HOME gem list >> $readempath
echo "\`\`\`" >> $readempath