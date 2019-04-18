# update mass scripts



## Overview
Update the maas node scripts.  These are scripts stored inside maas and served to nodes during the commissioning or testing steps.

## Prerequisites
* A github deploy key has been generated with access to the bct-maas repo
* Maas region controller and rack controller have been installed and are running on the same server.   We refer to this server as <jumpbox1>
* the bct-maas repo is checked-out onto jumpbox1.  We refer to this path as <bct-maas>
* You have access to reach http://<jumpbox1>:5240.  This can be direct access or via an ssh port forward.
* You have login credentials to MAAS


## Procedure

### 1. Add maas scripts to the repo (optional)

You may create a new script within the maas-node-scripts folder of this repo to perform any bootstrapping tasks not already scripted.  See other scripts within this folder for examples or refer to the maas documentation at https://docs.maas.io/2.5/en/nodes-scripts.  

### 2. sync the repo to jumpbox1
```
cd <bct-maas>
git pull
```

### 3. Update the maas server with the scripts contained in the repo
```
<bct-maas>/tools/create_maas_node_scripts.sh
<bct-maas>/tools/update_maas_node_scripts.sh
```
The create script will fail to create any existing scripts and you may see errors.  These can be ignored.


### 4. Verify the scripts are stored within maas

access the MAAS web gui at http://<jumpbox1>:5240
select "settings"
select "user scripts"
select a script to inspect
verify the most recent changes are in the script
```

