# 📍![1727842522286](assets/logo.png)CoLA: Collaborative Low-Rank Adaptation (ACL 2025 Findings)

PyTorch implementation of [CoLA]([https://openreview.net/forum?id=tWqJVTbguL](https://arxiv.org/abs/2505.15471)).

<h5 align=center>
[![arXiv](https://img.shields.io/badge/Arxiv-2505.15471-red?logo=arxiv&label=Arxiv&color=red)](https://arxiv.org/abs/2505.15471)
[![License](https://img.shields.io/badge/Code%20License-MIT%20License-yellow)](https://github.com/zyy-2001/CoLA/blob/master/LICENSE)
![GitHub Repo stars](https://img.shields.io/github/stars/zyy-2001/CoLA)

</h5>

For reproducibility, we open-source our data and code; the open-source list is as follows.

- Conda environment configuration file (`LLaMA-Factory/environment.yaml`)
- Option fill prompt and its code (`tool/convert.py`)
- The complete converted dataset, including GSM8K and BBH (`LLaMA-Factory/data/gsm8k_train.json`, `LLaMA-Factory/evaluation/gsm8k/test/gsm8k_test.csv` and `LLaMA-Factory/evaluation/bbh/test/*.csv`)
- The training and testing datasets after Fineval translation into English (`LLaMA-Factory/data/fineval_train-en.json` and `LLaMA-Factory/evaluation/fineval/test/*.csv`)
- Baseline code for single-domain (peft, please place it in your own conda environment, e.g., `/home/root/miniconda3/envs/llama_factory/lib/python3.10/site-packages/peft`). Due to inconsistencies across multiple modified Transformers repositories, please refer to the corresponding paper repositories for multi-domain baselines.
- Complete fine-tuning code (`LLaMA-Factory`)

## 🚀Download & Installation

Enter the `LLaMA-Factory` directory, download the [Llama-3.2-3B](https://huggingface.co/meta-llama/Llama-3.2-3B) and [Llama-3.1-8B](https://huggingface.co/meta-llama/Llama-3.1-8B) model weights to the `models` directory, modify the `prefix` field in the `environment.yaml` file, and set it to the directory where your Miniconda3/Anaconda is installed, and then create the conda environment:

```python
conda env create -f environment.yaml
conda activate llama_factory
```

## ✨Fine-tuning

- Generality

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset databricks-dolly-15k --dataset_dir ./data --template llama3 --finetuning_type cola --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Generality --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --num_A 2 --num_B 3 
```

- Law

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset us_terms,Lawyer-Instruct --dataset_dir ./data --template llama3 --finetuning_type cola --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Law --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --num_A 2 --num_B 3
```

- Medicine

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset iCliniq,GenMedGPT-5k --dataset_dir ./data --template llama3 --finetuning_type cola --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Medicine --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --num_A 2 --num_B 3
```

- Math

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset gsm8k --dataset_dir ./data --template llama3 --finetuning_type cola --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Math --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --num_A 2 --num_B 3
```

- Finance

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset fineval-en --dataset_dir ./data --template llama3 --finetuning_type cola --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Finance --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --num_A 2 --num_B 3
```

- Multi-tasking

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset openorca --dataset_dir ./data --template llama3 --finetuning_type cola --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Multi-tasking --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --num_A 2 --num_B 3
```

Other baselines (LoRA, DoRA, PiSSA, HydraLoRA), taking Generality as an example.

- LoRA

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset databricks-dolly-15k --dataset_dir ./data --template llama3 --finetuning_type lora --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Generality/lora --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --lora_rank 8
```

- DoRA

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset databricks-dolly-15k --dataset_dir ./data --template llama3 --finetuning_type lora --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Generality/dora --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --lora_rank 8 --use_dora
```

- PiSSA

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset databricks-dolly-15k --dataset_dir ./data --template llama3 --finetuning_type lora --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Generality/pissa --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --lora_rank 8 --pissa_init
```

- HydraLoRA

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli train --stage sft --do_train --model_name_or_path ./models/[Llama-3.2-3B or Llama-3.1-8B] --dataset databricks-dolly-15k --dataset_dir ./data --template llama3 --finetuning_type hydralora --output_dir ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Generality/hydralora --overwrite_cache --overwrite_output_dir --cutoff_len 1024 --preprocessing_num_workers 16 --per_device_train_batch_size 8 --per_device_eval_batch_size 1 --gradient_accumulation_steps 8 --lr_scheduler_type cosine --logging_steps 50 --warmup_steps 20 --save_steps 100 --eval_steps 50 --evaluation_strategy steps --load_best_model_at_end --learning_rate 5e-5 --num_train_epochs 5.0  --val_size 0.1 --plot_loss --fp16 --max_samples 1000 --lora_rank 8 --lora_num 3
```

## 🚨Evaluation

- Generality

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./[Llama-3.2-3B or Llama-3.1-8B] --template llama3 --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Generality
```

- Law

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./[Llama-3.2-3B or Llama-3.1-8B] --template llama3 --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Law
```

- Medicine

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./[Llama-3.2-3B or Llama-3.1-8B] --template llama3 --task mmlu_test_Medicine --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Medicine
```

- Math

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./[Llama-3.2-3B or Llama-3.1-8B] --template llama3 --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Math
```

- Finance

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./[Llama-3.2-3B or Llama-3.1-8B] --template llama3 --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Finance
```

- Multi-tasking

```python
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./[Llama-3.2-3B or Llama-3.1-8B] --template llama3 --task bbh_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/[Llama-3.2-3B or Llama-3.1-8B]/Multi-tasking
```


## ⚠️Citation
If you find our work valuable, we would appreciate your citation: 
```text
@misc{zhou2025colacollaborativelowrankadaptation,
      title={CoLA: Collaborative Low-Rank Adaptation}, 
      author={Yiyun Zhou and Chang Yao and Jingyuan Chen},
      year={2025},
      eprint={2505.15471},
      archivePrefix={arXiv},
      primaryClass={cs.CL},
      url={https://arxiv.org/abs/2505.15471}, 
}
```
