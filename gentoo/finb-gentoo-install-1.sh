#!/bin/bash

# to locate finb path
echo
FINB_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
echo -e "[\e[32mInfo\e[0m] Located the finb path (FINB_PATH=${FINB_PATH})."

# to get current script name
echo
FINB_CURRENT_SCRIPT=`basename "$0"`
echo -e "[\e[32mInfo\e[0m] Gotten the current script name (FINB_CURRENT_SCRIPT=${FINB_CURRENT_SCRIPT})."

# to load finb core
echo
source ${FINB_PATH}/core/finb.loadcore

# to load script configuration
echo
source ${0%/*}/conf/*
finb.msg info "Loaded the script configuration."

# to check variables

# print scripthead
finb.scripthead ${FINB_CURRENT_SCRIPT}
sleep 3

# remind to edit configuration
finb.msg.conf
sleep 3
echo

# wait 5 seconds for regret
finb.msg.regret
echo

