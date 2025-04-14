process_radtags -1 TS1_all.R1.fastq.gz -2 TS1_all.R2.fastq.gz -b TS1_barcode.txt --renz_1 ecoRI --renz_2 nlaIII  -o TS1 --len_limit 140 -t 135 --retain_header -c -r -q

ustacks -f FJ7.1.fq.gz -i 1 -o tushan -M 4 -m 3 -p 20 --name FJ7     

cstacks -n 4 -P ./ -M ../Tushan_catalogpopmap.txt -p 20 

sstacks -P ./ -M ../popmap.txt 

tsv2bam -P ./ -M ../popmap.txt -R tushan_data -t 20 

gstacks -P ./ -M ../popmap.txt -t 20 

populations -P ./ -M ../popmap.txt -p 6 -r 0.75 --min-maf 0.05 --max-obs-het 0.70 --write-random-snp --hwe --vcf --genepop --structure --phylip --fasta-samples-raw -t 20 
