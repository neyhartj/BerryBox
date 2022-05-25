#!/bin/bash

# SLURM parameters
# job standard output will go to the file slurm-%j.out (where %j is the job ID)

#SBATCH -t 08:00:00   # walltime limit (HH:MM:SS) (use this for gpu-scavenger)
#SBATCH -N 1   # number of nodes
#SBATCH -n 2   # 8 processor core(s) per node X 2 threads per core
#SBATCH --mem-per-cpu 50G   # maximum memory per node
# #SBATCH -p gpu-low    # GPU node with 2 hour maximum
#SBATCH -p scavenger-gpu # GPU node with 21 day maximum, but can be killed anytime
#SBATCH --job-name="fieldBerryFinder_model_training_3.1.0"
#SBATCH --mail-user=jeffrey.neyhart@usda.gov   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL


##
## FCN Workflow Model Training
##


# Set error handling options
# set -e
#set -u
#set -o pipefail

# Change working directory
cd /project/gifvl_vaccinium/cranberryFieldImaging/berryFieldImagePipeline/imageSegmentation/trainedSegmentationModel

# Activate the virtual environment
source /project/gifvl_vaccinium/cranberryFieldImaging/cranVE/bin/activate

# Print the GPU allocation
nvidia-smi

# Run the python script
python train_FCN_fieldBerryFinder_model.py
