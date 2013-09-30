\name{LCD}
\alias{LCD}
\title{Localised Co-Dependency Estimates}
\description{Evaluates Statistical Significance of Localised Co-Dependency (LCD)}
\usage{LCD(x1,x2,seed.row,PTLmodel)}
\arguments{
        \item{x1}{Numeric data vector giving values of all features for one selected object}
	\item{x2}{Numeric data vector giving values of all features for another selected object}
	\item{seed.row}{Numeric value specifying which row of data table to use as 'seed' feature with which to evaluate co-dependency}
        \item{PTLmodel}{List with named elements \code{alpha}, \code{beta} and \code{gamma} specifying PTL parameters}
}
\details{Function to evaluate LCD, between two selected objects, for all features in a dataset against the feature represented by \code{seed.row}.}
\value{Numeric vector giving p-values for significance estimates of localised co-dependency, with the feature specified by \code{seed.row}, of all features in the dataset being analysed.}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
