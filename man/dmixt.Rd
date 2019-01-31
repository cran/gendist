\name{dmixt}
\alias{dmixt}
\title{ 
Probabilty density function of mixture model.
}
\description{
Computes pdf of the mixture model.
}
\usage{
dmixt(x, phi, spec1, arg1, spec2, arg2, log = FALSE)
}
\arguments{
  \item{x}{
scalar or vector of values to compute the pdf.
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
  \item{log}{
logical; if \code{TRUE}, log(pdf) are returned.
}
}
\details{
The pdf of mixture model with parameter \eqn{phi} has a general form of:
\deqn{
f(x) = \frac{1}{1+\phi} \left( g_{1}(x) + \phi g_{2}(x)\right)
}
where \eqn{x} follows the support of parent distributions, \eqn{\phi} is the weight component and \eqn{g_{i}(x)} for \eqn{i=1,2} are the pdfs of first and second parent distributions, respectively.
}
\value{
An object of the same length as \code{x}, giving the pdf values computed at \code{x}.
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
y=dmixt(x, phi=0.5, spec1="lnorm", arg1=list(meanlog=1,sdlog=2), spec2="exp", 
        arg2=list(rate=2) )
}