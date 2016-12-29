#!/usr/bin/env bash

# should yield markdowned img with source of the form
# rotblauer/pAINT/raw/master/ardis/tiles/big.png
# <owner> / <reponame> / raw / <branch> / <prefix/path> / $IMG
#
gitimg(){
	prefix_path=$(git rev-parse --show-prefix)
	# > ardis/tiles/

	# Gets basic git root dir. Fine if your local dir is same name as remote repo...
	# repo_name=$(basename $(git rev-parse --show-toplevel))
	#echo "$repo_name"

	# repo_name2=$(git remote show origin -n | grep h.URL | sed 's/.*://;s/.git$//')
	# > 3000/rotblauer/pAINT   <-- 3000 is problem
	# fix ....
	# repo_name2=$(git remote show origin -n | grep h.URL )
	# > Fetch URL: http://goggable.areteh.co:3000/rotblauer/pAINT.git
	repo_name2=$(git remote show origin -n | grep h.URL | sed 's/.*[:3000|:]//;s/.git$//')
	# > /rotblauer/pAINT

	branch_name=$(git rev-parse --abbrev-ref HEAD)
	# > master

	img_path="$repo_name2/raw/$branch_name/$prefix_path"
	# > /rotblauer/pAINT/raw/master/ardis/tiles/

	markdowned_img_path=""
	for img in "$@"
	do
		markdowned_img_path+='![]('"$img_path$img"') '
	done

	echo "$markdowned_img_path"
	# > ![](/rotblauer/pAINT/raw/master/ardis/tiles/tiles.png) ![](/rotblauer/pAINT/raw/master/ardis/tiles/tiles2.png)
}

