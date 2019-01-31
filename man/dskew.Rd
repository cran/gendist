\name{dskew}
\alias{dskew}
\title{ 
Probabilty density function of skewed symmetric model.
}
\description{
Computes pdf of the skewed symmetric model.
}
\usage{
dskew(x, spec1, arg1, spec2, arg2, log = FALSE)
}
\arguments{
  \item{x}{
scalar or vector of values to compute the pdf.
}
  \item{spec1}{
a character string specifying the parent distribution \eqn{g(x)} (for example, "norm" if
the parent distribution corresponds to the normal).
}
  \item{arg1}{
list of arguments/parameters of the parent distribution \eqn{g(x)}.
}
  \item{spec2}{
a character string specifying the parent distribution \eqn{H(x)} (for example, "logis" if
the parent distribution corresponds to the logistic).
}
  \item{arg2}{
list of arguments/parameters of the parent distribution \eqn{H(x)}.
}
  \item{log}{
logical; if \code{TRUE}, log(pdf) are returned.
}
}
\details{
The pdf of skewed symmetric model has a general form of:
\deqn{
f(x) = 2h(x)G(x), \quad -\infty < x < \infty
}
where \eqn{h(x)} and \eqn{G(x)} are the pdf and cdf of parent distributions, respectively.
}
\value{
An object of the same length as \code{x}, giving the pdf values computed at \code{x}.
}
\references{

Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Azzalini, A. (1985). A class of distributions which includes the normal ones. Scandinavian journal of statistics, 171-178.
}

\author{
Shaiful Anuar Abu Bakar
}
\examples{
x=runif(10, min=0, max=1)
y=dskew(x, spec1="norm", arg1=list(mean=0,sd=1), spec2="logis", 
        arg2=list(location=0,scale=2) )
}