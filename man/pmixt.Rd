\name{pmixt}
\alias{pmixt}
\title{ 
Cumulative distribution function of mixture model.
}
\description{
Computes cdf of the mixture model.
}
\usage{
pmixt(q, phi, spec1, arg1, spec2, arg2, lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{q}{
scalar or vector of values to compute the cdf.
}
  \item{phi}{
the value of \eqn{\phi} parameter, \eqn{\phi>0}.
}

  \item{spec1}{
a character string specifying the first parent distribution (for example, "lnorm" if 
the parent distribution corresponds to the lognormal).
}

  \item{arg1}{
list of arguments/parameters of the first parent distribution.
}

  \item{spec2}{
a character string specifying the second parent distribution (for example, "exp" if
 the parent distribution corresponds to the exponential).
}

  \item{arg2}{
list of arguments/parameters of the second parent distribution.
}
  \item{lower.tail}{
logical; if \code{TRUE}, cdf are returned, otherwise 1-cdf.
}

  \item{log.p}{
logical; if \code{TRUE}, probabilities returned are given as log(cdf).
}
}
\details{
The cdf of mixture model has a general form of:
\deqn{
F(x) = \\frac{1}{1+\phi} \left(G_{1}(x) + \phi G_{2}(x) \right)
}
where \eqn{x} follows the support of parent distributions, \eqn{\phi} is the weight component and \eqn{G_{i}(x)} for \eqn{i=1,2} are the cdfs of first and second parent distributions, respectively.
}

\value{

An object of the same length as \code{q}, giving the cdf values computed at \code{q}.

}

\references{

Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Pearson, K. (1894). Contributions to the mathematical theory of evolution. Philosophical Transactions of the Royal Society of London. A, 71-110.
}

\author{
Shaiful Anuar Abu Bakar
}
\examples{
x=runif(10, min=0, max=1)
y=pmixt(x, phi=0.5, spec1="lnorm", arg1=list(meanlog=1,sdlog=2), spec2="exp", 
        arg2=list(rate=2) )
}