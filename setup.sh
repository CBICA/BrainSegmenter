module load python/anaconda/3.9.2
module load cuda/11.2
python3 -m pip install virtualenv
python3 -m virtualenv nnUnet_env
source nnUnet_env/bin/activate

pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113
pip install -r requirements.txt
