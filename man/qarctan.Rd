\name{qarctan}
\alias{qarctan}
\title{ 
Quantile function of arc tan model.
}
\description{
Computes qf of the arc tan model.
}
\usage{
qarctan(p, alpha, spec, arg, lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{p}{
scalar or vector of probabilities to compute the qf.
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
logical; if \code{TRUE}, probabilities are \code{p}, otherwise 1-\code{p}.
}
  \item{log.p}{
logical; if \code{TRUE}, probabilities \code{p} are returned as log(\code{p}).
}
}
\details{
The qf of arc tan model with parameter \eqn{\alpha} has a general form of:
\deqn{
Q(p) = G^{-1}\left(1-\frac{1}{\alpha} \tan( (1-p)\arctan(\alpha) )\right)
}
for \eqn{a\leq x\leq b} where \eqn{a} and \eqn{b} follow the support of \eqn{G(x)}. \eqn{\arctan} denote the inverse function of tangent and \eqn{G^{-1}} is the inverse cdf of parent distribution, respectively. Note also that \eqn{\alpha>0}.
}
\value{
An object of the same length as \code{p}, giving the qf values computed at \code{p}.
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
y=qarctan(x, alpha=0.5, spec="lnorm", arg=list(meanlog=1,sdlog=2) )
}