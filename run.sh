python3 run.py facebook/opt-6.7b c4 braq --blocksize 128 --salient_metric hessian --device "cuda:0"
python3 run.py meta-llama/Llama-2-7b-hf c4 braq --blocksize 128 --salient_metric hessian --device "cuda:0"
python3 run.py huggyllama/llama-7b c4 braq --blocksize 128 --salient_metric hessian --device "cuda:0"
python3 run.py mistralai/Mistral-7B-Instruct-v0.3 c4 braq --blocksize 128 --salient_metric hessian --device "cpu" --debug