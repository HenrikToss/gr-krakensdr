#!/bin/bash
sed -i 's/^out_data_iface_type *= *eth/out_data_iface_type = shmem/' heimdall_daq_fw/Firmware/daq_chain_config.ini
echo "Switched to shared memory mode (for KrakenDoA web app)."
