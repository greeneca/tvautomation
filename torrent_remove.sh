#! /bin/bash

LIST=`transmission-remote -n "greenot:a new grey hen" --list | grep "100%" | awk '{print $1}'`

for ID in $LIST
do
    NAME=`transmission-remote -n "greenot:a new grey hen" --torrent 652 --info | grep Name | awk '{print $2}'`
    echo "[`date`] Removing $NAME from transmission" >> /home/greenot/logs/torrent.log
    transmission-remote -n "greenot:a new grey hen" --torrent $ID --remove
done

