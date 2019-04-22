### templating
https://docs.maas.io/2.4/en/nodes-custom

### api
https://docs.maas.io/2.4/en/api-authentication

curl -XPOST 'localhost:5240/MAAS/api/2.0/machines/xgd8at/?op=commission&commissioning_scripts=update_firmware'

### cli
https://docs.maas.io/2.4/en/nodes-scripts-cli
To commission all nodes in the 'New' state:
`maas admin machines accept-all`

