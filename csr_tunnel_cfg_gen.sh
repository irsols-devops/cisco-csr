#!/bin/bash
if [ -z "$1" ]
  then
    echo
    echo " No configuration option specified. "
    echo "Usage:csr_tunnel_cfg_gen.sh <Pre_Share_Key> <Tunnel_Destination_IP> "
    echo "Example : csr_tunnel_cfg_gen.sh \"Cisco1234\" \"104.45.154.184\" "
    echo
    echo " Please re-launch with correct options"
    exit
fi

echo " Here's the CSR1000v config that you need to copy and paste into your Azure Router"
echo
echo
echo crypto isakmp policy 1
echo  encr aes
echo  hash sha256
echo  authentication pre-share
echo  group 14
echo crypto isakmp key $1 address 0.0.0.0
echo crypto ipsec transform-set T1 esp-3des esp-md5-hmac
echo  mode transport
echo crypto ipsec profile P1
echo  set transform-set T1
echo interface Tunnel0
echo  ip address 3.3.3.1 255.255.255.0
echo  tunnel source GigabitEthernet1
echo  tunnel mode ipsec ipv4
echo  tunnel destination $2
echo  tunnel protection ipsec profile P1
echo end

