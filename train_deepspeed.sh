deepspeed -m src.train_lora \
   --model_name_or_path ./ckpts/vicuna-7b \
    --data_path ./data/alpaca-train-10k-instruct_part.json \
    --output_dir ./ckpts/vicuna-response-length-perception-module \
    --bf16 False \
    --tf32 False \
    --evaluation_strategy "no" \
    --lazy_preprocess True \
    --save_strategy "steps" \
    --save_steps 100 \
    --save_total_limit 2 \
    --logging_steps 1 \
    --num_train_epochs 3 \
    --per_device_train_batch_size 2 \
    --gradient_accumulation_steps 16 \
    --learning_rate 2e-5 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
   --deepspeed ./deepspeed-config.json \
    --lr_scheduler_type "cosine"