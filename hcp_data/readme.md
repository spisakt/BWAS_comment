# Preprocessed data from the Human Connectome Project

Dataset is not part of the repository but can be easily obtained in two ways:

### Option A: Via DataLad (contact the authors for credentials)

```
export WEBDAV_USERNAME=XXXX
export WEBDAV_PASSWORD=XXXX-XXXX-XXXX-XXXX
datalad install -s git@github.com:pni-data/hcp-connectivity.git hcp_data
datalad siblings -d hcp_data enable -s sciebo.sfb289
datalad get hcp_data
```

### Option B: Download from ConnectomeDB
3. Download Behavioral Data as published on connectomeDB: https://db.humanconnectome.org/.
`hcp1200_behavioral_data.csv`

4. HCP1200 Parcellation+Timeseries+Netmats (PTN), as published on connectomeDB: https://db.humanconnectome.org/

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

### As a results, this folder should contain the following files.

- `hcp1200_behavioral_data.csv`: all behavioral and demographic data of the HCP1200-release
- `netmats1_correlationZ.txt`: Fisher Z-transformed pearson correlations matrices, flattened format, i.e one row per subject
- `netmats2_partial-correlation.txt`: Partial correlations matrices (with a slight regularization), flattened format, i.e one row per subject
- `subjectIDs.txt`: subject IDs, links rows of the netmat files to the 'Subject' column of the behavioral dataframe.

