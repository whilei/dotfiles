#!/usr/bin/env bash

apps=(
	postman
	spotify
	brave-browser
)

for a in "${apps[@]}"; do
	brew cask install "$a"
done
