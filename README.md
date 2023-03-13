# nnUnet Implementation of DLMUSE

Installation (on cluster):
 - Run setup.sh
    - Setup python virtual env
    - Install Pytorch (cuda 11.2)
    - Install nnUnet (from requirements.txt)

Usage:
 - Run nnUnet_inference.sh
    - Loads virtual env
    - Sets enviornment varibles 
        - DATA - Sample data
        - RESULTS_FOLDER - Directory tree with model
        - OUTPUT_FOLDER - Where to store results
        - nnUNet_preprocessed - Where to store intermediate results
    - Runs nnUnet on GPU