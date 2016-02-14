#!/bin/bash
# https://github.com/tophtucker
if ! [ $(nc -z localhost 8000) ]; then 
	pushd /Users/ia/dev/tophtweets-master; python -m SimpleHTTPServer; popd
fi
