#!/bin/bash

: ' get information about computer
disk cpu memory network
'
echo "Disk information ..."
df -k
echo -e "\nCPU information ..."
cat /proc/cpuinfo | grep process
echo -e "\nMemory information ..."
cat /proc/meminfo | grep Mem
echo -e "\nNetwork information ..."
ip addr
