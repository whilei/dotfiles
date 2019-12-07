#!/usr/bin/env bash

while read -r line; do

	echo

	for i in $(seq 1 ${#line}); do
		echo -n "${line:i-1:1}"
		sleep 0.0$((1 + RANDOM % 10))
	done

	sleep 0.$((1 + RANDOM % 3))

done < "${1:-/dev/stdin}"

echo

