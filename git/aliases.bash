git config --global github.token $GITHUB_WHILEI_OAUTH_TOKEN 2>&1 >/dev/null

alias ga="git add"
alias gai="git add -i"
alias gri="git reset -p" # same thing as gai, but for reset. hm, cool.

alias gmeow="gitm commit -S -s -m"
gmeowc(){
	# gitm commit -S -s -m "$(goc): $*"
  echo "$(goc): $*" > /tmp/commit_message.txt
  echo >> /tmp/commit_message.txt
  echo "Date: $(date --rfc-3339 seconds)" >> /tmp/commit_message.txt
  # optionally, can use -F- to use stdin for git commit message
	gitm commit -S -s -F /tmp/commit_message.txt
}
export -f gmeowc

ggmeowc(){
  git add . && gmeowc "$*"
}
export -f ggmeowc

gweowc(){
	  # gitm commit -S -s -m "$(goc): $*"
    echo "$(goc): $*" > /tmp/commit_message.txt
    echo >> /tmp/commit_message.txt
    echo "Date: $(date --rfc-3339 seconds)" >> /tmp/commit_message.txt
    # optionally, can use -F- to use stdin for git commit message
	  git commit -S -s -F /tmp/commit_message.txt
}
export -f gweowc

ameow(){
  git add .
  gitm commit -S -s -m "$*"
}
export -f ameow

# Quick commit with message.
alias gitit='git add -A && git commit -S -s -m'
alias gititm='git add -A && gitm commit -S -s -m'

alias grph='git rev-parse HEAD' # git rev parse head
alias grphc='git rev-parse HEAD | cut -c1-8' # git rev parse head (short)
alias grpb='git rev-parse --abbrev-ref HEAD --' # git rev parse branch
alias gdlt='git describe --abbrev=0 --tags' # git describe latest tag

