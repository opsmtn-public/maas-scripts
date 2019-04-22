# Bootstrap a server

## Overview
This documentation is for maas 2.4.2.
Use MAAS (http://maas.io) to take control of a server and perform these steps:
* Update firmware.  This can include BIOS, idrac, hba, raid controllers or other hardware
* Collect a report of all attached hardware and firmware
* Configure server hardware components such as RAID grouping or NIC channel bonding

## Prerequisites
* Maas region controller and rack controller have been installed and are running on the same server.   We refer to this server as `jumpbox1`. <https://maas.io/install>
* the git repo is checked-out onto `jumpbox1`.  We refer to this path as <maas-scripts>
* You have access to reach <http://jumpbox1:5240>.  This can be direct access or via an ssh port forward.
* You have login credentials to MAAS
* Server to bootstrap is configured to boot via PXE via a connected NIC
* DHCP is forwarded from server's VLAN to `jumpbox1`'s network.

## Procedure

### 1. Commission Machine

#### Using the MAAS web GUI

* access the MAAS web gui at http://<jumpbox1>:5240
* select "machines"
* Find your server within the list with a Status of New.  You will need to network boot the server in order to have maas discover it.  Network booting is usually enabled in the factory settings.
* Select "take action"
* select "commission"
* check "update firmware"
* select any `Hardware tests` you want to apply to this server
* select "commission machine"

#### Using the CLI
* Make sure you are logged in: https://docs.maas.io/2.4/en/manage-cli#log-in-(required)
To commission all nodes in the 'New' state:
`maas admin machines accept-all`


### Maas will bootstrap the server(s)
* maas will use ipmi to boot the machine from the network.  
* maas will serve an "ephemeral OS" to the server.  
* the server will execute all tests and commissioning scripts within this ephemeral os.  
* maas will collect details of the bootstrap process 
* This may require multiple reboots to run all scripts and update firmwares

### 3. Deploy Machine (optional)
The next step that can be done is to Deploy an Operating System to the machine.
https://docs.maas.io/2.4/en/nodes-deploy


## Scripts

### 1, Metadata
* https://docs.maas.io/2.4/en/nodes-scripts
It's yaml, with a leading hashtag and a space...
```
#!/bin/bash -ex
# --- Start MAAS 1.0 script metadata ---
# title: Dell Firmware update BIOS_T9YX9_LN_2.9.1.BIN
# description: Apply a Dell DUP firmware update
# name: 50_dell_BIOS_T9YX9_LN_2.9.1.BIN
# timeout: 300
# script_type: commissioning
# packages:
#   url: https://downloads.dell.com/FOLDER05355228M/1/BIOS_T9YX9_LN_2.9.1.BIN
# for_hardware: system_product:PowerEdge R730xd (SKU=NotProvided;ModelName=PowerEdge R730xd)
# tags: update_firmware
# may_reboot: True
# --- End MAAS 1.0 script metadata ---
sh $DOWNLOAD_PATH/BIOS_T9YX9_LN_2.9.1.BIN -qf
reboot
``` 
