#!/bin/bash

# Make dataset folder if it doesn't exist
mkdir -p /storage/datasets/lowpoly

# Go into stylegan2 repo
cd stylegan2/

# Create dataset from aligned_images
python dataset_tool.py create_from_images /storage/datasets/lowpoly /storage/test/aligned_images