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

function ging {
	pushd /Users/ia/gocode/src/github.com/ethereumproject/go-ethereum;
	go install ./cmd/geth;
	popd;
}

alias bb="boltbrowser"


