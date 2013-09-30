\name{getPTLparams}
\alias{getPTLparams}
\title{Find best values of PTL parameters}
\description{Finds parameters \code{alpha}, \code{beta} and \code{gamma} in PTL model to fit an observed distribution of differences in each feature's values between two given objects from a dataset.}
\usage{getPTLparams(x1,x2)}
\arguments{
        \item{x1}{Numeric data input vector, standardised to range (0,1)}
	\item{x2}{Numeric data input vector, standardised to range (0,1)}
}
\details{Uses iterative NLS fitting to determine parameters of PTL model to represent the distribution of the differences observed between two objects selected from the dataset being analysed with LCA.}
\value{List with the following elements:
	\item{d}{Numeric value specifying pair-wise global distance between objects \code{x1} and \code{x2}}
	\item{beta}{Numeric value specifying value of parameter \code{beta} in best PTL fit}
	\item{alpha}{Numeric value specifying value of parameter \code{alpha} in best PTL fit}
	\item{gamma}{Numeric value specifying value of parameter \code{gamma} in best PTL fit}
}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
