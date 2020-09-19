#' A data frame describing the samples in the GSE96058 dataset
#'
#' Data frame with 3409 rows and 36 variables describing samples 
#'
#' @format sampDesc is a data frame with 3409 rows and 36 variables:
#' \describe{
#'   \item{geoAcc}{             : chr  "GSM2528079" "GSM2528080" "GSM2528081" "GSM2528082" ...  }
#'   \item{title}{              : chr  "F1" "F2" "F3" "F4" ...  }
#'   \item{isRepl}{             : logi  FALSE FALSE FALSE FALSE FALSE FALSE ...  }
#'   \item{sampNo}{             : num  1 2 3 4 5 6 9 10 11 12 ...  }
#'   \item{bioSample}{          : chr  "SAMN06556824" "SAMN06556986" "SAMN06556985" "SAMN06556984" ...  }
#'   \item{source_name}{        : chr  "Primary breast tumor" "Primary breast tumor" "Primary breast tumor" "Primary breast tumor" ...  }
#'   \item{organism}{           : chr  "Homo sapiens" "Homo sapiens" "Homo sapiens" "Homo sapiens" ...  }
#'   \item{characteristics}{    : chr  "scan-b external id: Q008818.C008840.S000215.l.r.m2.c.lib.g.k.a.t" "scan-b external id: Q008769.C008792.S000250.l.r.m.c.lib.g.k.a.t" "scan-b external id: Q008568.C008577.S000424.l.r.m3.c.lib.g.k.a.t" "scan-b external id: Q008909.C009000.S000084.l.r.m.c.lib.g.k.a.t" ...  }
#'   \item{molecule}{           : chr  "polyA RNA" "polyA RNA" "polyA RNA" "polyA RNA" ...  }
#'   \item{extract_protocol}{   : chr  "QIAGEN AllPrep" "QIAGEN AllPrep" "QIAGEN AllPrep" "QIAGEN AllPrep" ...  }
#'   \item{taxid}{              : chr  "9606" "9606" "9606" "9606" ...  }
#'   \item{ageAtDx}{            : num  43 48 69 39 73 40 82 67 71 64 ...  }
#'   \item{chemo_treated}{      : chr  "1" "1" "1" "1" ...  }
#'   \item{endocrine_treated}{  : chr  "0" "1" "1" "1" ...  }
#'   \item{er_MGC}{             : chr  "0" "1" "1" "1" ...  }
#'   \item{er_SGC}{             : chr  "0" "1" "1" "1" ...  }
#'   \item{er_Status}{          : chr  "NA" "1" "1" "1" ...  }
#'   \item{her2_MGC}{           : chr  "0" "0" "0" "1" ...  }
#'   \item{her2_SGC}{           : chr  "0" "0" "0" "1" ...  }
#'   \item{her2_Status}{        : chr  "0" "0" "0" "1" ...  }
#'   \item{instrument_model}{   : chr  "HiSeq 2000" "HiSeq 2000" "HiSeq 2000" "HiSeq 2000" ...  }
#'   \item{ki67_MGC}{           : chr  "1" "0" "1" "1" ...  }
#'   \item{ki67_SGC}{           : chr  "1" "0" "1" "1" ...  }
#'   \item{ki67_Status}{        : chr  "NA" "NA" "NA" "NA" ...  }
#'   \item{lymphNode_group}{    : chr  "NodeNegative" "1to3" "4toX" "1to3" ...  }
#'   \item{lymphNode_Status}{   : chr  "NodeNegative" "NodePositive" "NodePositive" "NodePositive" ...  }
#'   \item{nhg_MGC}{            : chr  "G3" "G2" "G3" "G3" ...  }
#'   \item{nhg}{                : chr  "G3" "G2" "G3" "G3" ...  }
#'   \item{ovrallSurvDays}{     : num  2367 2367 2168 2416 2389 ...  }
#'   \item{ovrallSurvEvent}{    : chr  "0" "0" "1" "0" ...  }
#'   \item{pam50_subtype}{      : chr  "Basal" "LumA" "LumB" "LumA" ...  }
#'   \item{pgr_MGC}{            : chr  "0" "1" "1" "1" ...  }
#'   \item{pgr_SGC}{            : chr  "0" "1" "1" "1" ...  }
#'   \item{pgr_Status}{         : chr  "NA" "1" "1" "NA" ...  }
#'   \item{scan.b_external_id}{ : chr  "Q008818.C008840.S000215.l.r.m2.c.lib.g.k.a.t" "Q008769.C008792.S000250.l.r.m.c.lib.g.k.a.t" "Q008568.C008577.S000424.l.r.m3.c.lib.g.k.a.t" "Q008909.C009000.S000084.l.r.m.c.lib.g.k.a.t" ...  }
#'   \item{tumor_size}{         : num  9 14 27 51 60 13 10 6 16 17 ...  }
#' }
"sampDesc"

#' A data frame with one column describing data processing in GSE96058
#'
"data_processing"

#' A matrix of gene expression for replicated samples - replicate 1
#'
#' geneExpression_repl1 - a matrix of gene expression for replicated samples - replicate 1
#'    rows are feature; columns are samples.
"geneExpression_repl1"

#' A matrix of gene expression for replicated samples - replicate 2
#'
#' geneExpression_repl2 - a matrix of gene expression for replicated samples - replicate 1
#'    rows are feature; columns are samples.
"geneExpression_repl2"

#' A matrix of gene expression for replicated samples - replicate 2
#'
#' geneExpression_repl2 - a matrix of gene expression for replicated samples - replicate 1
#'    rows are feature; columns are samples.
"geneExpression_repl2"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub2 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub2"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub3 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub3"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub4 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub4"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub5 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub5"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"

#' A matrix of gene expression for a random subset  of samples balanced according to pam50 category
#'
#' geneExpression_sub1 - a matrix of gene expression for random subset  of samples balanced according to pam50 category
#'    rows are feature; columns are samples.
"geneExpression_sub1"


#' A data frame describing the features
#'
#' Data frame with 30865 rows and 8 variables describing features
#'
#' @format genes_annot is a data frame with 30865 rows and 8 variables:
#' \describe{
#'   item{geneSymbol}{             : chr  "5_8S_rRNA" "5S_rRNA" "6M1-18" "7M1-2" ...}
#'   item{strand}{                 : Factor w/ 3 levels "-","+",".": NA NA NA NA NA 1 NA 1 1 NA ...}
#'   item{gene_id}{                : chr  NA NA NA NA ...}
#'   item{knownToRefSeq}{          : chr  NA NA NA NA ...}
#'   item{knownIsoformsClusterID}{ : int  NA NA NA NA NA 22715 NA 4592 8667 NA ...}
#'   item{chr}{                    : chr  NA NA NA NA ...}
#'   item{start}{                  : int  NA NA NA NA NA 58346805 NA 50799408 9067707 NA ...}
#'   item{end}{                    : int  NA NA NA NA NA 58353499 NA 50885675 9115962 NA ...}

#' }
"genes_annot"





