# Open up a terminal and type:

# $ cd /home/somedir
# $ python -m SimpleHTTPServer
# That's it! Now your http server will start in port 8000. You will get the message:

# Serving HTTP on 0.0.0.0 port 8000 ...
# Now open a browser and type the following address:

# http://192.168.1.2:8000
# You can also access it via:

# http://127.0.0.1:8000
# If the directory has a file named index.html, that file will be served as the initial file. If there is no index.html, then the files in the directory will be listed.

# If you wish to change the port that's used start the program via:

# $ python -m SimpleHTTPServer 8080

#!/bin/bash

# Python 2.x ->
pyserv(){
	if [[ $# -eq 0 ]]; then
		echo "Use: pyserv [req:8000] [opt:path]"
	else
		python -m SimpleHTTPServer $1
	fi
}

# Python 3.x ->
# $ python -m http.server 8000
