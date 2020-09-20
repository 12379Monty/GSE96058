

<!--
 FN <- 'tmp'
 # Shotcuts for knitting and redering while in R session (Invoke interactive R from R/Scripts folder)
 kk <- function(n='') knitr::knit2html(paste("t", n, sep=''), envir=globalenv(),
       output=paste(FN,".html", sep=''))

 rr <- function(n='') rmarkdown::render(paste("t", n, sep=''), envir=globalenv(),
       output_file=paste(FN,".html", sep='')) ##, output_dir='Scripts')

 bb <- function(n='') browseURL(paste(FN,".html", sep=''))

 # The usual shotcuts
 zz <- function(n='') source(paste("t", n, sep=''))
-->


---

<!--
[![Travis build status](https://travis-ci.com/12379Monty/GSE96058.svg?branch=master)](https://travis-ci.com/12379Monty/GSE96058)
-->

<!-- README.md is generated from README.Rmd. Please edit that file -->

```{r global-options, include = FALSE}

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/README-",
  out.width = "100%"
)

 options(knitr.table.format = 'html')

```


This package contains data from NCBI GEO 
[Series GSE96058](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE96058).
3,678 patients with breast cancer (BC) were studied.  For 405 tumors, a comprehensive 
multi-rater histopathologic evaluation was performed. Using RNA-seq data, 
single-gene classifiers and multigene classifiers (MGCs) were trained on consensus 
histopathology labels. Trained classifiers were tested on a prospective 
population-based series of 3,273 BCs that included a median follow-up of 52 
months (Sweden Cancerome Analysis Network—Breast [SCAN-B], 
ClinicalTrials.gov identifier: NCT02306096), and results were evaluated by 
agreement statistics and Kaplan-Meier and Cox survival analyses. 
See  Brueffer et al. (2018) [@Brueffer:2018aa] for a detailed report
of the findings.

### User notes

* The data in NCBI GEO
[Series GSE96058](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE96058)
does not contain any of the training samples discussed in the Brueffer et al. (2018) [@Brueffer:2018aa]
paper.  This package therefore only contains samples from the prospective
population-based series of 3,273 BCs.

* The gene expression data are stored in several tables due to github file size
restrictions:
    - geneExpression_repl1, geneExpression_repl2: 30865 x 136 tables of 
counts for replicated samples
    - geneExpression_sub1-_sub5: 30865 x 626-629 tables of counts 
for random subsets of samples, balanced over pam scores.

For a description of `geneExpression` see **GSE96058_Data_Processing** below.  

<br/>

## Installation

``` r
# install.packages("devtools")
devtools::install_github("12379Monty/GSE96058")
```


## Data sets  

```{r dataSets, eval=T, echo=F}

library(magrittr)

tmp <- data(package='GSE96058')
knitr::kable(tmp$results[, c("Item", "Title")]) %>%
  kableExtra::kable_styling(full_width = F)


```


## Data Processing

The data processing step descriptions were extracted from the sample 
table in the GSE96058 dataset and stored as a separate data from
in the GSE96058 data package; `data_processing`

```{r data-processing, eval=T}

library(GSE96058)

knitr::kable(data_processing,
  row.names=F)  %>%
  kableExtra::kable_styling(full_width = F)

```



## Examples

### ER/PR/HER2 status

* To  identify breast cancer associated read-through fusion transcripts,
Varley et al. (2014) [@Varley:2014aa] analyzed the paired-end
RNA-seq data from of 168 breast samples, including 28 breast cancer
cell lines, 42 triple negative breast cancer primary tumors,
42 estrogen receptor positive breast cancer primary
tumors, and 56 non-malignant breast tissue samples. Data
are deposited in [GEO GSE58135](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE58135)

* Analyzing this dataset Li et al. (2018) [@Li:2018aa] identified 
797 DEGs uniquely expressed in triple negative BC (TNBC) and 1403 DEGs uniquely expressed 
in estrogen positive and HER2 negative BC (ER+HER2-BC).   

This dataset has a limited number of TNBC and ER+HER2-BC that could be examined
to verify the findings in Li et al. (2018) [@Li:2018aa]. 

```{r, eval=T}

library(magrittr)
library(GSE96058)

ER_PR_HER2_tbl <- with(sampDesc %>% 
 dplyr::filter(!isRepl & er_Status!='NA'  & pgr_Status!='NA' & her2_Status!='NA'),
 table(ER_PR_HER2=paste(er_Status, pgr_Status, her2_Status, sep='_'),
  exclude=NULL)
 )

 knitr::kable(ER_PR_HER2_tbl,
  caption="ER, PR and HER2 Status")  %>%
  kableExtra::kable_styling(full_width = F)


```

<br/>

###  ER status vs predicted value

* The GSE58135 dataset contains single gene and multi gene predictors
of ER/PR/HER2/ki67 status:    
        -  `r setdiff(grep('_Status', names(sampDesc), value=T),  'lymphNode_Status')`    
        -  `r grep('SGC', names(sampDesc), value=T)`   
        -  `r grep('MGC', names(sampDesc), value=T)`  


```{r er-status-pred}

SGC_tbl <- with(sampDesc,
 table(er_Status, er_SGC)
)
dimnames(SGC_tbl)[[1]] <- paste0('ER=', dimnames(SGC_tbl)[[1]])

MGC_tbl <- with(sampDesc,
 table(er_Status, er_MGC)
)
dimnames(MGC_tbl)[[1]] <- paste0('ER=', dimnames(MGC_tbl)[[1]])


knitr::kable(SGC_tbl, caption='ER Status - SGC Predictions')  %>%
  kableExtra::kable_styling(full_width = F)

knitr::kable(MGC_tbl, caption='ER Status - MGC Predictions')  %>%
  kableExtra::kable_styling(full_width = F)

```

<br/>

Similarly for PGR, HER2 and ki67.


<br/>



### Treatment and survival.

* The GSE58135 dataset contains treatment and survival data
