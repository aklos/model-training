#!/bin/bash

# Update system
apt-get update

# Install git
apt-get install -y git

# Clone stylegan2 repo
rm -rf stylegan2/
git clone https://github.com/aklos/stylegan2.git

# Go into stylegan2 repo
cd stylegan2/

# Run model training
python3 run_training.py --num-gpus=1 --data-dir=/storage/datasets --config=config-f --dataset=lowpoly --mirror-augment=true --metrics=None