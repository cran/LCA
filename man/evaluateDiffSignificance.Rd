\name{evaluateDiffSignificance}
\alias{evaluateDiffSignificance}
\title{Evaluate Statistical Significance of an Observed Difference Between Two Objects}
\description{Use PTL model to estimate the significance of a difference between the values of some feature of interest in two selected objects from a dataset.}
\usage{evaluateDiffSignificance(d,diff,PTLmodel)}
\arguments{
	\item{d}{Numeric value specifying global dissimilarity between the selected objects}
	\item{diff}{Numeric value specifying magnitude of difference between the values of a selected feature of interest in the selected objects}
	\item{PTLmodel}{List, as returned by the function \code{fitPTLmodel}, with named elements \code{alpha}, \code{beta} and \code{gamma} specifying linear models for PTL parameter prediction.}
}
\details{Evaluates statistical significance of observing as great a difference as that observed between the values of a selected feature of interest in the selected objects, given the global dissimilarity between those objects and the PTL models fitted to characterise these distributions across the whole dataset.}
\value{Numeric value giving p-value representing significance estimate of the observed difference, given the fitted models.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
