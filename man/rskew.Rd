\name{rskew}
\alias{rskew}
\title{ 
Random generation of skewed symmetric model.
}
\description{
Computes rg of the skewed symmetric model.
}
\usage{
rskew(n, spec1, arg1, spec2, arg2, interval = c(1, 10))
}
\arguments{
  \item{n}{
number of random generated values.
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
  \item{interval}{
a vector of interval end-points to search function root.  	
}
}
\value{

An object of the length \code{n}, giving the random generated values for the skewed symmetric model.

}
\references{

Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Azzalini, A. (1985). A class of distributions which includes the normal ones. Scandinavian journal of statistics, 171-178.
}
\author{
Shaiful Anuar Abu Bakar
}
\examples{
y=rskew(10, spec1="norm", arg1=list(mean=0,sd=0.1), spec2="logis", 
        arg2=list(location=0,scale=0.2))
}