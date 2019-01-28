#!/bin/bash

cd prepare_data

python3 gen_hard_example.py --test_mode=PNet

python3 gen_landmark_aug_24.py

python3 gen_imglist_rnet.py

python3 gen_RNet_tfrecords.py --input_file=24/landmark_24_aug.txt --output_file=landmark_landmark.tfrecord
python3 gen_RNet_tfrecords.py --input_file=24/pos_24.txt --output_file=pos_landmark.tfrecord
python3 gen_RNet_tfrecords.py --input_file=24/part_24.txt --output_file=part_landmark.tfrecord
python3 gen_RNet_tfrecords.py --input_file=24/neg_24.txt --output_file=neg_landmark.tfrecord
