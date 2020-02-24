#!/usr/bin/env bash

# fuzzy git branch checkout-ing
# https://coderwall.com/p/ba8afa/git-branch-fuzzy-search-checkout
# cof -> check out fuzzy (where co is already 'checkout')
ffgco() {
    local branches branch
    branches=$(git branch -a) &&
    branch=$(echo "$branches" | fzf +s +m -e) &&
    git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}
alias 'gcoff'='ffgco'
alias 'coff'='ffgco'

# Same as above, but uses only last 10 active branches... +'s' for faSSSSt, speed
fgco() {
    local branches branch
    branches=$(git bssimple) &&
	# --tac = reverse order of input, while +s = do not sort
    branch=$(echo "$branches" | fzf --tac +m -e) &&
    git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}
alias gcoo='fgco'
alias cof='fgco'

# checkout branch with auto name, ala 'hub'
ffgcor(){
	local branches branch br
	branches=$(git branch --all) &&
	branch=$(echo "$branches" | fzf +s +m -e) &&
	branch=$(echo "$branch" | sed "s|.* remotes/||") &&
	git checkout -b "${branch#*/}" "${branch}"
}
alias gcorr='ffgcor'

ffgbd() {
	local branches branch
	branches=$(git branch -a) &&
	branch=$(echo "$branches" | fzf +s +m -e) &&
	git branch -D $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}
alias gbdd='ffgbd'

ffgbdr() {
	if [[ -z "$1" ]]; then
		echo "Need remote name at which should --delete branches"
		return 1
	fi
	local branches branch
	branches=$(git branch -a) &&
	branch=$(echo "$branches" | fzf +s +m -e) &&
	git push "$1" --delete $(echo "$branch" | sed "s:.* remotes/$1/::" | sed "s:.* ::")
}

ffgct() {
	local tags tag
	tags=$(git tag --list) &&
	tag=$(echo "$tags" | fzf +s +m -e) &&
	git checkout $(echo "$tag")
}
alias gctt='ffgct'

# fuzzy find commit
ffgl() {
	local coms com
	coms=$(git log --oneline --branches=* -100) &&
	com=$(echo "$coms" | fzf +s +m -e) &&
	read -r c _ <<< "$com" &&
	echo "$c"
}
alias glff='ffgl'
alias gll='ffgl'

# fuzzy find commit on this branch
ffglb() {
	local coms com
	coms=$(git log --oneline -100) &&
	com=$(echo "$coms" | fzf +s +m -e) &&
	read -r c _ <<< "$com" &&
	echo "$c"
}

# fuzzy find commit and show
# ffgl+show = ffgls
ffgls(){
	local coms com
	coms=$(git log --oneline --branches=* -100) &&
	com=$(echo "$coms" | fzf +s +m -e) &&
	read -r c _ <<< "$com" &&
	git show "$c" &&
	ffgls
}
alias glss='ffgls'

# fuzzy find commit on this branch and show
# ffgl+show = ffgls
ffglbs(){
	local coms com
	coms=$(git log --oneline -100) &&
	com=$(echo "$coms" | fzf +s +m -e) &&
	read -r c _ <<< "$com" &&
	git show "$c" &&
	ffglbs
}
alias glbss='ffglbs'

# ffstash - easier way to deal with stashes
# type fstash to get a list of your stashes
# enter shows you the contents of the stash
# ctrl-d shows a diff of the stash against your current HEAD
# ctrl-b checks the stash out as a branch, for easier merging
ffstash() {
  local out q k sha
  while out=$(
    git stash list --pretty="%C(yellow)%h %>(14)%Cgreen%cr %C(blue)%gs" |
    fzf --ansi --no-sort --query="$q" --print-query \
        --expect=ctrl-d,ctrl-b);
  do
    mapfile -t out <<< "$out"
    q="${out[0]}"
    k="${out[1]}"
    sha="${out[-1]}"
    sha="${sha%% *}"
    [[ -z "$sha" ]] && continue
    if [[ "$k" == 'ctrl-d' ]]; then
      git diff $sha
    elif [[ "$k" == 'ctrl-b' ]]; then
      git stash branch "stash-$sha" $sha
      break;
    else
      git stash show -p $sha
    fi
  done
}

# fuzzy ssh

ffssh(){
	local hn hns
	hns=$(cat ~/.ssh/config | grep 'Host ' | awk '{print $2}') && 
	hn=$(echo "$hns" | fzf +s +m -e --tac) &&
	echo "sshing $hn ..." &&
	ssh "$hn"
}

# fkill - kill process
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# fterm - kill process with SIGTERM
fterm() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-15}
  fi
}

# fint - kill process with SIGINT
fint() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-2}
  fi
}

# fasd & fzf change directory - open best matched file using `fasd` if given argument, filter output of `fasd` using `fzf` else
ffvim() {
    [ $# -gt 0 ] && fasd -f -e ${EDITOR} "$*" && return
    local file
    file="$(fasd -Rfl "$1" | fzf -1 -0 --no-sort +m)" && $EDITOR "${file}" || return 1
}
alias vimm='ffvim'

# fasd & fzf change directory - jump using `fasd` if given argument, filter output of `fasd` using `fzf` else
cdd() {
    [ $# -gt 0 ] && fasd_cd -d "$*" && return
    local dir
    dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
}

ffrm() {
    local fi
    fi="$(fasd -Rfl "$1" | fzf -1 -0 --no-sort +m)" && rm "${fi}" || return 1
}

ffrmr() {
    local dir
    dir="$(fasd -Rfl "$1" | fzf -1 -0 --no-sort +m)" && rm -r "${dir}/" || return 1
}

ffrmrf() {
    local dir
    dir="$(fasd -Rfl "$1" | fzf -1 -0 --no-sort +m)" && rm -rf "${dir}" || return 1
}

# fuzzy grep open via ag
fagvim() {
  local file
  file="$(ag --nobreak --noheading $@ | fzf -0 -1 | awk -F: '{print $1 " +" $2}')"

  if [[ -f $file ]]
  then
     vim $file
  fi
}
alias vag="fagvim"


# fuzzy grep open via ag
fagvim2() {
  local file
  file="$(ag --nobreak --noheading $@ | fzf -0 -1 +m | awk -F: '{print $1 " +" $2}')"

  if [[ -f $file ]]
  then
     vim $file
  fi
}
alias vag2="fagvim2"


# fdr - cd to selected parent directory
cdup() {
  local declare dirs=()
  get_parent_dirs() {
    if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
    if [[ "${1}" == '/' ]]; then
      for _dir in "${dirs[@]}"; do echo $_dir; done
    else
      get_parent_dirs $(dirname "$1")
    fi
  }
  local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
  cd "$DIR"
}

# fd - cd to selected directory
cdf() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

alias fl="fzf --preview 'cat {}'"

# using ripgrep combined with preview
# find-in-file - usage: fif <searchTerm>
fif() {
	if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
	rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}
