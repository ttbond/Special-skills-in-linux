#split strings in awk
awk '{split($1,sp,"r");print sp[2]}' dsb.bed

#extract bed.file from vcf file ( only if the vcf file is regulated)
awk '{split($1,sp1,"r");printf("%s\t%s\t",sp1[2],$2);split($8,sp1,";");split(sp1[2],sp2,"=");printf("%s\n",sp2[2]);}' tandemDUP.vcf >tandemDUP.bed
