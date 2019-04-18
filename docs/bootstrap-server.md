# Bootstrap a server



## Overview
Use MAAS (http://maas.io) to take control of a server and perform these steps:
* Update firmware.  This can include BIOS, idrac, hba, raid controllers or other hardware
* Collect a report of all attached hardware and firmware
* Configure server hardware components such as RAID grouping or NIC channel bonding

## Prerequisites
* A github deploy key has been generated with access to the bct-maas repo
* Maas region controller and rack controller have been installed and are running on the same server.   We refer to this server as <jumpbox1>
* the bct-maas repo is checked-out onto jumpbox1.  We refer to this path as <bct-maas>
* You have access to reach http://<jumpbox1>:5240.  This can be direct access or via an ssh port forward.
* You have login credentials to MAAS


## Procedure


### 1. Use the MAAS web GUI to commission machine(s) 

* access the MAAS web gui at http://<jumpbox1>:5240
* select "machines"
* Find your server within the list.  You may need to network boot the server in order to have maas discover it.  Network booting is usually enabled in the factory settings.
* Select "take action"
* select "commission"
* check "update firmware"
* select any additional commissioning scripts you want to apply to this server
* select "commission machine"


### 2. Maas will bootstrap the server(s)
* maas will use ipmi to boot the machine from the network.  
* maas will serve an "ephemeral OS" to the server.  
* the server will execute all tests and commissioning scripts within this ephemeral os.  
* maas will apply an OS image to the server.  This is the image the client will receive
* maas will collect details of the bootstrap process 

