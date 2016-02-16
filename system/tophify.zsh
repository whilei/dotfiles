#!/bin/bash
# https://github.com/tophtucker
# Set your homepage to localhost:8000.
if ! [ $(nc -z localhost 8000) ]; then 
	pushd /Users/ia/dev/tophtweets-master; python -m SimpleHTTPServer &>/dev/null; popd
fi
