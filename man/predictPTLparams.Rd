\name{predictPTLparams}
\alias{predictPTLparams}
\title{Predict Values for PTL Model}
\description{Generates parameter values for PTL model, based on a specified value of the hyperparameter}
\usage{predictPTLparams(d,PTLmodel)}
\arguments{
	\item{d}{Numeric value specifying global dissimilarity between the selected objects}
	\item{PTLmodel}{List, as returned by the function \code{fitPTLmodel}, with named elements \code{alpha}, \code{beta} and \code{gamma} specifying linear models for PTL parameter prediction.}
}
\details{Uses hyperparameter-based prediction linear models, calibrated to the dataset being analysed using the \code{fitPTLmodel} function, to estimate PTL model parameters for a pair of objects in the dataset with a global dissimilarity \code{d}.}
\value{List with elements:
	\item{alpha}{Numeric value specifying the parameter \code{alpha} in the PTL model used to estimate distribution of differences between the given objects}
	\item{beta}{Numeric value specifying the parameter \code{beta} in the PTL model used to estimate distribution of differences between the given objects}
	\item{gamma}{Numeric value specifying the parameter \code{gamma} in the PTL model used to estimate distribution of differences between the given objects}
}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
