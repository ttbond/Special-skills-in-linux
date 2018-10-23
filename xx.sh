#split strings in awk
awk '{split($1,sp,"r");print sp[2]}' dsb.bed
