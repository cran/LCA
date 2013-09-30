\name{PTL}
\alias{PTL}
\alias{dPTL}
\alias{pPTL}
\title{Polynomial-Tail Laplace}
\description{Probability density and distribution functions for Polynomial-Tail Laplace distribution}
\usage{
dPTL(x,alpha,beta,gamma)
pPTL(q,alpha,beta,gamma)
}
\arguments{
        \item{x,q}{Numeric vector of quantiles}
	\item{alpha}{Linear tail adjustment coefficient for PTL distribution}
	\item{beta}{Exponential decay term for PTL distribution, similar to \code{beta} parameter in Laplace distribution}
	\item{gamma}{Polynomial tail adjustment coefficient for PTL distribution}
}
\details{The PTL distribution has density
\deqn{
	f(x) =  \left\{\begin{array}{cc}
		0 & x < -2\\
		\displaystyle \frac{\alpha(\frac{x^2}{2}+2x+2) + \beta(e^{\frac{x}{\beta}}-e^{\frac{-2}{\beta}}) + \gamma(\frac{x^3}{3}+4x+\frac{16}{3})}{4\alpha + 2\beta(1-e^{\frac{-2}{\beta}}) + \frac{32\gamma}{3}} & -2 \leq x \leq 0\\
		\displaystyle \frac{\alpha(2x-\frac{x^2}{2}-2) + \beta(e^{\frac{-2}{\beta}}-e^{\frac{x}{\beta}}) + \gamma(4x-\frac{x^3}{3}-\frac{16}{3})}{4\alpha + 2\beta(1-e^{\frac{-2}{\beta}}) + \frac{32\gamma}{3}} & 0 < x \leq 2\\
		1 & x > 2
	\end{array}\right.
}
}
\value{
	\code{dnorm} gives the density,
	\code{pnorm} gives the distribution function.

	The length of the result is the maximum of the lengths of the numerical parameters for the other functions.
	The numerical parameters are recycled to the length of the result.
}
\author{Ed Curry \email{e.curry@imperial.ac.uk}}
