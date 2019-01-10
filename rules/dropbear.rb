version=2

rule=ignore,dropbear,incomming_connection:%date:date-rfc3164% %host:word% dropbear[%pid:number%]: Child connection from %source:word%
rule=ignore,dropbear,exit_before_auth:%date:date-rfc3164% %host:word% dropbear[%pid:number%]: Exit before auth:%reason:rest%
rule=ignore,dropbear,exit_before_auth:%date:date-rfc3164% %host:word% dropbear[%pid:number%]: Exit before auth %reason:rest%
rule=ignore,dropbear,nonexistent_user_attempt:%date:date-rfc3164% %host:word% dropbear[%pid:number%]: Login attempt for nonexistent user from %source:word%
rule=ignore,dropbear,invalid_shell_ftp:%date:date-rfc3164% %host:word% dropbear[%pid:number%]: User 'ftp' has invalid shell, rejected
