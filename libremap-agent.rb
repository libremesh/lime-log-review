version=2

rule=ignore,libremap-agent:%date:date-rfc3164% %host:word% libremap-agent[%pid:char-to:]%]: success: submitted to %url:word%
rule=libremap-agent,submission_failed:%date:date-rfc3164% %host:word% libremap-agent[%pid:char-to:]%]: submission to %url:word% failed
rule=libremap-agent,could_not_determin_if_id_available:%date:date-rfc3164% %host:word% libremap-agent[%pid:char-to:]%]: could not determine if id %id:word% is already available under API at %irl:word% (code %code_id:char-to:)%)
