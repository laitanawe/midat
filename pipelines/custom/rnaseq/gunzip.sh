#!/usr/bin/env bash
#SBATCH -J gunzip
#SBATCH -q batch
#SBATCH -t 72:00:00
#SBATCH -c 1
#SBATCH --mem 1g
#SBATCH -o '%x.%j.out'
#SBATCH -e '%x.%j.err'

file="$1"
echo "file:$file"
echo "begin:$(date +'%Y%m%d%H%M%S')"
gunzip "$file"
echo "finish:$(date +'%Y%m%d%H%M%S')"

