#!/bin/bash

# Go into stylegan2 repo
cd stylegan2/

# Run model training
python run_training.py --num-gpus=1 --data-dir=/storage/datasets --config=config-f --dataset=lowpoly --mirror-augment=true --metrics=None