#!/usr/bin/env bash

etx() {
	curl https://etcchain.com/api/v1/getIndex | json
}

bank() {
	if [[ "$1" == "etc" ]]; then
		curl https://etcchain.com/api/v1/getAddressBalance?address="$(cat ~/Desktop/etc_address)" | json
	fi
	if [[ "$1" == "kraken" ]]; then
		curl https://etcchain.com/api/v1/getAddressBalance?address="$(cat ~/Desktop/eth_address_kraken)" | json
	fi
}
