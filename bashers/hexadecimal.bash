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
