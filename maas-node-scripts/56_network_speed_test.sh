#!/bin/bash

# --- Start MAAS 1.0 script metadata ---
# title: Network Speed Test 
# description: 100M download
# name: 56_network_speed_test.sh
# timeout: 300
# script_type: commissioning
# --- End MAAS 1.0 script metadata ---

echo "scale=2; `curl  --progress-bar -w "%{speed_download}" http://speedtest.wdc01.softlayer.com/downloads/test10.zip -o /dev/null` / 131072" | bc | xargs -I {} echo {} mbps
