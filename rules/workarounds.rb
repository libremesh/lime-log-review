version=2

rule=ignore,rootlog,regular_scan:%date:date-rfc3164% %host:word% workarounds: regular scan on %dev:word%
rule=ignore,rootlog,regular_scan:%date:date-rfc3164% %host:word% workarounds: OK. dnsmasq is alive
rule=ignore,rootlog,internet_check.:%date:date-rfc3164% %host:word% workarounds: OK. gateway reachable and Internet too
rule=ignore,rootlog,deaf_phys_neighbour_report:%date:date-rfc3164% %host:word% root: deaf_phys: %interface:word% has %neighbours:number% neighbors.
rule=rootlog,regular_ping:%date:date-rfc3164% %host:word% workarounds: ping frecuente a %host:word% %status:word%
rule=rootlog,regular_ping:%date:date-rfc3164% %host:word% workarounds: *ping frecuente* a %host:word% %status:char-to:.%. Recreando tuneles bmx6
rule=rootlog,regular_ping_3hs:%date:date-rfc3164% %host:word% workarounds: ping c/3hs a %host:word% OK
rule=ignore,rootlog,dns_check_no_internet_skip:%date:date-rfc3164% %host:word% workarounds: skipping dnsmasq check because Internet is unreachable
