#!/usr/bin/env bash

(
	echo 'Average Latency (ms)|Server Address'
	# shellcheck disable=SC2196
	( while read -r l
	do
		echo "$(ping -i 0.2 -f -c 8 "$l" | tail -1 | cut -d/ -f 5)|$l" &
	done < <(curl -s 'http://speedtest-nyc1.digitalocean.com' | egrep -o '<a href="http://speedtest-[a-z]{3}[0-9].digitalocean.com">[A-Z]{3}[0-9]</a>' | cut -d'"' -f2 | cut -d/ -f3)
	wait ) | sort -n
) | column -s '|' -t
