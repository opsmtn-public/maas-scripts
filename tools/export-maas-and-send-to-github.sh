#!/bin/bash
# export data from maas, push to github

# probably need a maas login command here

maas admin nodes read > ~/maas-scripts/data-exported-from-maas/maas-admin-nodes-read.yaml
maas admin node-scripts read type=testing > ~/maas-scripts/data-exported-from-maas/maas-admin-nodescripts-testing.yaml
maas admin node-scripts read type=commissioning > ~/maas-scripts/data-exported-from-maas/maas-admin-nodescripts-commissioning.yaml
git add  ~/maas-scripts/data-exported-from-maas
cd  ~/maas-scripts/data-exported-from-maas
git commit -m "maas-export-script"
git push

