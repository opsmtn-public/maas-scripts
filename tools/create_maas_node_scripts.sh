#!/bin/bash
# create maas node scripts using files in the repo


cd ~/bct-maas/maas-node-scripts
for F in *; do
	echo maas opsmtn node-scripts create script@=./$F
	maas opsmtn node-scripts create script@=./$F
done
