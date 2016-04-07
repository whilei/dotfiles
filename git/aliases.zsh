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

alias gpullo="git pull origin"
alias gpullu="git pull upstream"

alias gf="git fetch"

# Checkout branch.
alias gco="git checkout"
# Checkout new branch.
alias gcb="git checkout -b"
# Delete branch.
alias gbd="git branch -D" # definitely delete. no fucking around. 

# Merge, rebase.
alias gm="git merge"
alias greb="git rebase"
