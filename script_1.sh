#Script 1
#This script must be located in the parent directory of the project directory (global_mining) that will be crated
#Make the file system needed for the project and move this script to scripts/

mkdir -p global_mining/data_raw #Raw sequencing reads fastq.gz
mkdir global_mining/quality_raw #FastQC results of raw data
mkdir global_mining/data_cleaned #Trimmomatic results of raw data
mkdir global_mining/quality_cleaned #FastQC of trimmed reads
mkdir global_mining/scripts #Scripts for the whole project
mkdir global_mining/metagenomes_assembly #Metaspades complete results
mkdir global_mining/metagenomes_assembly/quality #MetaQUAST results
#mkdir global_mining/mags_assembly #VAMB complete results
#mkdir global_mining/mags_assembly/quality #CheckM results
mkdir -p global_mining/genomes/fasta #metagenome assemblies copied here from metagenomes_assembly/ and extension changed to fna
mkdir global_mining/genomes/aminoa #metagenomes annotated with MG-RAST in aminoacid sequences
mkdir global_mining/genomes/gbks #metagenomes annotated with MG-RAST in GeneBank format
mkdir global_mining/antismash #Antismash results, with one output folder for each sample inside, names must include date of creation
mkdir global_mining/bigscape #BigSCAPE results, name must include date of creation
mkdir global_mining/corason #Corason results, one output folder for each interesting BGC, names must include date of creation 
mkdir global_mining/taxonomy_metagenomes #Kraken complete results, made on the metagenomes assembled contigs
#mkdir global_mining/taxonomy_mags #Kraken complete results, made on the mags_assembly files (contigs)

mv script_1.sh global_mining/scripts/
