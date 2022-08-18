#!/bin/bash

date
echo

echo "SYSTEM INFO"
echo "[+] Host: $(uname -n)"
echo "[+] IP: $(hostname -I)"
echo "[+] MAC: $(ifconfig | grep ether | awk '{ print $2 }' ORS=', ')"
echo

echo "HARDWARE INFO"
echo "[+] Model: $(grep Model /proc/cpuinfo | cut -d ':' -f 2 | awk '{$1=$1};1')"
echo "[+] Storage: $(df / -h --output=size | grep G)B"
echo "[+] RAM: $(grep MemTotal /proc/meminfo | grep -o '[0-9]*') kB"
echo

echo "SOFTWARE INFO"
echo "[+] Kernel: $(uname -s)"
echo "[+] Release: $(uname -r)"
echo "[+] Version: $(uname -v)"
echo "[+] Machine: $(uname -m)"
echo "[+] OS: $(uname -o)"
