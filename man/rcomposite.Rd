\name{rcomposite}
\alias{rcomposite}
\title{ 
Random generation of composite model.
}
\description{
Computes rg of the composite model.
}
\usage{
rcomposite(n, spec1, arg1, spec2, arg2, initial = 1)
}
\arguments{
  \item{n}{
number of random generated values.
}
  \item{spec1}{
a character string specifying the head parent distribution (for example, "lnorm" if 
the parent distribution corresponds to the lognormal).
}

  \item{arg1}{
list of arguments/parameters of the head parent distribution.
}

  \item{spec2}{
a character string specifying the tail parent distribution (for example, "exp" if 
the parent distribution corresponds to the exponential).
}

  \item{arg2}{
list of arguments/parameters of the tail parent distribution.
}

  \item{initial}{
initial values of the threshold, \eqn{\theta}.
}
}
\value{
An object of the length \code{n}, giving the random generated values for the composite model.
}
\references{
Abu Bakar, S. A., Nadarajah, S., Adzhar, Z. A. A. K., & Mohamed, I. (2016). gendist: An R package for generated probability distribution models. PloS one, 11(6).\cr
Cooray, K., & Ananda, M. M. (2005). Modeling actuarial data with a composite lognormal-Pareto model. Scandinavian Actuarial Journal, 2005(5), 321-334.\cr
Scollnik, D. P. (2007). On composite lognormal-Pareto models. Scandinavian Actuarial Journal, 2007(1), 20-33.\cr
Nadarajah, S., & Bakar, S. A. A. (2014). New composite models for the Danish fire insurance data. Scandinavian Actuarial Journal, 2014(2), 180-187.\cr
Bakar, S. A., Hamzah, N. A., Maghsoudi, M., & Nadarajah, S. (2015). Modeling loss data using composite models. Insurance: Mathematics and Economics, 61, 146-154.
}
\author{
Shaiful Anuar Abu Bakar
}
\examples{
y=rcomposite(10, spec1="lnorm", arg1=list(meanlog=0.1,sdlog=0.2), spec2="exp", 
             arg2=list(rate=0.5))
}