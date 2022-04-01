#!/usr/bin/env python3

import sys
import os
from glob import glob

import numpy as np
import pandas as pd

path = sys.argv[1]  # Path containing all HCP subjects
outdir = os.path.dirname(os.path.realpath(__file__))

subject_ids = []
mean_motion = []

for sub in glob(path + '/*'):
    sub_motion = []
    for file in glob(sub + '/MNINonLinear/Results/rfMRI_REST[12]_[LR][LR]/Movement_RelativeRMS_mean.txt'):
        try:
            mean_rms = pd.read_csv(file, header=None).values.flatten().tolist()
        except:
            mean_rms = [np.nan]
            print("missing file:", file)
        sub_motion += mean_rms

    if len(sub_motion):
        subject_ids.append(sub.split('/')[-1])
        mean_motion.append(np.mean(np.array(sub_motion)))

df = pd.DataFrame({
    'ID': subject_ids,
    'motion': mean_motion
})

df.to_csv(outdir + '/motion.csv')

print(df.describe())

print("Collected motion data for", len(subject_ids), 'subjects.')


