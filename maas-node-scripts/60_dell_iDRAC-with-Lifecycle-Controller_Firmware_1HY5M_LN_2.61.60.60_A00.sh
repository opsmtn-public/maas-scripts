#!/bin/bash -ex
# --- Start MAAS 1.0 script metadata ---
# title: Dell LifeCycle Firmware update iDRAC-with-Lifecycle-Controller_Firmware_1HY5M_LN_2.61.60.60_A00.
# description: Apply Dell Lifecycle firmware update
# name: 60_dell_iDRAC-with-Lifecycle-Controller_Firmware_1HY5M_LN_2.61.60.60_A00.sh
# timeout: 300
# script_type: commissioning
# packages:
#   url: https://downloads.dell.com/FOLDER05296857M/1/iDRAC-with-Lifecycle-Controller_Firmware_1HY5M_LN_2.61.60.60_A00.BIN
# for_hardware: system_product:PowerEdge R730xd (SKU=NotProvided;ModelName=PowerEdge R730xd)
# tags: update_firmware
# may_reboot: True
# --- End MAAS 1.0 script metadata ---

# This image is failing, it appears to have dependencies on CentOS
echo "Skipping"
#sh $DOWNLOAD_PATH/iDRAC-with-Lifecycle-Controller_Firmware_1HY5M_LN_2.61.60.60_A00.BIN -qf || echo the firmware update exited with a non-zero code
#if [ $? -eq 0 ]
#  then
#    reboot
#fi
