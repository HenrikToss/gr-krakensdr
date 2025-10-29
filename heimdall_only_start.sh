#!/bin/bash

#source /home/krakenrf/miniforge3/etc/profile.d/conda.sh <- required for systemd auto startup (comment out eval and use source instead)
eval "$(conda shell.bash hook)"
conda activate kraken

# Auto-check DAQ output mode
INI_FILE="heimdall_daq_fw/Firmware/daq_chain_config.ini"

if grep -q "out_data_iface_type *= *shmem" "$INI_FILE"; then
        bash use_eth.sh
fi

./heimdall_only_stop.sh
sleep 2

cd heimdall_daq_fw/Firmware
sudo env "PATH=$PATH" ./daq_start_sm.sh
