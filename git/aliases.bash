alias gg='git grep'

alias ga="git add"
alias gc="git commit -m"

alias gitit='git add -A && git commit -m'

alias gs='git status -sb'

function gl() {
  git log --all --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
}
alias gll='git --no-pager log --oneline --decorate --color --graph'
# Accepts -<3> arg to limit number shown.
alias glg='git --no-pager log --pretty=format:"%cr [%h] %s" --graph --stat'

alias gpo="git push origin"
alias gpu="git push upstream"
alias gpg="git push github"
alias gpb="git push bitbucket"
alias gpa="git push gogs"
alias gph="git push heroku"
alias gpall="git remote | xargs -L1 git push --all" # push to all remotes for a given repo
gpallr() {
	branch=$1
	for r in $(git remote);
	do
		git push $r $branch;
	done
}

alias pull="git pull"

alias gf="git fetch"

# Checkout branch.
alias gco="git checkout"
# Checkout new branch.
alias gcb="git checkout -b" # note .gitconfig has git go, which is like a gnarly version of this
# Delete branch.
alias gbd="git branch -D" # definitely delete. no fucking around.
alias gbl="git branch --list"

# Merge, rebase.
alias gm="git merge"
alias greb="git rebase"

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

