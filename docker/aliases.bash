#!/usr/bin/env bash

alias docker_clean_images='sudo docker rmi $(sudo docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='sudo docker rm $(sudo docker ps --filter=status=exited --filter=status=created -q)'

docker_clean_cache(){
	sudo docker kill $(sudo docker ps -q)
	sudo docker rm $(sudo docker ps --filter=status=exited --filter=status=created -q)
	sudo docker rmi -f $(sudo docker images -a -q)
}
