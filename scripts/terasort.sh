#!/bin/bash

SIZE=10000000
NUM_MAPS=100
NUM_REDUCES=100
IN_DIR=in_dir
OUT_DIR=out_dir

hadoop jar /usr/lib/hadoop/hadoop-examples.jar teragen -Dmapred.map.tasks=${NUM_MAPS} ${SIZE} ${IN_DIR}

sleep 10

hadoop jar /usr/lib/hadoop/hadoop-examples.jar terasort -Dmapred.reduce.tasks=${NUM_REDUCES} ${IN_DIR} ${OUT_DIR}

