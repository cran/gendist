\name{parctan}
\alias{parctan}
\title{ 
Cumulative distribution function of arc tan model.
}
\description{
Computes cdf of the arc tan model.
}
\usage{
parctan(q, alpha, spec, arg, lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{q}{
scalar or vector of values to compute the cdf.
}
  \item{alpha}{
the value of \eqn{\alpha} parameter, \eqn{\alpha>0}.
}
  \item{spec}{
a character string specifying the parent distribution (for example, "lnorm" if
the parent distribution corresponds to the lognormal).
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
The cdf of arc tan model with parameter \eqn{\alpha} has a general form of:
\deqn{
F(q) = 1- \frac{\arctan(\alpha (1-G(q)) )}{\arctan(\alpha)}
}
for \eqn{a\leq x\leq b} where \eqn{a} and \eqn{b} follow the support of \eqn{g(q)}. \eqn{\arctan} denote the inverse function of tangent. \eqn{g(q)} and \eqn{G(q)} are the pdf and cdf of parent distribution, respectively. Note also that \eqn{\alpha>0}.
}
\value{
An object of the same length as \code{q}, giving the cdf values computed at \code{q}.}
\references{
S.A. Abu Bakar, S. Nadarajah, Z.A. ABSL Kamarul Adzhar, I. Mohamed. gendist: An R package for generated probability distribution models, submitted.\cr
Gomez-Deniz, E., & Calderin-Ojeda, E. Modelling insurance data with the pareto arctan distribution. ASTIN Bulletin, 1-22.
}
\author{
Shaiful Anuar Abu Bakar
}
\examples{
x=runif(10, min=0, max=1)
y=parctan(x, alpha=0.5, spec="lnorm", arg=list(meanlog=1,sdlog=2) )
}