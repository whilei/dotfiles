#!/bin/bash

# Use:
#   $ find_git_configs examples-dir echo
#   $ find_git_configs examples-dir cat
# 	$ find_git_configs examples-dir "sed -i.bak s/:3000//g"
# 	$ find_git_configs examples-dir "sed -i.bak s/oldusername/newusername/g"

find_git_configs() {
	find $1 -path "*/.git/config" -exec $2 {} \;
}
# -->
# /Users/ia/dev/_rabbitxo/frogMob/.git/config
# /Users/ia/dev/_rabbitxo/frogMob-app-backup/.git/config
# /Users/ia/dev/_rabbitxo/frogxo/.git/config
# /Users/ia/dev/_rabbitxo/hot sec/.git/config
# /Users/ia/dev/_rstacks/beta-llc/.git/config
# /Users/ia/dev/acronymus/.git/config
# /Users/ia/dev/anagramatizer/.git/config
# /Users/ia/dev/areteh/.git/config
# /Users/ia/dev/betta/.git/config
# /Users/ia/dev/betta/scratch/angular-arrow/.git/config
# /Users/ia/dev/CodeforBoston/bikeways4everybody/.git/config
# /Users/ia/dev/CodeforBoston/bypath/.git/config
# ...

# don't work
#git2whilei() {
#	exec find $1 -path "*/.git/config" -exec "sed -i.bak s/irstacks/whilei/g" {} \;
#}
