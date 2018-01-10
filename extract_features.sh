#!/bin/bash

#coco (in domain)
model='prototxts/train_classifiers_deploy.prototxt'
model_weights='snapshots/attributes_JJ100_NN300_VB100_coco_471_eightCluster_0223_iter_80000.caffemodel'
image_dim=224

python dcc.py --image_model $model \
              --model_weights $model_weights \
              --batch_size 14 \
              --image_dim $image_dim \
              --extract_features \
              --device 1

#coco (out of domain)
model='prototxts/train_classifiers_deploy.prototxt'
model_weights='snapshots/attributes_JJ100_NN300_VB100_clusterEight_imagenet_vgg_0112_iter_80000.caffemodel'
image_dim=224

python dcc.py --image_model $model \
              --model_weights $model_weights \
              --batch_size 14 \
              --image_dim $image_dim \
              --extract_features \
              --device 1
