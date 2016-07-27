cjpost() {
	# TODO: argue json as key1:value key2:value ...
	curl -H "Content-Type: application/json" -X POST -d $1 $2 -v
}

cjput() {
	# TODO: argue json as key1:value key2:value ...
	curl -H "Content-Type: application/json" -X PUT -d $1 $2 -v
}

cjget() {
	curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X GET $1 -v
}

cjdelete() {
	curl -i -H "Accept: application/json" -X DELETE $2 -v
}
