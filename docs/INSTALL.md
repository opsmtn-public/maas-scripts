# Install MAAS

## Prerequisites

* fresh ubuntu 18.04 installation with primary network interface on the vlan you wish to server DHCP traffic from

## Install MAAS packages
* `apt install maas && maas init`

* When prompted create an admin account
```
Create first admin account:
Username: admin
Password: 
Again: 
Email: admin@opsmtn.com
Import SSH keys [] (lp:user-id or gh:user-id): 
```

## Login and perform initial setup
* Login to maas at port 5240 with credentials created above
** Update `Region Name` as necessary
** Enter dns servers for maas to use, for example google's public `8.8.8.8 and 8.8.4.4`
** Click Continue at the bottom
** Upload a pbulic key for maas to use: https://docs.maas.io/2.1/en/manage-account#ssh-keys
** Click `Go to dashboard` at the bottom

At this point maas is up and running as both a Region and Rack controller, but is not serving DHCP.

* Create Additional subnets (if nec)

* Enable DHCP
** Click on Subnets
** Click on VLAN `untagged`
** Click on Take Action -> Enable DHCP

## Further Reading
Dell whitepaper: <https://linux.dell.com/files/whitepapers/Deploying_Workloads_With_Juju_And_MAAS-14.04LTS-Edition.pdf>
