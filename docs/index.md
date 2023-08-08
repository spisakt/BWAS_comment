In a [recent Nature paper](https://doi.org/10.1038/s41586-022-04492-9), Marek, Tervo-Clemmens (T-C) et al. evaluated the effects of sample size on univariate and multivariate *Brain-Wide Association Studies (BWAS)* in three large-scale neuroimaging datasets and came to the general conclusion that 

![image](https://user-images.githubusercontent.com/21124251/209202814-3c8bbc78-0800-42ba-b721-f063d1bc2582.png) **BWAS reproducibility requires samples with thousands of individuals**. 

But is this always the case? Let's have a closer look at the replicability of functional connectivity-based multivariate BWAS in the Human Connectome Project, **with N=500**:
 
### Replicability and predictive effect size at N=500
{% include figure_fd.html %}
{% include pie_fd.html %}   

*Interactive figures, no motion-bias (p>0.05 for all, tested with [mlconfound](https://mlconfound.readthedocs.io/en/latest/)). See [analysis notebook](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC_extensive_motion.ipynb).*

![image](https://user-images.githubusercontent.com/21124251/209199998-00f467fd-491f-4ac1-b35e-a6b8484691e4.png)
Appearantly, **BWAS can be replicable with moderate sample sizes in many cases...**

If you wonder how to interpret these findings in light of Marek, T-C et al.'s results:

-----------------

## 1. Check out our commentary

[**"Multivariate BWAS can be replicable with moderate sample sizes"**](https://www.nature.com/articles/s41586-023-05745-x)

*by [Tamas Spisak](https://pni-lab.github.io/), [Ulrike Bingel](https://www.bingellab.de/people/) & [Tor Wager](https://sites.dartmouth.edu/canlab/), Nature, 615, E4–E7 (2023)* doi: [10.1038/s41586-023-05745-x](https://doi.org/10.1038/s41586-023-05745-x)

-----------------

## 2. Watch the video abstract

{% include youtube.html id="sFDRh_AfjkI" %}

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
  - Externally validate on independent (prospective) data.
- Large samples are still essential:
  - to maximize predictive performance
  - to evaluate 
    - generalizability (e.g. out-of-center, out-of-context)
    - confounding bias (e.g. motion; can be tested with [mlconfound](https://mlconfound.readthedocs.io/en/latest/))
    - fairness (across subpopulations)

### <a name="links"></a> **Links**
- The original paper: [Marek, S., Tervo-Clemmens, B., Calabro, F.J. et al. Reproducible brain-wide association studies require thousands of individuals. Nature 603, 654–660 (2022)](https://doi.org/10.1038/s41586-022-04492-9)
- Our commentary: [Spisak, T., Bingel, U. & Wager, T.D. Multivariate BWAS can be replicable with moderate sample sizes. Nature 615, E4–E7 (2023). https://doi.org/10.1038/s41586-023-05745-x](https://www.nature.com/articles/s41586-023-05745-x)
- [Analysis code on github](https://github.com/spisakt/BWAS_comment)


### **Other papers in the topic**


| Authors                               | Title                                                                                                      | Where                                                                                                               |
|---------------------------------------|------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| Nature editorial                 | Cognitive neuroscience at the crossroads                                                                  | [Nature](https://www.nature.com/articles/d41586-022-02283-w)                                                |
| Nat. Neurosci. editorial          | Revisiting doubt in neuroimaging research                                                                  | [Nat. Neurosci.](https://www.nature.com/articles/s41593-022-01125-2)                                                |
| Monica D. Rosenberg and Emily S. Finn | How to establish robust brain–behavior relationships without thousands of individuals                      | [Nat. Neurosci.](https://www.nature.com/articles/s41593-022-01110-9)                                                |
| Bandettini P et al.                   | The challenge of BWAS: Unknown Unknowns in Feature Space and Variance                                      | [Med](http://www.thebrainblog.org/2022/07/04/the-challenge-of-bwas-unknown-unknowns-in-feature-space-and-variance/) |
| Gratton C. et al.                     | Brain-behavior correlations: Two paths toward reliability                                                  | [Neuron](https://www.cell.com/neuron/fulltext/S0896-6273(22)00363-4)                                                |
| Cecchetti L. and Handjaras G.         | Reproducible brain-wide association studies do not necessarily require thousands of individuals     | [psyArXiv](https://psyarxiv.com/c8xwe)                                                                              |
| Winkler A. et al.                     | We need better phenotypes                                                                                  | [brainder.org](https://brainder.org/2022/05/04/we-need-better-phenotypes/)                                          |
| DeYoung C. et al.                     | Reproducible between-person brain-behavior associations do not always require thousands of individuals                              | [psyArXiv](https://psyarxiv.com/sfnmk)                                                                              |
| Gell M et al.                         | The Burden of Reliability: How Measurement Noise Limits Brain-Behaviour Predictions                        | [bioRxiv](https://www.biorxiv.org/content/10.1101/2023.02.09.527898v1 )                                             |
| Tiego J. et al.                       | Precision behavioral phenotyping as a strategy for uncovering the biological correlates of psychopathology | [OSF](https://osf.io/geh6q/)                                                                                        |
| Chakravarty MM.                       | Precision behavioral phenotyping as a strategy for uncovering the biological correlates of psychopathology | [OHBM Aperture Neuro](https://www.humanbrainmapping.org/files/Aperture%20Neuro/BWAS_1_Introduction_Chakravarty.pdf)            | 
| White T.                       | Behavioral phenotypes, stochastic processes, entropy, evolution, and individual variability: Toward a unified field theory for neurodevelopment and psychopathology | [OHBM Aperture Neuro](https://www.humanbrainmapping.org/files/Aperture%20Neuro/BWAS_2_Commentary_White.pdf)            | 
| Bandettini P.                       | Lost in transformation: fMRI power is diminished by unknown variability in methods and people | [OHBM Aperture Neuro](https://www.humanbrainmapping.org/files/Aperture%20Neuro/BWAS_3_Commentary_Bandettini.pdf)            | 
| Thirion B.                       | On the statistics of brain/behavior associations | [OHBM Aperture Neuro](https://www.humanbrainmapping.org/files/Aperture%20Neuro/BWAS_4_Commentary_Thirion.pdf)           | 
| Tiego J., Fornito A.                     | Putting behaviour back into brain–behaviour correlation analyses | [OHBM Aperture Neuro](https://www.humanbrainmapping.org/files/Aperture%20Neuro/BWAS_5_Commentary_Tiego.pdf)            | 
| Lucina QU.                     | Brain-behavior associations depend heavily on user-defined criteria | [OHBM Aperture Neuro](https://www.humanbrainmapping.org/files/Aperture%20Neuro/BWAS_5_Commentary_Tiego.pdf) | 
| Valk SL., Hettner MD.                     | Commentary on 'Reproducible brain-wide association studies require thousands of individuals' | [OHBM Aperture Neuro](https://www.humanbrainmapping.org/files/Aperture%20Neuro/BWAS_7_Commentary_ValkHettwer.pdf)            | 
| Kong XZ., et al.                   | Scanning reproducible brain-wide associations: sample size is all you need? | [Psychoradiology](https://academic.oup.com/psyrad/article/2/3/67/6758324)            | 
| J. Goltermann, et al. | Cross-validation for the estimation of effect size generalizability in mass-univariate brain-wide association studies | [BioRxiv](https://www.biorxiv.org/content/10.1101/2023.03.29.534696v1.abstract) | 
| Kang K., et al. | Study design features that improve effect sizes in cross-sectional and longitudinal brain-wide association studies | [BioRxiv](https://doi.org/10.1101/2023.05.29.542742) |
| Makowski C., et al. | Reports of the death of brain-behavior associations have been greatly exaggerated |[BioRxiv](https://www.biorxiv.org/content/10.1101/2023.06.16.545340v1) |
| J. Wu et al.  | The challenges and prospects of brain-based prediction of behaviour | [Nat. Human Behaviour](https://www.nature.com/articles/s41562-023-01670-1) | 










[![image](https://user-images.githubusercontent.com/21124251/209312014-c678b6fd-285b-4ee6-ae68-7ef44e2bc8a9.png)]([https://www.uk-essen.de/en/](https://www.uk-essen.de/))
[![Dartmouth College](https://user-images.githubusercontent.com/21124251/209313115-331e3b93-e4b3-4c42-ae18-bba08b492e89.png)](https://home.dartmouth.edu/)

[![TRR289](https://user-images.githubusercontent.com/21124251/209311641-ab03af1f-67e8-49c0-b4b4-f43b9ae40996.png)](https://treatment-expectation.de/)
[![CTBNS](https://user-images.githubusercontent.com/21124251/209311740-2383f0cb-4b8e-4562-af97-7e8df268a0df.png)](https://c-tnbs.uk-essen.de/)
