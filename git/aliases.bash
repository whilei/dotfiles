alias ga="git add"

alias gc="git commit"
alias gC="git commit -S" # signed commit
alias gcm="git commit -m"
alias gCm="git commit -S -m"
alias gcam="git commit --amend"

# Quick commit with message.
alias gitit='git add -A && git commit -m'
alias GITIT='git add -A && git commit -S -m' # signed commit

# Status
alias gs='git status -sb'

# Pretty diff  (gem dependency).
alias gd='git diff --color | diff-so-fancy'

# Pretty logs.
# - can use with '-n' flag, where n is number of commits from head.
## Oneline pretty with graph and fancy colors and all the things.
## Note: You can use '[gl] --branches=branch' to override wildcard. Wildcard hides remotes.
alias gl='git log --branches=* --graph --pretty=format:"%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(cyan)[%G?] %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
## ... with raw commit message (subject+body)
alias gL='git log --branches=* --graph --pretty=format:"%Cred%h%Creset -%C(auto)%d%Creset %Cgreen(%cr) %C(cyan)[%G?] %C(bold blue)<%an>%Creset %+s%+b" --abbrev-commit --date=relative'
## ... the works, with file stats.
alias GL='git log --branches=* --graph --pretty=format:"%Cred%h%Creset -%C(auto)%d%Creset %Cgreen(%cr) %C(cyan)[%G?] %C(bold blue)<%an>%Creset %n%C(yellow)%B%Creset" --abbrev-commit --date=relative --stat'
## ... all stats, no commit messages
alias Gl='git log --branches=* --graph --pretty=format:"%Cred%h%Creset -%C(auto)%d%Creset %Cgreen(%cr) %C(cyan)[%G?] %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative --stat'

alias gr="git remote"
# Show remotes.
alias grv="git remote -v"

alias gpo="git push origin"
alias gpu="git push upstream"
alias gpw="git push whilei"
alias gpa="git push gogs"

alias gpb="git push bitbucket"
alias gph="git push heroku"

# Push to all remotes.
alias gP="git remote | xargs -L1 git push --all" # push to all remotes for a given repo
# Push an argued branch/--tags to all remotes.
GP() {
	branch=$1
	for r in $(git remote);
	do
		git push $r $branch;
	done
}

alias pull="git pull"
alias pullor="git pull origin"
alias pullup="git pull upstream"
alias pullar="git pull gogs"
alias pullwh="git pull whilei"

alias gf="git fetch"

# Branches
#
## Checkout branch.
alias gco="git checkout"
## Checkout new branch.
alias gcb="git checkout -b" # note .gitconfig has git go, which is like a gnarly version of this
# Delete branch.
alias gbd="git branch -D" # definitely delete. no fucking around.
alias gbl="git branch --list"

# Merge, rebase.
alias gm="git merge"
alias greb="git rebase"

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

# http://stackoverflow.com/questions/7539382/how-can-i-deploy-push-only-a-subdirectory-of-my-git-repo-to-heroku
function gitpushsub() {
	# git subtree push --prefix output heroku master
	git subtree push --prefix "$3" "$1" "$2"
	# ie gitpushsub heroku master spoop-web/
}

function gitpushsubforce() {
	# git push heroku `git subtree split --prefix output master`:master --force
	git push "$1" `git subtree split --prefix "$3" "$2"`:master --force
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

