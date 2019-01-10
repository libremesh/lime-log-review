version=2

rule=ignore,dnsmasq-dhcp,read           :%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: read /etc/ethers - %addresses_read:number% addresses
rule=ignore,dnsmasq-dhcp,read           :%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: read /tmp/dhcp.hosts_remote
rule=ignore,dnsmasq-dhcp,RTRSOLICIT     :%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: RTR-SOLICIT(anygw) %ip:rest%
rule=ignore,dnsmasq-dhcp,RTRSOLICIT     :%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: RTR-SOLICIT(anygw)%ip:rest%
rule=ignore,dnsmasq-dhcp,RTRADVERT      :%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: RTR-ADVERT(anygw) %ip:rest%
rule=dnsmasq-dhcp,name-overlap          :%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: not giving name %requesting_host:word% to the DHCP lease of %ip_requested:word% because the name exists in %hostfile:word% with address %ip_registered:rest%
rule=ignore,dnsmasq-dhcp,previous_ip_nak:%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: DHCPNAK(%iface:char-to:)%) %req_ip:word% %req_mac:word% wrong network
rule=ignore,dnsmasq-dhcp,previous_ip_nak:%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: DHCPNAK(%iface:char-to:)%) %req_ip:word% %req_mac:word% wrong address
rule=dnsmasq-dhcp,requesting_reserved_ip:%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: DHCPNAK(%iface:char-to:)%) %req_ip:word% %req_mac:word% address reserved
rule=dnsmasq-dhcp,ipv6_confirmed        :%date:date-rfc3164% %host:word% %process:char-to:[%[%pid:char-to:]%]: SLAAC-CONFIRM(%iface:char-to:)%) %ipv6:word% %requesting_host:rest%

# TODO parse the faulty RTR-SOLICIT lines: rule=ignore,dnsmasq-dhcp,RTRSOLICIT:%date:date-rfc3164% %host:word% dnsmasq-dhcp\[%pid:char-sep{"extradata":"]"}%: RTR-SOLICIT(anygw)
