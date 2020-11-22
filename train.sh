#!/bin/bash

# Update system
apt-get update

# Install git
apt-get install -y git

# Install python requirements
pip install wheel
pip install cmake
pip install -r requirements.txt

# Clone stylegan2 repo
rm -rf stylegan2/
git clone https://github.com/NVlabs/stylegan2.git

# Make result folder if it doesn't exist
mkdir -p /storage/results

# Go into stylegan2 repo
cd stylegan2/

# Run model training
python3 run_training.py --num-gpus=1 --data-dir=/storage/datasets --config=config-f --dataset=lowpoly --mirror-augment=true --metrics=None --result-dir=/storage/results