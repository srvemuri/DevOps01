#!/bin/bash

: ' get information about computer
disk cpu memory network
'
for arg in "$@"
do
   case $arg in
      -volumes)
         echo "Disk information ..."
         df -k;;
      -cpu)
         echo -e "\nCPU information ..."
         cat /proc/cpuinfo | grep process;;
      -ram)
         echo -e "\nMemory information ..."
         cat /proc/meminfo | grep Mem;;
      -network) 
         echo -e "\nNetwork information ..."
         ip addr;;
      -all)
         echo "Disk information ..."
         df -k
         echo -e "\nCPU information ..."
         cat /proc/cpuinfo | grep process
         echo -e "\nMemory information ..."
         cat /proc/meminfo | grep Mem
         echo -e "\nNetwork information ..."
         ip addr;;
      *)
         echo "$arg: Inalid option";;
   esac
done
