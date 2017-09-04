#!/usr/env/bin bash

fromhex(){
	if [[ $1 == 0x* ]]; then
		echo $(($1))
	else
		local withpre=0x$1
		echo $(($withpre))
	fi
}

tohex(){
	printf '0x%x\n' $1
}

weitoeth(){
	local wei=$1
	local etherwei=1000000000000000000
	# allows piping
	if [[ $wei == "" ]]; then
		while read data; do
			awk "BEGIN {print $data/$etherwei}"
		done
	else
		awk "BEGIN {print $wei/$etherwei}"
	fi
}

ethtowei(){
	local eth=$1
	local etherwei=1000000000000000000
	# allows piping
	if [[ $eth == "" ]]; then
		while read data; do
			awk "BEGIN {print $data*$etherwei}"
		done
	else
		awk "BEGIN {print $eth*$etherwei}"
	fi
}

