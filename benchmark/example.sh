lm_eval --model hf \
    --model_args pretrained=output/mistralai_Mistral-7B-Instruct-v0.3_c4_braq_128_hessian.pt \
    --tasks hellaswag \
    --device cpu \
    --log_samples \
    --output_path hellaswag_test \
    --batch_size autoc

sbatch -o benchmark/out/hellaswag.out benchmark/hellaswag.sbatch