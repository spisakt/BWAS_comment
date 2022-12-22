
{% include youtube.html id="ZRzgcT5Tads" %}

-----------------

A recent paper by Marek, Tervo-Clemmens (T-C) et al. [evaluated](https://doi.org/10.1038/s41586-022-04492-9) the effects of sample size on univariate and multivariate BWAS in three large-scale neuroimaging datasets and came to the general conclusion that 

- **“BWAS reproducibility requires samples with thousands of individuals”**. 

Let's [explore](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC_extensive.ipynb) the replicability of functional connectivity-based multivariate BWAS in the Human Connectome Poroject.

**with N=500**
 
{% include figure.html %}    

Appearantly, **BWAS can be replicable with moderate sample sizes in many cases...**

If might wonder how to interpret these findings in light of Marek, T-C et al.'s results?

## Check out our commentary: 

"Multivariate BWAS can be replicable with moderate sample sizes in some cases"
by Tamas Spisak, Ulrike Bingel & Tor Wager, Nature


## <a name="summary"></a> Summary

- Brain-wise Association Studies (BWAS) correlate individual differences in phenotypic traits with measures of brain structue and function.
- A recent paper by Marek, Tervo-Clemmens (T-C) et al. [evaluated](https://doi.org/10.1038/s41586-022-04492-9) the effects of sample size on univariate and multivariate BWAS in three large-scale neuroimaging datasets and came to the general conclusion that *“BWAS reproducibility requires samples with thousands of individuals”*. 
- Marek, T-C, et al. find that multivariate BWAS provide “inflated in-sample associations” that often fail to replicate (i.e., are underpowered) unless thousands of participants are included. This implies that effect size estimates from the discovery sample are necessarily inflated.
- In our 'Matter Arising' commentary, we distinguish between the effect size estimation method (in-sample vs. cross-validated) and the sample (discovery vs. replication), and show that with appropriate cross-validation the in-sample “inflation” Marek, T-C, et al. report in the discovery sample can be entirely eliminated. 
- With additional analyses, we demonstrate that multivariate BWAS effects in high quality datasets can be replicable with substantially smaller sample sizes in many cases. Specifically, with a standard multivariate prediction based on functional connectivity, BWAS is commonly replicable with N=75-500.

## Take Home Message
- Replicability depends on effect size
- Multivariate BWAS can provide high effect sizes
- ...

## <a name="links"></a> Links
- original paper
- commentary
- analysis code
- 
