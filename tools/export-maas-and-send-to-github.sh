#!/bin/bash
# export data from maas, push to github

# probably need a maas login command here

maas opsmtn nodes read > ~/maas-scripts/data-exported-from-maas/maas-opsmtn-nodes-read.yaml
maas opsmtn node-scripts read type=testing > ~/maas-scripts/data-exported-from-maas/maas-opsmtn-nodescripts-testing.yaml
maas opsmtn node-scripts read type=commissioning > ~/maas-scripts/data-exported-from-maas/maas-opsmtn-nodescripts-commissioning.yaml
git add  ~/maas-scripts/data-exported-from-maas
cd  ~/maas-scripts/data-exported-from-maas
git commit -m "maas-export-script"
git push

