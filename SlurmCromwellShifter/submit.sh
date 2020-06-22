#!/bin/bash
#SBATCH --qos=regular
#SBATCH --time=12:00:00
#SBATCH --output=/global/cfs/projectdirs/m3408/aim2/metagenome/MAGs/logs/test.log
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task 32
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=your@email.com
#SBATCH --constraint=haswell
#SBATCH --account=m3408
#SBATCH --job-name=MAGs_test

cd /global/cfs/projectdirs/m3408/aim2/metagenome/MAGs

java -Dconfig.file=shifter.conf -jar /global/common/software/m3408/cromwell-45.jar run -i input.json mbin_nmdc.wdl 
