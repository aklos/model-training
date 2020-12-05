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
git clone https://github.com/aklos/stylegan2.git

# Make dataset folder if it doesn't exist
mkdir -p /storage/datasets/burns_nocolor

# Go into stylegan2 repo
cd stylegan2/

# Create dataset from aligned_images
python3 dataset_tool.py create_from_images /storage/datasets/burns_nocolor /storage/test/aligned_images