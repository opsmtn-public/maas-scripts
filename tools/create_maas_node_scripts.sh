#!/bin/bash
# create maas node scripts using files in the repo


cd ~/maas-scripts/maas-node-scripts
for F in *; do
	echo maas opsmtn node-script delete script@=./$F
	maas opsmtn node-script delete script@=./$F
	echo maas opsmtn node-scripts create script@=./$F
	maas opsmtn node-scripts create script@=./$F
done
