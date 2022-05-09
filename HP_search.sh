# Round 1
## Without lexicon
#python run_ner_lexicon.py --data_dir data_human_labeled --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 100 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-4 --output_dir output_human_labeled --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 100 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_predict --do_eval --overwrite_output_dir --weight_decay 0.0
#python run_ner_lexicon.py --data_dir data_human_labeled --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 100 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 5e-5 --output_dir output_human_labeled --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 100 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_predict --do_eval --overwrite_output_dir --weight_decay 0.0
#python run_ner_lexicon.py --data_dir data_human_labeled --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 100 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-5 --output_dir output_human_labeled --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 100 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_predict --do_eval --overwrite_output_dir --weight_decay 0.0
## With lexicon
#python run_ner_lexicon.py --data_dir data_human_labeled --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 100 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-4 --output_dir output_human_labeled --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 100 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_predict --do_eval --overwrite_output_dir --weight_decay 0.0 --whether_integrate_lexicon
#python run_ner_lexicon.py --data_dir data_human_labeled --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 100 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 5e-5 --output_dir output_human_labeled --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 100 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_predict --do_eval --overwrite_output_dir --weight_decay 0.0 --whether_integrate_lexicon
#python run_ner_lexicon.py --data_dir data_human_labeled --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 100 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-5 --output_dir output_human_labeled --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 100 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_predict --do_eval --overwrite_output_dir --weight_decay 0.0 --whether_integrate_lexicon
## Prediction on pseudo label dataset
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path output_human_labeled --max_seq_length 512 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --output_dir output_human_labeled --per_gpu_eval_batch_size 512 --test_file train.tsv --seed 1 --do_predict --overwrite_output_dir --whether_integrate_lexicon

# Round 2
# Restart without lexicon
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-4 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 5e-5 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-5 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
## Restart with lexicon
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --whether_integrate_lexicon --learning_rate 1e-4 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --whether_integrate_lexicon --learning_rate 5e-5 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path Model --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --whether_integrate_lexicon --learning_rate 1e-5 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
## Continue without lexicon
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path output_human_labeled --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-4 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path output_human_labeled --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 5e-5 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path output_human_labeled --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-5 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0
## Continue with lexicon
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path output_human_labeled --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-4 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0 --whether_integrate_lexicon
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path output_human_labeled --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 5e-5 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0 --whether_integrate_lexicon
#python run_ner_lexicon.py --data_dir data_pseudo_label --model_type bert --labels labels.txt --config_name config.json --model_name_or_path output_human_labeled --logging_steps 500 --integration_method embed --lexicon lexicon_map.txt --pos pos_label.txt --learning_rate 1e-5 --output_dir output_pseudo_label --per_gpu_eval_batch_size 32 --test_file test.tsv --evaluate_during_training --max_seq_length 512 --num_train_epochs 3 --per_gpu_train_batch_size 16 --save_steps 0 --seed 1 --do_train --do_eval --do_predict --overwrite_output_dir --weight_decay 0.0 --whether_integrate_lexicon