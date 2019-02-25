#! /bin/bash

DATASETS="
gnutella
slashdot
dblp
notredame
wikitalk
youtube
trecwt10g
skitter
catdog
flickr
hollywood
indochina
uk-2002
friendster"

cd bin
path=/scratch/ssd0/zpeng/collections
fout=output.txt
:> $fout
for dataset in $DATASETS; do
	echo $dataset | tee -a $fout
	echo "------" | tee -a $fout
	# Unweigthed
	#./sspexp_run -x -d 0 -w 0 -s 2 -m 0 -g ${path}/${dataset}/${dataset}.txt -e index | tee -a $fout
	# Weigthed
	./sspexp_run -x -d 0 -w 1 -s 0 -m 0 -g ${path}/${dataset}/w_7_unif_${dataset}.txt -e index | tee -a $fout
	echo "" | tee -a $fout
done
