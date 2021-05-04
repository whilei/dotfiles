#!/usr/bin/env bash

# echo "{\"jsonrpc\": \"2.0\", \"id\": 1, \"method\": \"trace_subscribe\", \"params\": [\"filter\", {\"fromBlock\": \"0x17BB1E\", \"toBlock\": \"0x17BB20\", \"fromAddress\": \"0x46135207ab66566297ba2070c21d3cc668d70b10\"}, {\"tracer\": \"callTracerParity\", \"reexec\":1000, \"timeout\": \"120s\"}]}" | ws -n1  "ws://127.0.1:8546"}]

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
