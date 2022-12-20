
[![GitHub license](https://img.shields.io/github/license/spisakt/bwas_comment.svg)](https://github.com/spisakt/bwas_comment/blob/master/LICENSE)
[![GitHub release](https://img.shields.io/github/release/spisakt/bwas_comment.svg)](https://github.com/spisakt/bwas_comment/releases/)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/spisakt/BWAS_comment/HEAD)

### Complete analysis source code for:

## Replicable Multivariate BWAS with moderate sample sizes

*Tamas Spisak, Ulrike Bingel, Tor Wager, Nature, 2022*

-------------------

### **Project webpage:**
[spisakt.github.io/BWAS_comment](https://spisakt.github.io/BWAS_comment)

-------------------

### **How to get the data?**
- Option 1: contact the authors for credentials and get it with [get_data.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/get_data.ipynb) in one minute.
- Option 2: Get the data manually from  [ConnectomeDB](https://db.humanconnectome.org). See [hcp_data/readme.md](https://github.com/spisakt/BWAS_comment/blob/master/hcp_data/readme.md) for details.

-------------------

### **How to get the analyses run with 1 click (in the cloud)?**

Click here (and be patient): [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/spisakt/BWAS_comment/HEAD)

### **How to get the analyses run in 5 mins (locally on your computer)?**
- install [docker](https://www.docker.com/)
- run `docker run -it -p 8080:8080 -p 8888:8888 tspisak/bwas:latest jupyter notebook`
- copy paste the last link in your browser.

-------------------

### What is what in the repository?

**Main analysis notebooks:** 
- [get_data.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/get_data.ipynb)
- [multivariate_BWAS_replicability_analysis_FC.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC.ipynb)
- [multivariate_BWAS_replicability_analysis_FC.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC.ipynb)
- [multivariate_BWAS_replicability_analysis_FC_hires.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC_hires.ipynb)

**Plotting results:**
- [plot_results_FC.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/plot_results_FC.ipynb)

**Extended analysis: replicability of 52 phenotypes:**
multivariate_BWAS_replicability_analysis_FC_extensive.ipynb

**Supplementary analysis notebooks:** 
- [multivariate_BWAS_replicability_analysis_FC_motion.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_FC_motion.ipynb)
- [multivariate_BWAS_replicability_analysis_CT.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/multivariate_BWAS_replicability_analysis_CT.ipynb)
- [plot_results_CT.ipynb](https://github.com/spisakt/BWAS_comment/blob/master/plot_results_CT.ipynb)

**Data:** HCP1200 release
Data source: [ConnectomeDB](https://db.humanconnectome.org).
See [hcp_data/readme.md](https://github.com/spisakt/BWAS_comment/blob/master/hcp_data/readme.md)

-------------------

### How to cite?

*T. Spisak, U. Bingel, T. Wager, Multivariate BWAS can be replicable with moderate sample sizes in some cases, accepted in Nature*

