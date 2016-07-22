#!/bin/bash

# run it from ~/.dotfiles/

readempath="$HOME"/.dotfiles/README.md

echo "" > $readempath # overwrites the previous README

echo "
## Cloc
> \`cloc . >> $readempath\`
" >> $readempath
echo "\`\`\`" >> $readempath
cloc . >> $readempath
echo "\`\`\`" >> $readempath
echo


echo "
## Table of contents
> \`tree >> $readempath\`
" >> $readempath
echo "\`\`\`" >> $readempath
tree >> $readempath # --dirsfirst -alLhtDFC 4 -I .git
echo "\`\`\`" >> $readempath
echo


echo "
## ... and the 5 most recently modified
> gfind . -not -path \"*.git*\" -type f -printf \"%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\\n\" | sort | cut -f 2- -d ' ' | tail -5	>> $readempath
" >> $readempath
echo "\`\`\`" >> $readempath
gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -5	>> $readempath
echo "\`\`\`" >> $readempath
echo


echo "
## Brewed dependencies
> \`$ brew leaves >> README.md \`
" >> $readempath
echo "\`\`\`" >> $readempath
brew leaves >> $readempath
echo "\`\`\`" >> $readempath
echo


echo "
## Ruby gems
> \`env GEM_PATH=$GEM_HOME gem list\`
" >> $readempath
echo "\`\`\`" >> $readempath
env GEM_PATH=$GEM_HOME gem list >> $readempath
echo "\`\`\`" >> $readempath


echo "
## Go src packages
> \`pushd $GOPATH/src/; tree -L 3 >> $readempath; popd;\`
" >> $readempath
echo "\`\`\`" >> $readempath
pushd $GOPATH/src/; tree -L 3 >> $readempath; popd;
echo "\`\`\`" >> $readempath


echo "
## NPM modules
> \`pushd ~/.node/lib/; npm ls >> $readempath; popd;\`
" >> $readempath
echo "\`\`\`" >> $readempath
pushd ~/.node/lib/; npm ls >> $readempath; popd;
echo "\`\`\`" >> $readempath





