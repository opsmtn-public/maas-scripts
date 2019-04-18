# export maas node data to github
  


## Overview
Use the MAAS command-line tool to export node data, then push the exported data into github.  This will
keep a version history of the nodes in git and allow someone to use the commit history to see only the changes.

This may not be useful for long-term use but the version history is helping while the mass-node-scripts are being developed

## Prerequisites
* A github deploy key has been generated with access to the bct-maas repo
* Maas region controller and rack controller have been installed and are running on the same server.   We refer to this server as <jumpbox1>
* the bct-maas repo is checked-out onto jumpbox1.  We refer to this path as <bct-maas>
* You have login credentials to MAAS


## Procedure

### 1. export maas data and store in github (optional)
Run this script to export the node information from maas and store the datafiles into github
```
<bct-maas>/tools/export-maas-and-send-to-github.sh
```

