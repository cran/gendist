\name{rarctan}
\alias{rarctan}
\title{ 
Random generation of arc tan model.
}
\description{
Computes rg of the arc tan model.
}
\usage{
rarctan(n, alpha, spec, arg)
}
\arguments{
  \item{n}{
number of random generated values.
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
}
\references{
Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Gomez-Deniz, E., & Calderin-Ojeda, E. Modelling insurance data with the pareto arctan distribution. ASTIN Bulletin, 1-22.
}
\author{
Shaiful Anuar Abu Bakar
}
\examples{
y=rarctan(10, alpha=0.5, spec="lnorm", arg=c(meanlog=1,sdlog=2) )
}


