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
sh $DOWNLOAD_PATH/BIOS_T9YX9_LN_2.9.1.BIN -qf || echo the firmware update exited with a non-zero code
reboot
