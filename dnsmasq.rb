version=2

rule=ignore,dnsmasq,read:%date:date-rfc3164% %host:word% dnsmasq[%pid:number%]: read %parsed_file:word% - %addresses_read:number% addresses
rule=dnsmasq,duplicate_host_definition:%date:date-rfc3164% %host:word% dnsmasq[%pid:number%]: duplicate dhcp-host IP address read %ipaddress:ipv4% at line %hosts_line:number% of %hosts_file:word%
rule=dnsmasq,duplicate_host_definition:%date:date-rfc3164% %host:word% dnsmasq[%pid:number%]: duplicate dhcp-host IP address %ipaddress:ipv4% at line %hosts_line:number% of %hosts_file:word%
rule=dnsmasq,out_of_memory:%date:date-rfc3164% %host:word% dnsmasq[%pid:number%]: interface %interface:word% failed to join DHCPv6 multicast group: Out of memory
rule=dnsmasq,query_nonlocal:%date:date-rfc3164% %host:word% dnsmasq[%pid:number%]: Ignoring query from non-local network
rule=ignore,dnsmasq:%date:date-rfc3164% %host:word% dnsmasq[%pid:number%]: try increasing /proc/sys/net/core/optmem_max
rule=dnsmasq,possible_rebind_attack:%date:date-rfc3164% %host:word% dnsmasq[%pid:number%]: possible DNS-rebind attack detected: %target_domain:rest%
rule=dnsmasq,dnsmasq_killed:%date:date-rfc3164% %host:word% dnsmasq[%pid:number%]: script process killed by signal %signal_no:number%
