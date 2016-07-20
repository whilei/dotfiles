dockdea() {
	echo "$(docker-machine env cambridge-energy-app);"
}
opencea() {
	open "http://$(docker-machine ip cambridge-energy-app):3001;"
}
