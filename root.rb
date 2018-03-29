version=2

rule=ignore,rootlog,deaf_phys_checking:%date:date-rfc3164% %host:word% root: deaf_phys: checking %interface:word% status...
rule=ignore,rootlog,deaf_phys_neighbour_report:%date:date-rfc3164% %host:word% root: deaf_phys: %interface:word% has %neighbours:number% neighbors.
