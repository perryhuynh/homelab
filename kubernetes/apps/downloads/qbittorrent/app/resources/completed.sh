#!/bin/bash
# qBittorrent settings > 'Run external program on torrent finished'
# /scripts/completed.sh "%F"
/bin/chmod -R 750 "$1"
printf "Searching cross-seed for '%s'\n" "$1"
/usr/bin/curl \
    --connect-timeout 5 \
    --max-time 10 \
    --request POST \
    --retry 5 \
    --retry-delay 0 \
    --retry-max-time 40 \
    --silent \
    --data-urlencode "path=$1" http://cross-seed.downloads.svc.cluster.local/api/webhook
exit 0
