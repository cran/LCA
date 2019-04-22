\name{LCA}
\alias{LCA}
\title{Localised Co-dependency Analysis}
\description{Performs Localised Co-dependency Analysis}
\usage{LCA(x,PTLmodel,clique,seed.row,combine.method="Fisher",
adjust.method="BH",comparison.alpha=0.05)}
\arguments{
        \item{x}{Numeric data input array, standardised to range (0,1)}
        \item{PTLmodel}{List with named elements \code{alpha}, \code{beta} and \code{gamma} specifying PTL parameters}
	\item{clique}{Numeric vector specifying which columns of data table represent entities defining the clique across which to evaluate co-dependency}
	\item{seed.row}{Numeric value specifying which row of data table to use as 'seed' feature with which to evaluate co-dependency}
	\item{combine.method}{Character specifying which method to use for combining individual LCD estimates. One of "Fisher" or "Inverse Product".}
	\item{adjust.method}{Character specifying which method to use for multiple testing adjustment of significance estimates. See \code{p.adjust} for further details.}
	\item{comparison.alpha}{Significance level threshold for including objects in the set to be used for evaluating LCD significance estimates for a given pair of features in a given clique.}
}
\details{Function to evaluate LCD, within the members of \code{clique}, for all features in a dataset against the feature represented by \code{seed.row}.}
\value{List with elements:
	\item{LCD}{Data frame giving across-clique LCD significance estimates for each feature in the dataset, as both unadjusted p-value and adjusted for multiple testing.}
	\item{combinations}{An array detailing the individual pair-wise LCD tests performed amongst members of the clique, which were combined to give the overall significance estimates}
}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
\examples{
suppressWarnings(RNGversion("3.5.0"))
## create a data matrix

x <- array(runif(1200),dim=c(40,12))

## implant similarity across a 'clique'

clique.cols <- sample(ncol(x),4)
x[,clique.cols] <- x[,clique.cols] + rnorm(nrow(x))

## scale x to (0,1)

x[x<0] <- 0
x[x>1] <- 1

## choose a 'seed' feature and some partner

seed.row <- sample(nrow(x),1)
partner.row <- sample(setdiff(c(1:nrow(x)),seed.row),1)

x[c(seed.row,partner.row),clique.cols] <- x[c(seed.row,partner.row),clique.cols] + 
rep(rnorm(length(clique.cols)),each=2)

## calibrate PTL models to dataset

PTL.fit <- fitPTLmodel(x,nPairs=15)

## evaluate LCD between 'seed' feature and all other features
 
LCA.result <- LCA(x,PTLmodel=PTL.fit,clique=clique.cols,seed.row=seed.row)
\dontrun{head(LCA.result$LCD)}

}
