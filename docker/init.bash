#!/usr/bin/env bash

docker-machine start default 2>/dev/null
eval `docker-machine env default`
eval $(docker-machine env)
