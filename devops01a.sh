#!/bin/bash
# get information about computer
df -k
cat /proc/cpuinfo | grep process
cat /proc/meminfo | grep Mem
ip addr
