# Navigation

ll='ls -lAtrF --color=auto'
export listy='ls -lAtrF --color=auto'
cdl(){ command cd $1; $listy; }
..l(){ command cd ..; $listy; }

## Relative
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ..4="cd ../../../../"
alias ..5="cd ../../../../../"

# Directory listing -- tree
if [[ "$(type -P tree)" ]]; then
  # alias ll='tree --dirsfirst -aLpughDFiC 1'
  # alias lsd='ll -d'
  alias lt='tree --dirsfirst -alLhtDFC 4 -I .git' # 3 is max levels descended, -I ignore .git/
  alias ltd='lt -d'
fi

