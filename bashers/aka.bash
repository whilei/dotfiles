#!/usr/bin/env bash

alias hp="gitpushsub web master web"
alias hr="heroku run"
alias hrw="heroku run --remote web"
alias rsp="rails s -p3002"
alias lr="guard -P livereload"
alias gwno="gulp watch --no-open"
alias bios="gulp --cordova 'build ios'"
alias dockstart="docker-machine start"
alias dockapp="docker-compose run app" # + rake db:migrate/etc
alias dockbuild="docker-compose build"
alias dockup="docker-compose up"
alias grm="go run main.go"
alias drive_export_png="drive pull --export png --explicitly-export --exports-dir png_exports --same-exports-dir directory"
alias gogogs='./darwin.gitea web -c custom/conf/dev.app.ini'

alias be="bundle exec"
alias becapdep="bundle exec cap production deploy"
alias becapres="bundle exec cap production puma:restart"

# alias ging="go install github.com/ethereumproject/go-ethereum/cmd/geth"

alias bb="boltbrowser"

nameyyasdf() {
	local branch=$(git rev-parse --abbrev-ref HEAD)
	branch=$(echo -n $branch)
	local name="$branch.$(date +%y-%m-%d-%H-%M-%S)"
	echo -n "$name"
}

ging(){
	# echo "$branch-$(date)"  # `janus version -format TAG_OR_NIGHTLY`
	go install -ldflags "-X main.Version="source.`janus version -format TAG_OR_NIGHTLY`.`nameyyasdf` github.com/ethereumproject/go-ethereum/cmd/geth
}

