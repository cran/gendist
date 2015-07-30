\name{pfolded}
\alias{pfolded}
\title{ 
Cumulative distribution function of folded model.
}
\description{
Computes cdf of the folded model.
}
\usage{
pfolded(q, spec, arg, lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{q}{
scale or vector of values to compute the cdf.
}
  \item{spec}{
a character string specifying the parent distribution (for example, "norm" if the parent distribution correspond to the normal).
}

  \item{arg}{
list of arguments/parameters of the parent distribution.
}
  \item{lower.tail}{
logical; if \code{TRUE}, cdf are returned, otherwise 1-cdf.
}

  \item{log.p}{
logical; if \code{TRUE}, probabilities returned are given as log(cdf).
}
}
\details{
The cdf of folded model has a general form of:
\deqn{
F(x) = G(x) - G(-x) \quad x>0
}
where \eqn{G(x)} is the cdf of parent distribution.
}
\value{
An object of the same length as \code{q}, giving the cdf values computed at \code{q}.
}

\references{

S.A. Abu Bakar, S. Nadarajah, Z.A. ABSL Kamarul Adzhar, I. Mohamed. gendist: An R package for generated probability distribution models, submitted.
\cr
Brazauskas, V., & Kleefeld, A. (2011). Folded and log-folded-t distributions as models for insurance loss data. Scandinavian Actuarial Journal, 2011(1), 59-74.
}
\examples{
x=runif(10, min=0, max=1)
y=pfolded(x, spec="norm", arg=list(mean=1,sd=2) )

}