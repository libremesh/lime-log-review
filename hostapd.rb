version=2

rule=hostapd,authenticated:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: STA %sta_mac:word% IEEE 802.11: authenticated
rule=hostapd,associated:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: STA %sta_mac:word% IEEE 802.11: associated (aid %aid_stage:number%)
rule=hostapd,disassociated:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: STA %sta_mac:word% IEEE 802.11: disassociated
#TODO check how to give priority to this rule
#rule=ignore,hostapd,AP-STA-POLL:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: AP-STA-POLL %sta_mac:word%
rule=hostapd,AP-STA:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: AP-STA-%state:word% %sta_mac:word%
rule=ignore,hostapd,no_ack_auth_response:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: STA %sta_mac:word% IEEE 802.11: did not acknowledge authentication response
rule=ignore,hostapd,disconnect_missing_acks:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: STA %sta_mac:word% IEEE 802.11: disconnected due to excessive missing ACKs
rule=ignore,hostapd,deauth_inactivity:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: STA %sta_mac:word% IEEE 802.11: deauthenticated due to inactivity (timer DEAUTH/REMOVE)
rule=ignore,hostapd,disassociated_inactivity:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: STA %sta_mac:word% IEEE 802.11: disassociated due to inactivity
rule=hostapd,disassociated_inactivity:%date:date-rfc3164% %host:word% hostapd: %interface:char-to::%: STA %sta_mac:word% IEEE 802.11: Could not set STA to kernel driver
