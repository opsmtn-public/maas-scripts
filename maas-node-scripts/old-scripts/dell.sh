#!/bin/bash -ex
# --- Start MAAS 1.0 script metadata ---
# name: dell.sh
# title: Firmware update for the Dell PowerEdge R730xd bios
# description: Firmware update for the Dell PowerEdge R730xd bios
# script_type: commissioning
# tags: update_firmware
# may_reboot: True
# --- End MAAS 1.0 script metadata ---

wget -O FIRMWARE.BIN https://downloads.dell.com/FOLDER05355228M/1/BIOS_T9YX9_LN_2.9.1.BIN
sudo bash FIRMWARE.BIN -qf

exit 0
