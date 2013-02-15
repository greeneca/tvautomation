#!/bin/bash

for file in /home/greenot/Dropbox/Torrents/*.torrent
do
    if [ "$file" != "/home/greenot/Dropbox/Torrents/*.torrent" ]; then
        echo "[`date`] Adding $file to transmission" >> /home/greenot/logs/torrent.log
        /usr/bin/transmission-remote -n 'greenot:ind5NKSfSXtA' -a "$file" && rm "$file"
        sleep 1
    fi
done
