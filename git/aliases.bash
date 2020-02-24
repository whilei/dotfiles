git config --global github.token $GITHUB_WHILEI_OAUTH_TOKEN 2>&1 >/dev/null

alias idiot="git"
alias dummy="git"

alias g="git"
alias k="git" # why k? kuz :fu:

alias ga="git add"
alias gai="git add -i"
alias gri="git reset -p" # same thing as gai, but for reset. hm, cool.

alias gc="git commit"
alias gC="git commit -S" # signed commit

alias gmc="gitm commit"
alias gmC="gitm commit -S" # signed commit

alias gcm="git commit -m"
alias gCm="git commit -S -m"
alias gcam="git commit --amend"

alias gmcm="gitm commit -m"
alias gmCm="gitm commit -S -m"
alias gmcam="gitm commit --amend"

# Quick commit with message.
alias gitit='git add -A && git commit -m'
alias gititm='git add -A && gitm commit -m'
alias GITITm='git add -A && gitm commit -S -m' # signed commit

alias grph='git rev-parse HEAD' # git rev parse head
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

alias gpo="git push origin"
alias gpot="git push origin --tags"
alias gpu="git push upstream"
alias gput="git push upstream --tags"
alias gpw="git push whilei"
alias gpwt="git push whilei --tags"
alias gpa="git push gogs"
alias gpat="git push gogs --tags"

alias bwop="git push bwo"

alias gpb="git push bitbucket"
alias gph="git push heroku"

alias gp-="TODO: push all remotes"

# Push to all remotes.
alias gP="git remote | xargs -L1 git push --all" # push to all remotes for a given repo
# Push an argued branch/--tags to all remotes.
GPR() {
	branch=$1
	for r in $(git remote); do
		git push $r $branch
	done
}

alias pull="git pull"
alias pullor="git pull origin"
alias pullup="git pull upstream"
alias pullar="git pull gogs"
alias pullwh="git pull whilei"
alias gplum="git pull upstream master"

alias gf="git fetch"

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

# Merge, rebase.
alias gm="git merge"
alias greb="git rebase"
alias grebi="git rebase -i"

# Tags
alias gta="git tag -a"
alias gtl="git tag --list -n3"
alias rmrftags="git tag | xargs git tag -d"

# External program.
alias ggui="gitup"

# https://github.com/paulmillr/dotfiles/blob/master/home/.zshrc.sh
function cherry() {
	args=$@
	for commit in "$@"; do
		echo $commit
		git cherry-pick -n "$commit"
	done
}

alias gcp="git cherry-pick"

# http://stackoverflow.com/questions/7539382/how-can-i-deploy-push-only-a-subdirectory-of-my-git-repo-to-heroku
function gitpushsub() {
	# git subtree push --prefix output heroku master
	git subtree push --prefix "$3" "$1" "$2"
	# ie gitpushsub heroku master spoop-web/
}

function gitpushsubforce() {
	# git push heroku `git subtree split --prefix output master`:master --force
	git push "$1" $(git subtree split --prefix "$3" "$2"):master --force
}

# re init to winit
gitwinit() {
	cp -r ~/.git_template/hooks/ ./.git/hooks/
}

# Show registered git aliases.
alias gitalias="git config --get-regexp alias"
alias gitaliases="git config --get-regexp alias"
alias galias="git config --get-regexp alias"
alias git_alias="git config --get-regexp alias"
alias git_aliases="git config --get-regexp alias"

# gcb- is used to check out a branch using the current
# branch name as a prefix.
# This is useful for half-baked development branches that
# you'll probably never use again or know why there is a 
# branch with the suffix '-2'.
gcb-() {
	git checkout -b "$(git rev-parse --abbrev-ref HEAD)$1"
	
}

alias gitiam="git config --list | grep user"

git-mkdclone(){
	remote="$1"
	d="$(dirname $remote)"
	d="$(basename $d)"
	mkdir -p "$d"
	pushd "$d"
	git clone "$remote"
	popd
}
export -f git-mkdclone
