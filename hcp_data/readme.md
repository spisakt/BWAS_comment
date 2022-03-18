Human Connectome Project Dataset (HCP)
======================================

Functional network matrices (netmats), as published on connectomeDB: https://db.humanconnectome.org/

License: HAS TO BE EXPLICITLY ACCEPTED BY REGISTERED USERS OF THE CONNECTOME DB.
(data can't be published with a public repo!)


- `hcp1200_behavioral_data.csv`: all behavioral and demographic data of the HCP1200-release
- `netmats1_correlationZ.txt`: Fisher Z-transformed pearson correlations matrices, flattened format, i.e one row per subject
- `netmats2_partial-correlation.txt`: Partial correlations matrices (with a slight regularization), flattened format, i.e one row per subject
- `subjectIDs.txt`: subject IDs, links rows of the netmat files to the 'Subject' column of the behavioral dataframe.

Publications:
-------------

> Van Essen DC, Ugurbil K, Auerbach E, Barch D, Behrens TE, Bucholz R, Chang A, Chen L, Corbetta M, Curtiss SW, Della Penna S. The Human Connectome Project: a data acquisition perspective. Neuroimage. 2012 Oct 1;62(4):2222-31.

> Smith SM, Beckmann CF, Andersson J, Auerbach EJ, Bijsterbosch J, Douaud G, Duff E, Feinberg DA, Griffanti L, Harms MP, Kelly M. Resting-state fMRI in the human connectome project. Neuroimage. 2013 Oct 15;80:144-68.

> Glasser MF, Sotiropoulos SN, Wilson JA, Coalson TS, Fischl B, Andersson JL, Xu J, Jbabdi S, Webster M, Polimeni JR, Van Essen DC. The minimal preprocessing pipelines for the Human Connectome Project. Neuroimage. 2013 Oct 15;80:105-24.

