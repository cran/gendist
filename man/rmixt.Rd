\name{rmixt}
\alias{rmixt}
\title{ 
Random generation of mixture model.
}
\description{
Computes rg of the mixture model.
}
\usage{
rmixt(n, phi, spec1, arg1, spec2, arg2, interval = c(0, 100))
}
\arguments{
  \item{n}{
number of random generated values.
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

  \item{interval}{
a vector of interval end-points to search function root.  	
}
}
\value{
An object of the length \code{n}, giving the random generated values for the mixture model.
}

\references{

Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Pearson, K. (1894). Contributions to the mathematical theory of evolution. Philosophical Transactions of the Royal Society of London. A, 71-110.
}

\author{
Shaiful Anuar Abu Bakar
}
\examples{
y=rmixt(10, phi=0.5, spec1="lnorm", arg1=list(meanlog=0.1,sdlog=0.2), spec2="exp", 
        arg2=list(rate=0.5) )
}