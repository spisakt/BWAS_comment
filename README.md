
[![GitHub license](https://img.shields.io/github/license/spisakt/BWAS_comment.svg)](https://github.com/spisakt/BWAS_comment/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/spisakt/BWAS_comment.svg)](https://github.com/spisakt/BWAS_comment/releases/)

### Source code for:

## Replicable Multivariate BWAS with moderate sample sizes


**Main analysis notebooks:** 
- [multivariate_BWAS_replicability_analysis_FC.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC.ipynb)
- [multivariate_BWAS_replicability_analysis_FC_hires.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC_hires.ipynb)

**Plotting results:**
- [plot_results_FC.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/plot_results_FC.ipynb)

**Supplementary analysis notebooks:** 
- [multivariate_BWAS_replicability_analysis_FC_motion.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC_motion.ipynb)
- [multivariate_BWAS_replicability_analysis_CT.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_CT.ipynb)
- [plot_results_CT.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/plot_results_CT.ipynb)

**Data:** HCP1200 release
Data source: [ConnectomeDB](https://db.humanconnectome.org).
See [hcp_data/readme.md](https://github.com/spisakt/BWAS_comment/blob/master/hcp_data/readme.md)

## Main results

<img src="https://github.com/spisakt/BWAS_comment/blob/master/fig/main_fig.png" width="800">

***Figure 1. Multivariate BWAS provide unbiased effect sizes and high replicability with low-moderate sample sizes.***
*(a) In-sample effects in multivariate BWAS are only inflated if estimates are obtained without cross-validation. (b) Cross-validation fully eliminates in-sample effect size inflation and, as a consequence, provides higher replicability. Each point in (a) and (b) corresponds to one bootstrap subsample, as in Fig. 4b of Marek et al. Dotted lines denote the threshold for p=0.05 with n=495. (c) The inflation of in-sample effect size obtained without cross-validation (red) is reduced, but does not disappear, at higher sample sizes. Conversely, cross-validated estimates (blue) are slightly pessimistic with low sample sizes and become quickly unbiased as sample size is increased. (d) Without cross-validation, in-sample effect size estimates are non-zero (r≈0.5, red) even when predicting permuted outcome data. Cross-validation eliminates systematic bias across all sample sizes (blue).  Dashed lines in (c) and (d) denote 95% parametric confidence intervals, and shaded areas denote bootstrap and permutation-based confidence intervals. (e-f) Cross-validated analysis reveals that sufficient in-sample power (e) and out-of-sample replication probability (P(rep)) (f) can be achieved for a variety of phenotypes at low or moderate sample sizes. 80% power and P(rep) are achievable in <500 participants for half the phenotypes tested (colored bars) using the prediction algorithm in Marek et al. (top panels in (e) and (f), sample size required for 80% power or P(rep) shown). Other phenotypes require sample sizes >500 (bars with arrows). Power and P(rep) can be substantially improved with a ridge regression-based model recommended in some comparison studies10,11 (bottom panels in (e) and (f)), with 80% power and P(rep) with sample sizes as low as n=100 and n=75, respectively, when predicting cognitive ability, and sample sizes between 75 and 375 for other investigated variables, except inhibition assessed with the flanker task. (g) We estimated interactions between sample size and publication bias by computing effect size inflation (r_discovery - r_replication) only for those bootstrap cases where prediction performance was significant (p>0.05) in the replication sample. Our analysis shows that the effect size inflation due to publication bias is modest (<10%) with <500 participants for half the phenotypes using the Marek et al. model and all phenotypes but the flanker using the ridge model.*
