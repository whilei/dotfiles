AKA=~/.dotfiles/bashers/aka.zsh
alias aka=". ~/.dotfiles/bashers/aka.zsh" # Below will be tailed.
alias hp="gitpushsub web master web"
alias hr="heroku run"
alias hrw="heroku run --remote web"
alias rsp="rails s -p3002"
alias lr="guard -P livereload"
alias bios="gulp --cordova 'build ios'"
alias dockstart="docker-machine start"
function dockerevalenv() { eval $(docker-machine env $1); }
alias dockapp="docker-compose run app" # + rake db:migrate/etc
alias dockbuild="docker-compose build"
alias dockup='docker-compose up'
function dockeropen() { open http://$(docker-machine ip $1):$2; }