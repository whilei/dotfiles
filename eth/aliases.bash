#!/usr/bin/env bash

gethcjs(){
  case "$1" in
  status)
    echo 'console.log(admin.nodeInfo.name); console.log(admin.nodeInfo.enode); console.log(admin.peers.length); admin.peers.map(function(p) { console.log("-", p.name); return; }); eth.syncing; eth.blockNumber;'
    ;;
  *) echo "Invalid option"
    ;;
  esac
}
export -f gethcjs

cerpc(){
  method="$1"
  shift;
  echo "curl -X POST --data '{"jsonrpc":"2.0","method":\"$method\","params":[$@],"id":71}'"
  echo "echo '{"jsonrpc":"2.0","method":\"$method\","params":[$@],"id":71}' | nc -U -W1"
}
export -f cerpc
