#!/usr/bin/env bash
# http://hints.macworld.com/article.php?story=20030307112511721

# The following is a bash shell script, that I've named 'disk', that when run, and passed a volume name, will attempt to mount that volume if unmounted, and will unmount the volume if presently mounted. It's a convenience wrapper for MacOS X's 'diskutil' utility.

# disk(){
    # if [ -z $1 ] ; then
    #     echo "usage : disk <diskname>"
    #     echo "Mounts <diskname> if it's not mounted, and"
    #     echo "unmounts it if it is already mounted."
    #     exit 1
    # fi
    # local NAME=$1
    # local PART=`diskutil list|grep $NAME|awk '{print $6}'`
    #
    # if [ -z `ls -1 /Volumes/ | grep $NAME` ] ; then
    #     # check that PART appears to be a disk partition
    #     echo Checking $NAME $PART
    #     if [ `file /dev/$PART | awk '{print $2}'` = "block" ] ; then
    #   echo Mounting $NAME $PART
    #      diskutil mount /dev/$PART
    #     else
    #        echo /dev/$PART does not appear to be a disk partition - exiting
    #   exit 1
    #     fi
    # else
    #     echo unmounting $NAME
    #     diskutil unmount /Volumes/$NAME
    # fi
# }

eject() {
    if [[ $1 == "/Volumes"* ]]; then
        diskutil unmount $1
    else
        diskutil unmount /Volumes/$1
    fi
}
