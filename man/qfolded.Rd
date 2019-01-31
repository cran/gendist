\name{qfolded}
\alias{qfolded}
\title{ 
Quantile function of folded model.
}
\description{
Computes cdf of the folded model.
}
\usage{
qfolded(p, spec, arg, interval = c(0, 100), lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{p}{scalar or vector of probabilities to compute the qf.}
  \item{spec}{
a character string specifying the parent distribution (for example, "norm" if 
the parent distribution correspond to the normal).
}

  \item{arg}{
list of arguments/parameters of the parent distribution.
}
 
  \item{interval}{
a vector of interval end-points for \code{p} to search for the function root.  	
}
  \item{lower.tail}{
logical; if \code{TRUE}, probabilities are \code{p}, otherwise 1-\code{p}.
}

  \item{log.p}{
logical; if \code{TRUE}, probabilities \code{p} are returned as log(\code{p}).
}

}
\value{
An object of the same length as \code{p}, giving the qf values computed at \code{p}.
}

\references{

Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Brazauskas, V., & Kleefeld, A. (2011). Folded and log-folded-t distributions as models for insurance loss data. Scandinavian Actuarial Journal, 2011(1), 59-74.
}
\examples{
x=runif(10, min=0, max=1)
y=qfolded(x, spec="norm", arg=list(mean=1,sd=2), interval=c(0,100) )
}
