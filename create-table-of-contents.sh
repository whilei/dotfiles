# Load from dotfiles.
# do like holman
export ZSH=$HOME/.dotfiles
config_files=$ZSH/**/*.zsh

## except load everything
for file in $config_files
do
				echo "\`\`\`bash" >> README.md
        echo "$(cat $file)" >> README.md
        echo "\`\`\`" >> README.md
done

unset config_files, file