giton() {
	if (($# != 2)); then
		echo "Use: $ gitonup <remote> <branch>"
	fi
	git fetch "$1"
	git checkout -B "$2"
	git rebase "$1/$2"
}

# Status
alias gs='git status -sb'
alias gss='git show HEAD --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %s %Cgreen(%cr) " --stat --abbrev-commit --date=relative --color | cat && echo && git --no-pager diff HEAD^1'

# Pretty diff  (gem dependency).
gd() {
	if [[ -z "$@" ]]; then
		git diff --color | diff-so-fancy
	else
		git diff --color -- "$@" | diff-so-fancy
	fi
}
gdc() {
	if [[ -z "$@" ]]; then
		git diff --color --cached | diff-so-fancy
	else
		git diff --color --cached -- "$@" | diff-so-fancy
	fi
}

alias gdstat="git diff --stat"
alias gdstatsh="git diff --shortstat"
alias gdstatd="git diff --dirstat"

alias ggd="clear; tmux clear-history; gd"
alias ggdc="clear; tmux clear-history; gdc"

# Pretty logs.
# - can use with '-n' flag, where n is number of commits from head.
## Oneline pretty with graph and fancy colors and all the things.
## Note: You can use '[gl] --branches=branch' to override wildcard. Wildcard hides remotes.
gl_base_fmt='%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset'

alias gl='git log --branches=* --graph --boundary --pretty=format:"$gl_base_fmt %s %Cgreen(%cr) " --abbrev-commit --date=relative'
## ... with raw commit message (subject+body)
alias gL='git log --branches=* --graph --boundary --pretty=format:"$gl_base_fmt %Cgreen(%cr)  %+s%+b" --abbrev-commit --date=relative'
## ... the works, with file stats.
alias GL='git log --branches=* --graph --boundary --pretty=format:"$gl_base_fmt  %n%C(yellow)%B%Creset" --abbrev-commit --date=relative --stat'
## ... all stats, no commit messages
alias Gl='git log --branches=* --graph --boundary --pretty=format:"$gl_base_fmt  %Cgreen(%cr) " --abbrev-commit --date=relative --stat'

alias glr='git log --remotes=* --branches=* --graph --boundary --pretty=format:"$gl_base_fmt %s %Cgreen(%cr) " --abbrev-commit --date=relative'
## ... with raw commit message (subject+body)
alias gLr='git log --remotes=* --branches=* --graph --boundary --pretty=format:"$gl_base_fmt %Cgreen(%cr)  %+s%+b" --abbrev-commit --date=relative'
## ... the works, with file stats.
alias GLr='git log --remotes=* --branches=* --graph --boundary --pretty=format:"$gl_base_fmt  %n%C(yellow)%B%Creset" --abbrev-commit --date=relative --stat'
## ... all stats, no commit messages
alias Glr='git log --remotes=* --branches=* --graph --boundary --pretty=format:"$gl_base_fmt  %Cgreen(%cr) " --abbrev-commit --date=relative --stat'

## -- on current branch or otherwise if --branches= is specified
alias glb='git log --graph --pretty=format:"$gl_base_fmt  %s %Cgreen(%cr) " --abbrev-commit --date=relative'
## ... with raw commit message (subject+body)
alias gLb='git log --graph --pretty=format:"$gl_base_fmt  %Cgreen(%cr)  %+s%+b" --abbrev-commit --date=relative'
## ... the works, with file stats.
alias GLb='git log --graph --pretty=format:"$gl_base_fmt  %Cgreen(%cr)  %n%C(yellow)%B%Creset" --abbrev-commit --date=relative --stat'
## ... all stats, no commit messages
alias Glb='git log --graph --pretty=format:"$gl_base_fmt  %Cgreen(%cr) " --abbrev-commit --date=relative --stat'

alias glbb="glb --simplify-by-decoration" # only show branch heads



# --simplify-by-decoration
# --decorate-refs=refs/heads/feature
# --decorate-refs-exclude=refs/tags/private
# --no-merges
# --merges


# Show remotes.
alias gr="git remote -v"

# Push to all remotes.
alias gP="git remote | xargs -L1 git push --all" # push to all remotes for a given repo
# Push an argued branch/--tags to all remotes.
GPR() {
	branch=$1
	for r in $(git remote); do
		git push $r $branch
	done
}

# Branches
#
## Checkout branch.
alias co="git checkout"
alias gco="git checkout"

## Checkout new branch.
alias gcb="git checkout -b" # note .gitconfig has git go, which is like a gnarly version of this

# checkout a branch with the same name from one fetch from a remote
gcbr(){
	remote_branch="$1" # eg. whilei/fix/stuff
	local_branch=${1#*/} # eg. fix/stuff
	git checkout -B "$local_branch" "$remote_branch"
}

# Delete branch.
alias gbd="git branch -D" # definitely delete. no fucking around.
gpbd() {
	if [[ "$#" -ne 2 ]]; then echo 'Use: git push "$1" --delete "$2"' && exit 1; fi
	git push "$1" --delete "$2"
}

alias gbl="git branch --list"

# Tags
# alias gta="git tag -a"
alias gtl="git tag --list -n3"
# alias rmrftags="git tag | xargs git tag -d"

# https://github.com/paulmillr/dotfiles/blob/master/home/.zshrc.sh
function cherry() {
	args=$@
	for commit in "$@"; do
		echo $commit
		git cherry-pick -n "$commit"
	done
}

# # http://stackoverflow.com/questions/7539382/how-can-i-deploy-push-only-a-subdirectory-of-my-git-repo-to-heroku
# function gitpushsub() {
# 	# git subtree push --prefix output heroku master
# 	git subtree push --prefix "$3" "$1" "$2"
# 	# ie gitpushsub heroku master spoop-web/
# }

# function gitpushsubforce() {
# 	# git push heroku `git subtree split --prefix output master`:master --force
# 	git push "$1" $(git subtree split --prefix "$3" "$2"):master --force
# }

# # re init to winit
# gitwinit() {
# 	cp -r ~/.git_template/hooks/ ./.git/hooks/
# }

# # Show registered git aliases.
# alias gitalias="git config --get-regexp alias"
# alias gitaliases="git config --get-regexp alias"
# alias galias="git config --get-regexp alias"
# alias git_alias="git config --get-regexp alias"
# alias git_aliases="git config --get-regexp alias"

# gcb- is used to check out a branch using the current
# branch name as a prefix.
# This is useful for half-baked development branches that
# you'll probably never use again or know why there is a 
# branch with the suffix '-2'.
gcb-() {
	git checkout -b "$(git rev-parse --abbrev-ref HEAD)$1"
}

alias gitiam="git config --list | grep user"

# git-mkdclone(){
# 	remote="$1"
# 	d="$(dirname $remote)"
# 	d="$(basename $d)"
# 	mkdir -p "$d"
# 	pushd "$d"
# 	git clone "$remote"
# 	popd
# }
# export -f git-mkdclone

iagnore(){
	[[ ! -d .git ]] && exit 1;
	mkdir -p .git/info
	${EDITOR} .git/info/exclude
}
export -f iagnore
