GSE96058 R Data Package
================

-----

[![Travis build
status](https://travis-ci.com/12379Monty/GSE96058.svg?branch=master)](https://travis-ci.com/12379Monty/GSE96058)

<!-- README.md is generated from README.Rmd. Please edit that file -->

This package contains data from NCBI GEO [Series
GSE96058](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE96058).
See Breffer at al. (2018) \[[1](#ref-Brueffer:2018aa)\]. \#\#\# UP TO
HERE Data methylation profiles were collected to investigate genome-wide
mapping of 5-hydroxymethylcytosines in circulating cell-free DNA as
reported in Cai et al. (2019)
(<https://gut.bmj.com/content/68/12/2195>).

<!-- [@Cai:2019aa] pandoc citations dont work on github (github_document?) -->

## Data sets

``` r
  library(GSE96058)

  tmp <- data(package='GSE96058')
  knitr::kable(tmp$results[, c("Item", "Title")])
```

## Installation

``` r
# install.packages("devtools")
devtools::install_github("12379Monty/GSE96058")
```

## Example

``` r
library(magrittr)
library(GSE96058)
```

<br/>

  - sampType is used to distinguish blood from tissue samples. The
    latter can be tumor or tumor adjacent (sampType==TI).

<!-- end list -->

``` r
with(sampDesc, table(sampType, trainValGroup, exclude=NULL))
```

<br/>

  - For blood samples, outcome is specific Dx which can be used to
    investigate 5hmc profile differences between healthy, benign and
    malignant samples.

<!-- end list -->

``` r
with(sampDesc %>% dplyr::filter(sampType=='blood'), 
     table(outcome, trainValGroup, exclude=NULL))
```

<br/>

  - outcome2 pools Benign+Healthy and Cirrhosis+CHB.

<!-- end list -->

``` r
with(sampDesc %>% dplyr::filter(sampType=='blood'), 
     table(outcome2, trainValGroup, exclude=NULL))
```

<br/>

  - outcome3 is HCC vs the rest.

<!-- end list -->

``` r
with(sampDesc %>% dplyr::filter(sampType=='blood'), 
    table(outcome3, trainValGroup, exclude=NULL))
```

<br/>

  - sampDesc is used to provide sample information for the feature count
    data.

<!-- end list -->

``` r
TUTI_samdesc <- sampDesc[colnames(TUTI_featureCount),]

with(TUTI_samdesc, table(sampType, tissueSubtype,exclude=NULL))

par(mfrow=c(2,1), mar=c(4,3,2,3),oma=c(0,0,2,0))
for(ST in unique(TUTI_samdesc$sampType)){
  ST_ndx <- which(TUTI_samdesc$sampType==ST)
  boxplot(log2(TUTI_featureCount+1)[,ST_ndx], outline=F, las=2, 
          ylab='log2(count+1)', xaxt='n')
  axis(side=1, outer=F, at=1:length(ST_ndx), 
       label=TUTI_samdesc$title[ST_ndx],las=2)
  title(paste('sampType =', ST)) 

  sample_median <- apply(log2(TUTI_featureCount[,ST_ndx]+1),2,median)
  abline(h=median(sample_median), col='green')
  axis(side=4, at=round(median(sample_median),1),las=2, 
       col.axis='green', line=-0.5,tick=F)
 
}
 
```

## Package page

  - <https://12379monty.github.io/GSE96058/>

<!-- DOESNT WORK WITH GITHUB
## References
<div id="refs"></div>
-->

-----

Please note that the ‘GSE96058’ project is released with a [Contributor
Code of Conduct](.github/CODE_OF_CONDUCT.md). By contributing to this
project, you agree to abide by its terms.

<!--

Rscript -e "rmarkdown::render('README.Rmd')"

# nohup Rscript -e "rmarkdown::render('README.Rmd')" > README.log  &


-->

<div id="refs" class="references">

<div id="ref-Brueffer:2018aa">

1\. Brueffer, C., Vallon-Christersson, J., Grabau, D., Ehinger, A.,
Häkkinen, J., Hegardt, C., Malina, J., Chen, Y., Bendahl, P.-O., and
Manjer, J. *et al.* Clinical value of rna sequencing-based classifiers
for prediction of the five conventional breast cancer biomarkers: A
report from the population-based multicenter sweden cancerome analysis
network-breast initiative. JCO precision oncology *2*, PO.17.00135.
Available at: <https://pubmed.ncbi.nlm.nih.gov/32913985>.

</div>

</div>
