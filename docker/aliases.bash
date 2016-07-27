alias dm="docker-machine"
alias d="docker"
alias dc="docker-compose"

#alias dcr="docker-compose run"
#alias dcb="docker-compose build"
#alias dcu="docker-compose up"

edme() {
	"$(eval docker-machine env $1)"
}


