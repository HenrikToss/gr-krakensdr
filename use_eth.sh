#!/bin/bash
sed -i 's/^out_data_iface_type *= *shmem/out_data_iface_type = eth/' heimdall_daq_fw/Firmware/daq_chain_config.ini
echo "Switched to Ethernet mode (for GNU Radio)."
