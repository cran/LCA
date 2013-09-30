\name{fitPTLmodel}
\alias{fitPTLmodel}
\title{Calibrate Polynomial-Tail Laplace (PTL) model prdictions for LCA analysis}
\description{Fits PTL models to randomly sampled pairs of the dataset, to enable prediction of PTL model parameter values based on hyperparameter \code{d}.}
\usage{fitPTLmodel(x,nPairs=10000)}
\arguments{
        \item{x}{Numeric data input array, standardised to range (0,1)}
	\item{nPairs}{Numeric value specifying the number of samplings of pairs of objects to use to obtain hyperparameter fits}
}
\details{Evaluates parameters for PTL model fits to the distributions of feature-wise differences between each of a specified (large) number of pairs of objects represented in dataset \code{x}. Obtains subsequent model fits explaining the individual PTL parameters \code{alpha},\code{beta},\code{gamma} in terms of the global (Euclidean) distances between the corresponding pairs of objects.}
\value{List with the following components:
	\item{alpha}{Object of class \code{lm}, which can be used to predict an appropriate value of \code{alpha} in the PTL distribution corresponding to a pair of objects in the dataset with a specified global dissimilarity}
	\item{beta}{Object of class \code{lm}, which can be used to predict an appropriate value of \code{alpha} in the PTL distribution corresponding to a pair of objects in the dataset with a specified global dissimilarity}
	\item{gamma}{Object of class \code{lm}, which can be used to predict an appropriate value of \code{alpha} in the PTL distribution corresponding to a pair of objects in the dataset with a specified global dissimilarity}
}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
