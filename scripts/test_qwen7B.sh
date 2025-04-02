############################################### Generality ###############################################

echo "********************************* Test Qwen2.5-7B/lora8 Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/lora8

echo "********************************* Test Qwen2.5-7B/lora16 Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/lora16

echo "********************************* Test Qwen2.5-7B/lora24 Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/lora24

echo "********************************* Test Qwen2.5-7B/lora32 Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/lora32

echo "********************************* Test Qwen2.5-7B/hydralora Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/hydralora

echo "********************************* Test Qwen2.5-7B/pissa Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/pissa

echo "********************************* Test Qwen2.5-7B/dora Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/dora

echo "********************************* Test Qwen2.5-7B/prompt_tuning Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/prompt_tuning

echo "********************************* Test Qwen2.5-7B/ia3 Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/ia3

echo "********************************* Test Qwen2.5-7B/p_tuning Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/p_tuning

echo "********************************* Test Qwen2.5-7B/cola1 Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/cola1

echo "********************************* Test Qwen2.5-7B/cola2 Generality ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Generality/cola2



############################################### Law ###############################################

echo "********************************* Test Qwen2.5-7B/lora8 Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/lora8

echo "********************************* Test Qwen2.5-7B/lora16 Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/lora16

echo "********************************* Test Qwen2.5-7B/lora24 Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/lora24

echo "********************************* Test Qwen2.5-7B/lora32 Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/lora32

echo "********************************* Test Qwen2.5-7B/hydralora Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/hydralora

echo "********************************* Test Qwen2.5-7B/pissa Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/pissa

echo "********************************* Test Qwen2.5-7B/dora Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/dora

echo "********************************* Test Qwen2.5-7B/prompt_tuning Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/prompt_tuning

echo "********************************* Test Qwen2.5-7B/ia3 Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/ia3

echo "********************************* Test Qwen2.5-7B/p_tuning Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/p_tuning

echo "********************************* Test Qwen2.5-7B/cola1 Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/cola1

echo "********************************* Test Qwen2.5-7B/cola2 Law ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Law --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Law/cola2



############################################### Medicine ###############################################

echo "********************************* Test Qwen2.5-7B/lora8 Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/lora8

echo "********************************* Test Qwen2.5-7B/lora16 Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/lora16

echo "********************************* Test Qwen2.5-7B/lora24 Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/lora24

echo "********************************* Test Qwen2.5-7B/lora32 Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/lora32

echo "********************************* Test Qwen2.5-7B/hydralora Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/hydralora

echo "********************************* Test Qwen2.5-7B/pissa Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/pissa

echo "********************************* Test Qwen2.5-7B/dora Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/dora

echo "********************************* Test Qwen2.5-7B/prompt_tuning Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/prompt_tuning

echo "********************************* Test Qwen2.5-7B/ia3 Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/ia3

echo "********************************* Test Qwen2.5-7B/p_tuning Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/p_tuning

echo "********************************* Test Qwen2.5-7B/cola1 Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/cola1

echo "********************************* Test Qwen2.5-7B/cola2 Medicine ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task mmlu_test_Medical --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Medicine/cola2



############################################### Math ###############################################

echo "********************************* Test Qwen2.5-7B/lora8 Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/lora8

echo "********************************* Test Qwen2.5-7B/lora16 Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/lora16

echo "********************************* Test Qwen2.5-7B/lora24 Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/lora24

echo "********************************* Test Qwen2.5-7B/lora32 Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/lora32

echo "********************************* Test Qwen2.5-7B/hydralora Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/hydralora

echo "********************************* Test Qwen2.5-7B/pissa Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/pissa

echo "********************************* Test Qwen2.5-7B/dora Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/dora

echo "********************************* Test Qwen2.5-7B/prompt_tuning Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/prompt_tuning

echo "********************************* Test Qwen2.5-7B/ia3 Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/ia3

echo "********************************* Test Qwen2.5-7B/p_tuning Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/p_tuning

echo "********************************* Test Qwen2.5-7B/cola1 Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/cola1

echo "********************************* Test Qwen2.5-7B/cola2 Math ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task gsm8k_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Math/cola2



############################################### Finance ###############################################

echo "********************************* Test Qwen2.5-7B/lora8 Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/lora8

echo "********************************* Test Qwen2.5-7B/lora16 Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/lora16

echo "********************************* Test Qwen2.5-7B/lora24 Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/lora24

echo "********************************* Test Qwen2.5-7B/lora32 Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/lora32

echo "********************************* Test Qwen2.5-7B/hydralora Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/hydralora

echo "********************************* Test Qwen2.5-7B/pissa Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/pissa

echo "********************************* Test Qwen2.5-7B/dora Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/dora

echo "********************************* Test Qwen2.5-7B/prompt_tuning Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/prompt_tuning

echo "********************************* Test Qwen2.5-7B/ia3 Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/ia3

echo "********************************* Test Qwen2.5-7B/p_tuning Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/p_tuning

echo "********************************* Test Qwen2.5-7B/cola1 Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/cola1

echo "********************************* Test Qwen2.5-7B/cola2 Finance ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task fineval_test_None --lang en --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Finance/cola2



############################################### Mixed_Domains ###############################################

echo "********************************* Test Qwen2.5-7B/lora8 Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/lora8

echo "********************************* Test Qwen2.5-7B/lora16 Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/lora16

echo "********************************* Test Qwen2.5-7B/lora24 Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/lora24

echo "********************************* Test Qwen2.5-7B/lora32 Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/lora32

echo "********************************* Test Qwen2.5-7B/hydralora Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/hydralora

echo "********************************* Test Qwen2.5-7B/pissa Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/pissa

echo "********************************* Test Qwen2.5-7B/dora Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/dora

echo "********************************* Test Qwen2.5-7B/prompt_tuning Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/prompt_tuning

echo "********************************* Test Qwen2.5-7B/ia3 Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/ia3

echo "********************************* Test Qwen2.5-7B/p_tuning Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/p_tuning

echo "********************************* Test Qwen2.5-7B/cola1 Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/cola1

echo "********************************* Test Qwen2.5-7B/cola2 Mixed_Domains ********************************************"
CUDA_VISIBLE_DEVICES=0 llamafactory-cli eval --model_name_or_path ./models/Qwen2.5-7B --template qwen --task cmmlu_test_STEM --lang zh --n_shot 0 --batch_size 8 --trust_remote_code --adapter_name_or_path ./saves/Qwen2.5-7B/Mixed_Domains/cola2