alias gg='git grep'

alias ga="git add"
alias gitit='git add -A && git commit -m'

alias gs='git status -sb'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gll="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an$"

alias gpo="git push origin"
alias gpullo="git pull origin"
alias gf="git fetch"

alias gco="git checkout"
alias gcb="git checkout -b"

alias greb="git rebase"

alias pushit="git push origin \"$(git rev-parse --abbrev-ref HEAD)\""
