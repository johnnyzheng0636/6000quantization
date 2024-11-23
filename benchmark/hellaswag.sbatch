#!/bin/bash
#SBATCH --job-name=test          # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --gpus=1                 # number of GPUs per node(only valid under large/normal partition)
#SBATCH --time=00:10:00          # total run time limit (HH:MM:SS)
#SBATCH --partition=normal       # partition(large/normal/cpu) where you submit
#SBATCH --account=mscbdt2024     # only require for multiple projects

date
lm_eval --model hf \
    --model_args pretrained=output/mistralai_Mistral-7B-Instruct-v0.3_c4_braq_128_hessian.pt \
    --tasks hellaswag \
    --device cuda:0 \
    --log_samples \
    --output_path hellaswag_test \
    --batch_size auto
date