\name{estimateB}
\alias{estimateB}
\title{ML Estimation of Laplace Beta}
\description{Estimates initial value of parameter Beta from the PTL distribution used in LCA analysis.}
\usage{estimateB(x)}
\arguments{
        \item{x}{Numeric vector of differences between the values of each feature, for a pair of objects in the dataset.}
}
\details{Calculates maximum-likelihood estimate for Beta in the Laplace distribution fit to distribution of \code{x}. }
\value{Numeric value for initial estimate of PTL distribution parameter \code{Beta}}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
