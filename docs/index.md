In a [recent Nature paper](https://doi.org/10.1038/s41586-022-04492-9), Marek, Tervo-Clemmens (T-C) et al. evaluated the effects of sample size on univariate and multivariate *Brain-Wide Association Studies (BWAS)* in three large-scale neuroimaging datasets and came to the general conclusion that 

![image](https://user-images.githubusercontent.com/21124251/209202814-3c8bbc78-0800-42ba-b721-f063d1bc2582.png) **BWAS reproducibility requires samples with thousands of individuals**. 

But is this always the case? Let's have a closer look at the replicability of functional connectivity-based multivariate BWAS in the Human Connectome Project, **with N=500**:
 
### Replicability and predictive effect size at N=500
{% include figure_fd.html %}
{% include pie_fd.html %}   

*Interactive figures, no motion bias, click here for [analysis notebook](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC_extensive_motion.ipynb).*

![image](https://user-images.githubusercontent.com/21124251/209199998-00f467fd-491f-4ac1-b35e-a6b8484691e4.png)
Appearantly, **BWAS can be replicable with moderate sample sizes in many cases...**

If you wonder how to interpret these findings in light of Marek, T-C et al.'s results:

-----------------

## 1. Check out our commentary

"Multivariate BWAS can be replicable with moderate sample sizes in some cases"
by Tamas Spisak, Ulrike Bingel & Tor Wager, accpeted in Nature (link comes soon)

-----------------

## 2. Watch the video abstract

{% include youtube.html id="ZRzgcT5Tads" %}

-----------------

## <a name="summary"></a> 3. Read more below

### **Summary**
- Brain-Wide Association Studies (BWAS) correlate individual differences in phenotypic traits with measures of brain structure and function.
- In a [recent paper](https://doi.org/10.1038/s41586-022-04492-9), Marek, Tervo-Clemmens (T-C) et al. evaluated the effects of sample size on univariate and multivariate BWAS in three large-scale neuroimaging datasets and came to the general conclusion that *“BWAS reproducibility requires samples with thousands of individuals”*. 
- Marek, T-C, et al. find that multivariate BWAS provide “inflated in-sample associations” that often fail to replicate (i.e., are underpowered) unless thousands of participants are included. This implies that effect size estimates from the discovery sample are necessarily inflated.
- In our 'Matter Arising' commentary, we distinguish between the effect size estimation method (in-sample vs. cross-validated) and the sample (discovery vs. replication), and show that with appropriate cross-validation the in-sample “inflation” Marek, T-C, et al. report in the discovery sample can be entirely eliminated. 
- With additional analyses, we demonstrate that multivariate BWAS effects in high quality datasets can be replicable with substantially smaller sample sizes in many cases. Specifically, with a standard multivariate predictive model, functional connectivity-based BWAS is commonly replicable with N=75-500.

### **Take Home Messages and Recommendations**
- Replicability depends on effect size:
  - [Only effects that explain less than 1% of variance require 1000s](https://github.com/spisakt/BWAS_comment/blob/master/sim_effect_size.ipynb)
  - Effect sizes depend on the amount, quality, homogeneity and reliability of both brain and phenotypic measures
- Multivariate BWAS (predictive modelling) can provide high effect sizes:
  - Go multivariate 
  - Follow methodological recommendations
  - Aim at traits (cognition, personality) rather than states (e.g. emotion)
  - Incorporate within-person variation in symptoms or behavior to improve between person predictions
  - Focus on larger effects, that are usueful for making individual predictions about individuals
- Validate Twice (internally and externally):
  - Perform internal validation during model discovery (e.g. cross-validation)
  - Finalize your model (including data preprocessing) and pre-register further validation
  - Externally validate on independnet (prospective) data.
- Large samples are still essential:
  - to maximize predictive performance
  - to evaluate 
    - generalizability (e.g. out-of-center, out-of-context)
    - confounding bias (e.g. motion; can be tested with [mlconfound](https://mlconfound.readthedocs.io/en/latest/))
    - fairness (across subpopulations)

### <a name="links"></a> **Links**
- The original paper: [Marek, S., Tervo-Clemmens, B., Calabro, F.J. et al. Reproducible brain-wide association studies require thousands of individuals. Nature 603, 654–660 (2022)](https://doi.org/10.1038/s41586-022-04492-9)
- Our commentary (link comes soon)
- [Analysis code on github](https://github.com/spisakt/BWAS_comment)

[![image](https://user-images.githubusercontent.com/21124251/209312014-c678b6fd-285b-4ee6-ae68-7ef44e2bc8a9.png)]([https://www.uk-essen.de/en/](https://www.uk-essen.de/))
[![Dartmouth College](https://user-images.githubusercontent.com/21124251/209313115-331e3b93-e4b3-4c42-ae18-bba08b492e89.png)](https://home.dartmouth.edu/)

[![TRR289](https://user-images.githubusercontent.com/21124251/209311641-ab03af1f-67e8-49c0-b4b4-f43b9ae40996.png)](https://treatment-expectation.de/)
[![CTBNS](https://user-images.githubusercontent.com/21124251/209311740-2383f0cb-4b8e-4562-af97-7e8df268a0df.png)](https://c-tnbs.uk-essen.de/)
