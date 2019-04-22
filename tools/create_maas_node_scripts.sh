#!/bin/bash
# create maas node scripts using files in the repo


cd ~/maas-scripts/maas-node-scripts
for F in *; do
	echo maas admin node-script delete $F
	maas admin node-script delete $F
	echo maas admin node-scripts create script@=./$F
	maas admin node-scripts create script@=./$F
done
