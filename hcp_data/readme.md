Human Connectome Project Dataset (HCP)
======================================

1. Download Behavioral Data as published on connectomeDB: https://db.humanconnectome.org/.
`hcp1200_behavioral_data.csv`

2. HCP1200 Parcellation+Timeseries+Netmats (PTN), as published on connectomeDB: https://db.humanconnectome.org/

- Download: 1003 Subjects, recon r177 + r227, PTN Release (13GB) 

- Uncompress: HCP1200_Parcellation_Timeseries_Netmats.zip

- Then:
```
mv HCP_PTN1200/subjectIDs.txt $REPODIR/hcp_data/subjectIDs.txt
mv HCP_PTN1200/netmats_3T_HCP1200_MSMAll_ICAd100_ts2/netmats/3T_HCP1200_MSMAll_d100_ts2/netmats1.txt $REPODIR/hcp_data/netmats1_correlationZ.txt
mv HCP_PTN1200/netmats_3T_HCP1200_MSMAll_ICAd100_ts2/netmats/3T_HCP1200_MSMAll_d100_ts2/netmats2.txt $REPODIR/hcp_data/netmats2_partial-correlation.txt
```

3. Motion data (optional)
- Clone the HCP dataset via datalad: https://github.com/datalad-datasets/human-connectome-project-openaccess
- Get all motion data:
 `datalad get -J 16 HCP1200/*/MNINonLinear/Results/rfMRI_REST*/Movement_RelativeRMS_mean.txt`
- run:
`python3 get_motion.data.py <your_hcp_dataset_dir>/HCP1200`

As a results, this folder should contain the following files.

- `hcp1200_behavioral_data.csv`: all behavioral and demographic data of the HCP1200-release
- `netmats1_correlationZ.txt`: Fisher Z-transformed pearson correlations matrices, flattened format, i.e one row per subject
- `netmats2_partial-correlation.txt`: Partial correlations matrices (with a slight regularization), flattened format, i.e one row per subject
- `subjectIDs.txt`: subject IDs, links rows of the netmat files to the 'Subject' column of the behavioral dataframe.



Publications:
-------------

> Van Essen DC, Ugurbil K, Auerbach E, Barch D, Behrens TE, Bucholz R, Chang A, Chen L, Corbetta M, Curtiss SW, Della Penna S. The Human Connectome Project: a data acquisition perspective. Neuroimage. 2012 Oct 1;62(4):2222-31.

> Smith SM, Beckmann CF, Andersson J, Auerbach EJ, Bijsterbosch J, Douaud G, Duff E, Feinberg DA, Griffanti L, Harms MP, Kelly M. Resting-state fMRI in the human connectome project. Neuroimage. 2013 Oct 15;80:144-68.

> Glasser MF, Sotiropoulos SN, Wilson JA, Coalson TS, Fischl B, Andersson JL, Xu J, Jbabdi S, Webster M, Polimeni JR, Van Essen DC. The minimal preprocessing pipelines for the Human Connectome Project. Neuroimage. 2013 Oct 15;80:105-24.

