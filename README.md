
[![GitHub license](https://img.shields.io/github/license/spisakt/BWAS_comment.svg)](https://github.com/spisakt/BWAS_comment/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/spisakt/BWAS_comment.svg)](https://github.com/spisakt/BWAS_comment/releases/)

### Source code for:

## A Good Model is Worth a Thousand Participants: Replicable Multivariate BWAS with moderate sample sizes


**Main analysis script:** [multivariate_BWAS_replicability_analysis.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis.ipynb)

**Plotting results:** [plot_results.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/plot_results.ipynb)

**Data:** HCP1200 release
Data can be downloaded from the [ConnectomeDB](https://db.humanconnectome.org).
See [hcp_data/readme.md](https://github.com/spisakt/BWAS_comment/blob/master/hcp_data/readme.md)

## Main results

<img src="https://github.com/spisakt/BWAS_comment/blob/master/fig/cv_vs_overfit.png" width="500">

***Figure 1. Apparent inflation of in-samples effect sizes in multivariate BWAS is driven by biased in-sample estimates.***

*(a) Replication of Fig 4b. of the target paper on the HCP dataset demonstrates that obtaining biased (left) in-sample effect size estimates result in overestimated in sample effects. Conversely, constructing unbiased estimates via cross-validation (right) results in slightly underestimated effect sizes and higher replicability. Dotted lines denote the threshold for p=0.05 in case of n=495; irreplicable bootstrap iterations fall into the shaded area. (b) Histograms of the difference between in-sample and out-of-sample effect size estimates show that in-sample effect sizes are severely overestimated without cross-validation and underestimated with cross-validation. (c) Biased in-sample effect size estimates (red) result in false positives in a null model, where the prediction target is randomised, i.e. not dependent on the features. Cross-validation (blue), on the other hand, properly controls type 1 errors. Dotted lines denote the 95% confidence interval of unbiased in-sample effect size estimates with the null model.*

-----------------------

<img src="https://github.com/spisakt/BWAS_comment/blob/master/fig/other_models_and_features_lc.png" width="700">

**Figure 2. Replicable multivariate BWAS with a few hundred participants.***

*(a) Unbiased In-sample vs. out-of-sample effect sizes improve when predicting cognitive ability in the Human Connectome Project with enhanced connectivity features (partial correlation, instead of Pearson) and machine learning models (Ridge regression instead of PCA+SVR), as based on previous recommendations7–9. Learning curves (b) shows that, without cross-validation, in-sample effect sizes are severely inflated (orange curves). However, this inflation is a consequence of the so-called benign overfitting15; in sample cross-validated (blue) effect sizes are not inflated, but rather slightly pessimistic, as compared to the out-of-sample effect size estimates. As a consequence, replication probability (c) and statistical power (d) in multivariate BWAS may be sufficient at sample sizes of a few hundreds, as demonstrated for six different target variables (age, cognitive ability, fluid intelligence, inhibition (flanker), cognitive flexibility and episodic memory) from the Human Connectome Project.*


