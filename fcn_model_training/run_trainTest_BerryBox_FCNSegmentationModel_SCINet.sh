#!/bin/bash

# SLURM parameters
# job standard output will go to the file slurm-%j.out (where %j is the job ID)

#SBATCH -t 12:00:00   # walltime limit (HH:MM:SS) (use this for gpu-scavenger)
#SBATCH -N 1   # number of nodes
#SBATCH -n 2   # 8 processor core(s) per node X 2 threads per core
#SBATCH --mem-per-cpu 50G   # maximum memory per node
#SBATCH -p scavenger-gpu # GPU node with 21 day maximum, but can be killed anytime
#SBATCH --job-name="" # Job name
##SBATCH --mail-user=   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL


##
## FCN Workflow Model Training, Testing, and Validation
##

## USERS - you may need to make edits to the paths below:


# Change working directory
cd /PATH/TO/BerryBox/fcn_model_training/tuning

# Activate the virtual environment
source /PATH/TO/virtenv_cuda113/bin/activate

# Print the GPU allocation
nvidia-smi

# Run the python script
python3 trainTest_BerryBox_FCNSegmentationModel.py


