\name{getPTLExpectedCounts}
\alias{getPTLExpectedCounts}
\title{Predict Distribution of Feature-Wise Differences}
\description{Predicts the expected number of features with a difference between two objects of a given global dissimilarity lying within a set of specified ranges.}
\usage{getPTLExpectedCounts(alpha,beta,gamma,bin_limits,ntrials)}
\arguments{
	\item{alpha}{Numeric value specifying the parameter \code{alpha} in the PTL model used to estimate distribution of differences between the given objects}
	\item{beta}{Numeric value specifying the parameter \code{beta} in the PTL model used to estimate distribution of differences between the given objects}
	\item{gamma}{Numeric value specifying the parameter \code{gamma} in the PTL model used to estimate distribution of differences between the given objects}
	\item{bin_limits}{Numeric vector specifying the limits of each range to be evaluated. Effectively, this gives the breakpoints between cells of the predicted histogram.}
	\item{ntrials}{Numeric value specifying the number of features being evaluated in the dataset}
}
\details{Uses a PTL model with the specified parameters to estimate the expected number of features with differences between specified ranges. Used in calibration of PTL model parameter prediction to the dataset.}
\value{Numeric vector giving expected counts for numbers of features with a difference lying within the given set of specified ranges.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
