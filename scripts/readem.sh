#!/bin/bash

# run it from ~/.dotfiles/

tocpath="$HOME"/.dotfiles/TOC.md

echo "" > $tocpath # overwrites the previous README

echo "
## Cloc
> \`cloc . >> $tocpath\`
" >> $tocpath
echo "\`\`\`" >> $tocpath
cloc . >> $tocpath
echo "\`\`\`" >> $tocpath
echo


echo "
## Table of contents
> \`tree >> $tocpath\`
" >> $tocpath
echo "\`\`\`" >> $tocpath
tree >> $tocpath # --dirsfirst -alLhtDFC 4 -I .git
echo "\`\`\`" >> $tocpath
echo


echo "
## ... and the 5 most recently modified
> gfind . -not -path \"*.git*\" -type f -printf \"%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\\n\" | sort | cut -f 2- -d ' ' | tail -5	>> $tocpath
" >> $tocpath
echo "\`\`\`" >> $tocpath
gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -5	>> $tocpath
echo "\`\`\`" >> $tocpath
echo


echo "
## Brewed dependencies
> \`$ brew leaves >> README.md \`
" >> $tocpath
echo "\`\`\`" >> $tocpath
brew leaves >> $tocpath
echo "\`\`\`" >> $tocpath
echo


echo "
## Ruby gems
> \`env GEM_PATH=$GEM_HOME gem list\`
" >> $tocpath
echo "\`\`\`" >> $tocpath
env GEM_PATH=$GEM_HOME gem list >> $tocpath
echo "\`\`\`" >> $tocpath


echo "
## Go src packages
> \`pushd $GOPATH/src/; tree -L 3 >> $tocpath; popd;\`
" >> $tocpath
echo "\`\`\`" >> $tocpath
pushd $GOPATH/src/; tree -L 3 >> $tocpath; popd;
echo "\`\`\`" >> $tocpath


echo "
## NPM modules
> \`pushd ~/.node/lib/; npm ls >> $tocpath; popd;\`
" >> $tocpath
echo "\`\`\`" >> $tocpath
pushd ~/.node/lib/; npm ls >> $tocpath; popd;
echo "\`\`\`" >> $tocpath





