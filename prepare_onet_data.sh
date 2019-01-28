#!/bin/bash

cd prepare_data

python3 gen_hard_example.py --test_mode=RNet

python3 gen_landmark_aug_48.py

python3 gen_imglist_onet.py

python3 gen_ONet_tfrecords.py --input_file=48/landmark_48_aug.txt --output_file=landmark_landmark.tfrecord
python3 gen_ONet_tfrecords.py --input_file=48/pos_48.txt --output_file=pos_landmark.tfrecord
python3 gen_ONet_tfrecords.py --input_file=48/part_48.txt --output_file=part_landmark.tfrecord
python3 gen_ONet_tfrecords.py --input_file=48/neg_48.txt --output_file=neg_landmark.tfrecord
