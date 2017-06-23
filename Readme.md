Cisco's Cloud Services Router aka <a href="http://www.cisco.com/c/en/us/td/docs/routers/csr1000/software/azu/b_csr1000config-azure/b_csr1000config-azure_chapter_01.html"> CSR1000v </a> is a nice virtualized Cisco router that 
we can use to secure and route traffic between multiple <a href="http://portal.azure.com"> Azure regions </a> or <a href="http://aws.amazon.com"> AWS VPC's </a>  . Here's a handy little tool for folks not so familiar with Cisco 
networking and router syntax to create a config that will help you deploy the Cisco CSR1000v in Microsoft Azure public cloud . 


Quick Start: 

```
# ./csr_tunnel_cfg_gen.sh 

 No configuration option specified. 
Usage:csr_tunnel_cfg_gen.sh <Pre_Share_Key> <Tunnel_Destination_IP> 
Example : csr_tunnel_cfg_gen.sh "Ir50ls" "124.45.15.154" 
```
Then simply provide the script with your pre-shared key and the other end's IP address . 

```
# ./csr_tunnel_cfg_gen.sh "Ir50ls" "124.45.15.154" 

```

Repeat the above steps with CSR's IP address in Azure for the other end of the tunnel . 
