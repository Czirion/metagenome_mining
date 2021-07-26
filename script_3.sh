# Script 3
# Run Trimmomatic
# This script must be located inside global_mining/data_raw/ and moved to scripts once you finish using it

## To run this script in one sample:
# First argument: sample prefix (i.e. everything before _R#.fastq.gz)
# Following arguments: Trimmomatic parameters to be used separated by single spaces

## If several samples need the same Trimmomatic parameters you cun this script inside a for loop like this:
#for i in *_R1.fastq.gz # you can change the * for a more specific set of samples, but it must end in _R1.fastq.gz
#do
#	base=$(basename ${i} _R1.fastq.gz)
#	bash script_3.sh ${base} #And trimmomatic parameters to use
#done

echo "Running Trimmomatic"
trimmomatic PE "$1"_R1.fastq.gz "$1"_R2.fastq.gz \
"$1"_R1.trim.fastq.gz "$1"_R1.untrim.fastq.gz \
"$1"_R2.trim.fastq.gz "$1"_R2.untrim.fastq.gz \
"$@"

echo "Moving Trimmomatic results to global_mining/data_cleaned"
mv *trim* global_mining/data_cleaned/
