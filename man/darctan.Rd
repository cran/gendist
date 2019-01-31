\name{darctan}
\alias{darctan}
\title{ 
Probabilty density function of arc tan model.
}
\description{
Computes pdf of the arc tan model.
}
\usage{
darctan(x, alpha, spec, arg, log = FALSE)
}
\arguments{
  \item{x}{
scalar or vector of values to compute the pdf.
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
  \item{log}{
logical; if \code{TRUE}, log(pdf) are returned.
}
}
\details{
The pdf of arc tan model with parameter \eqn{\alpha} has a general form of:
\deqn{
f(x) = \frac{1}{\arctan(\alpha)} \frac{\alpha g(x)}{1 + (\alpha (1-G(x)))^{2}}
}
for \eqn{a\leq x\leq b} where \eqn{a} and \eqn{b} follow the support of \eqn{g(x)}. \eqn{\arctan} denote the inverse function of tangent. \eqn{g(x)} and \eqn{G(x)} are the pdf and cdf of parent distribution, respectively. Note also that \eqn{\alpha>0}.
}
\value{
An object of the same length as \code{x}, giving the pdf values computed at \code{x}.
}
\references{
Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Gomez-Deniz, E., & Calderin-Ojeda, E. Modelling insurance data with the pareto arctan distribution. ASTIN Bulletin, 1-22.
}
\author{
Shaiful Anuar Abu Bakar
}
\examples{
x=runif(10, min=0, max=1)
y=darctan(x, alpha=0.5, spec="lnorm", arg=list(meanlog=1,sdlog=2) )
}