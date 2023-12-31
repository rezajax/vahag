#!/bin/bash

echo "Stop All tethering..."
adb -s 4c4855534f313498 shell svc usb setFunctions usb
adb -s R5CTB1TMKMM shell svc usb setFunctions usb
sleep 5

adb -s R5CTB1TMKMM shell svc usb setFunctions rndis
echo "Activeing usb0..."
sleep 5
phone_interface=$(ip link show | grep -o -E 'usb0')
if [ -n "$phone_interface" ]; then
    wan0=$(curl --interface usb0 icanhazip.com)
    echo "Phone is tethered via USB on interface $phone_interface , wanIp: $wan0"
else
    echo "Phone is not tethered or not recognized"
fi

adb -s 4c4855534f313498 shell svc usb setFunctions rndis
echo "Activing usb1..."
sleep 5
phone_interface=$(ip link show | grep -o -E 'usb1')
if [ -n "$phone_interface" ]; then
    wan1=$(curl --interface usb1 icanhazip.com)
    echo "Phone is tethered via USB on interface $phone_interface wanIp: $wan1"
else
    echo "Phone is not tethered or not recognized"
fi

echo "disable all wg"
wg-quick down wg0
sleep 2
wg-quick dwon wg1
sleep 2

echo "enable wg0"
wg-quick up wg0
sleep 2
echo "enable wg1"
wg-quick up wg1