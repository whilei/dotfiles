#!/usr/bin/env bash

alias gotv="go test -v"
gotvf() {
	args="$*"
	echo "Testing: $args"

	out=$(go test -v "$args" )

	fails=$(grep "\-\-\-\ FAIL" <<< "$out" | grep -v -e '^[[:space:]]*$')
	passes=$(grep "\-\-\-\ PASS" <<< "$out" | grep -v -e '^[[:space:]]*$')
	failsN=$(wc -l <<< "$fails")
	passesN=$(wc -l <<< "$passes")

	echo "Fail: $failsN, Pass: $passesN"
	if [[ "$failsN" -gt 0 ]]; then
		echo "$fails"
	fi

	unset args
	unset out
	unset fails
	unset passes
	unset failsN
	unset passesN
}
alias gotestcases="sed -n 's/func.*\(Test.*\)(.*/\1/p' | xargs | sed 's/ /|/g'"
