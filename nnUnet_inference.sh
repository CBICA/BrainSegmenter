#! /bin/bash
# nnUnet Inference Submission Script for CBICA Cluster
# Vishnu Bashyam

# Request Resources (Requires GPU, 24-32 GB RAM)
#$ -l h_vmem=24G
#$ -l gpu=1


#Load Virtual ENV
source nnUnet_env/bin/activate

# Load Modules
module load cudnn/8.2.1
module load cuda/10.2
module load gcc/5.2.0
module load glibc/3.4.28

# Where to output the results
export OUTPUT_FOLDER="./Results"

# Where to find the data
export DATA="./Data"

export PATH="~/.local/bin:$PATH"
# Set Environment Variables
export RESULTS_FOLDER="/cbica/home/bashyamv/comp_space/1_Projects/19_nnUnet_Segmentation/data/Results"
export nnUNet_preprocessed="./Processing"
export nnUNet_def_n_proc=1

# Run nnUnet Inference
nnUNet_predict \
 -i $DATA \
 -f 0 \
 -o $OUTPUT_FOLDER \
 -t 803 \
 -m 3d_fullres \
 --all_in_gpu True

