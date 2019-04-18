#!/bin/bash
# update all the scripts with the ones in the repo

cd ~/maas-scripts/maas-node-scripts
for F in *; do
   echo maas opsmtn node-script update $F script@=$F
   maas opsmtn node-script update $F script@=$F 
done
