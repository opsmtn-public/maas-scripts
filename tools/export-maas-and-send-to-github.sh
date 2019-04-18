#!/bin/bash
# export data from maas, push to github

# probably need a maas login command here

maas opsmtn nodes read > ~/bct-maas/data-exported-from-maas/maas-opsmtn-nodes-read.yaml
maas opsmtn node-scripts read type=testing > ~/bct-maas/data-exported-from-maas/maas-opsmtn-nodescripts-testing.yaml
maas opsmtn node-scripts read type=commissioning > ~/bct-maas/data-exported-from-maas/maas-opsmtn-nodescripts-commissioning.yaml
git add  ~/bct-maas/data-exported-from-maas
cd  ~/bct-maas/data-exported-from-maas
git commit -m "maas-export-script"
git push

