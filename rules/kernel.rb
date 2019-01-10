version=2

rule=kernel,ath_fail_kill_baseband:%date:date-rfc3164% %host:word% kernel: %-:char-to::%: %interface:char-to::%: Could not kill baseband RX
rule=kernel,ip6_routing_loop:%date:date-rfc3164% %host:word% kernel: [%-:char-to:]%] ip6_tunnel: %tunnel_name:char-to::%: Local routing loop detected!
rule=kernel,ip6_routing_local_address_not_yet_configured:%date:date-rfc3164% %host:word% kernel: [%-:char-to:]%] ip6_tunnel: %tunnel_name:word% xmit: Local address not yet configured!
rule=ignore,kernel,begin_kernel_error:%date:date-rfc3164% %host:word% kernel: [%-:char-to:]%] ------------[ cut here ]------------
rule=kernel,kernel_warning:%date:date-rfc3164% %host:word% kernel: [%-:char-to:]%] WARNING: %message:rest%
rule=ignore,kernel,kernel_warning:%date:date-rfc3164% %host:word% kernel: [%-:char-to:]%] net_ratelimit: %-:rest%
rule=ignore,kernel,kernel_warning:%date:date-rfc3164% %host:word% kernel: [%-:char-to:]%] Rate marked as an HT rate but passed status->rate_idx is not an MCS index [0-76]: %params:rest%



