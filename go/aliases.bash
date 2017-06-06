#!/usr/bin/env bash

alias gotv="go test -v"
gotvf() {
	args="$*"
	echo "Testing: $args"

	out=$(go test -v "$args" )

	fails=$(grep ---\ FAIL: <<< "$out")
	passes=$(grep ---\ PASS: <<< "$out")
	failsN=$(wc -l <<< "$fails")
	passesN=$(wc -l <<< "$passes")

	echo "Fail: $failsN, Pass: $passesN"
	echo "$fails"

	unset args
	unset out
	unset fails
	unset passes
	unset failsN
	unset passesN
}
