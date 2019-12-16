#!/usr/bin/env bash

RUN=passive_fooling.py
FIXED_OPTION='--batch-size 4 --batch-size_test 4 --num_visualize_plot 16 --num_eval 3 --eval-period 500 --imagenet_accuracy'
GPU=0
EXP_NAME=Passive_

# Experiment 1 (LR)
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 5e-6 --lambda_value 1 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 2.5e-7 --lambda_value 1 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 4e-6 --lambda_value 1 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 2e-7 --lambda_value 1 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 1e-5 --lambda_value 1 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 0.5e-6 --lambda_value 1 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# Experiment 2 (Penalty)
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 1e-6 --lambda_value 0.1 --loss_type location --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 1e-6 --lambda_value 5 --loss_type location --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 1e-6 --lambda_value .4 --loss_type location --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 1e-6 --lambda_value 20 --loss_type location --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 1e-6 --lambda_value .2 --loss_type location --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 1e-6 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# VGG19 - Replications

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 1e-6 --lambda_value 1 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 5e-7 --lambda_value 1 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 2e-6 --lambda_value 0.25 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 34 --model VGG19 --lr 1e-6 --lambda_value 1 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 34 --model VGG19 --lr 3e-7 --lambda_value 0.4 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 34 --model VGG19 --lr 1e-6 --lambda_value 0.25 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION


# DENSENET121 - Replications

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 1e-6 --lambda_value 4 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 4e-7 --lambda_value 1.5 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 6e-7 --lambda_value 0.5 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 64 --model Densenet121 --lr 2e-6 --lambda_value 2 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 64 --model Densenet121 --lr 3e-7 --lambda_value 4 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 64 --model Densenet121 --lr 1e-7 --lambda_value 1 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION


# RESNET50 - Replications

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 2e-6 --lambda_value 2 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 1e-6 --lambda_value 1 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 5e-7 --lambda_value 0.25 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 19 --model Resnet50 --lr 2e-6 --lambda_value 2 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 19 --model Resnet50 --lr 3e-6 --lambda_value 6 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 19 --model Resnet50 --lr 2e-6 --lambda_value 0.25 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION