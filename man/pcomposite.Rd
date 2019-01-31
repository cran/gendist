\name{pcomposite}
\alias{pcomposite}
\title{ 
Cumulative distribution function of composite model.
}
\description{
Computes cdf of the composite model.
}
\usage{
pcomposite(q, spec1, arg1, spec2, arg2, initial = 1, lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{q}{scalar or vector of values to compute the cdf.}
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
  \item{lower.tail}{
logical; if \code{TRUE}, cdf are returned, otherwise 1-cdf.
}

  \item{log.p}{
logical; if \code{TRUE}, probabilities returned are given as log(cdf).
}

}
\details{
The cdf of composite model has a general form of:
\deqn{
F(x) =
\frac{1}{1+\phi} \frac{F_{1}(x)}{F_{1}(\theta)}   \mbox{ if } \quad  x \leq \theta,
}
\deqn{
= \frac{1}{1+\phi} \left( 1 + \phi \frac{F_{2}(x)-F_{2}(\theta)}{1-F_{2}(\theta)}  \right)   \mbox{ if } \quad x > \theta,
}
whereby \eqn{\phi} is the weight component, \eqn{\theta} is the threshold and  \eqn{F_{i}(x)} for \eqn{i=1,2} are the cdfs correspond to head and tail parent distributions, respectively.
}
\value{
An object of the same length as \code{q}, giving the cdf values computed at \code{q}.
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
x=runif(10, min=0, max=1)
y=pcomposite(x, spec1="lnorm", arg1=list(meanlog=0.1,sdlog=0.2), spec2="exp", 
             arg2=list(rate=0.5) )
}