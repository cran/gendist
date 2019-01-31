\name{rfolded}
\alias{rfolded}
\title{ 
Random generation of folded model.
}
\description{
Computes rg of the folded model.
}
\usage{
rfolded(n, spec, arg, interval = c(0, 100))
}
\arguments{
  \item{n}{
number of random generated values.
}
  \item{spec}{
a character string specifying the parent distribution (for example, "norm" if 
the parent distribution correspond to the normal).
}
 
  \item{arg}{
list of arguments/parameters of the parent distribution.
}
  \item{interval}{
a vector of interval end-points to search function root.  	
}
}
\value{
An object of the length \code{n}, giving the random generated values for the folded model.
}
\references{

Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Brazauskas, V., & Kleefeld, A. (2011). Folded and log-folded-t distributions as models for insurance loss data. Scandinavian Actuarial Journal, 2011(1), 59-74.
}
\examples{
y=rfolded(10, spec="norm", arg=list(mean=1,sd=2), interval=c(0,100) )
}