- all *.zsh files get loaded; no path-first ordering or anything like that, just straight up
```bash
# Load from dotfiles.
# do like holman
export ZSH=$HOME/.dotfiles
config_files=$ZSH/**/*.zsh

## except load everything
for file in $config_files
do
        source $file
done

unset config_files
```
