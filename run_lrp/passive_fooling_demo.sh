#!/usr/bin/env bash

RUN=passive_fooling.py
FIXED_OPTION='--batch-size 4 --batch-size_test 4 --num_visualize_plot 16 --num_eval 2 --eval-period 500 --imagenet_accuracy'
GPU=0
EXP_NAME=Passive_

# Experiment 3 (FSR)
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 1e-5 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION
# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 34 --model VGG19 --lr 1e-5 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION


# DO NOT TOUCH ANYTHING UNDER HERE!!!!! NO UNCOMMENTING OR COMMENTING!!! LEAVE IT ALONE.
# It is there for our purposes

# VGG19

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 1e-5 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 1e-5 --lambda_value 10 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 34 --model VGG19 --lr 1e-6 --lambda_value 10 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 34 --model VGG19 --lr 1e-5 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 34 --model VGG19 --lr 1e-5 --lambda_value 10 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 34 --model VGG19 --lr 1e-6 --lambda_value 10 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION


# DENSENET121

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 1e-5 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 1e-5 --lambda_value 10 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 64 --model Densenet121 --lr 1e-6 --lambda_value 10 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 64 --model Densenet121 --lr 1e-5 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 64 --model Densenet121 --lr 1e-5 --lambda_value 10 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 64 --model Densenet121 --lr 1e-6 --lambda_value 10 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION


# RESNET50

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 1e-5 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 1e-5 --lambda_value 10 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter lrp_T --lrp_target_layer 19 --model Resnet50 --lr 1e-6 --lambda_value 10 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 19 --model Resnet50 --lr 1e-5 --lambda_value 10 --loss_type location --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 19 --model Resnet50 --lr 1e-5 --lambda_value 10 --loss_type topk --img_name $EXP_NAME $FIXED_OPTION

# CUDA_VISIBLE_DEVICES=$GPU python3 $RUN --interpreter grad_cam --lrp_target_layer 19 --model Resnet50 --lr 1e-6 --lambda_value 10 --loss_type center_mass --img_name $EXP_NAME $FIXED_OPTION
