#!/bin/bash

cd prepare_data

python3 gen_12net_data.py

python3 gen_landmark_aug_12.py

python3 gen_imglist_pnet.py

python3 gen_PNet_tfrecords.py
