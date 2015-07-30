\name{qcomposite}
\alias{qcomposite}
\title{ 
Quantile function of composite model.
}
\description{
Computes qf of the composite model.
}
\usage{
qcomposite(p, spec1, arg1, spec2, arg2, initial = 1, lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{p}{
scalar or vector of probabilities to compute the qf.
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
  \item{lower.tail}{
logical; if \code{TRUE}, probabilities are \code{p}, otherwise 1-\code{p}.
}

  \item{log.p}{
logical; if \code{TRUE}, probabilities \code{p} are returned as log(\code{p}).
}
}
\details{
The qf of composite model has a general form of:

\deqn{Q(p) = 
Q_{1}(p(1+\phi)F_{1}(\theta))   \mbox{ if } \quad  p \leq \frac{1}{1+\phi},
}
\deqn{= Q_{2} \left( F_{2}(\theta) + (1-F_{2}(\theta)) \left( \frac{p(1+\phi)-1}{\phi} \right)\right) \mbox{ if } \quad  p > \frac{1}{1+\phi}
}
whereby \eqn{\phi} is the weight component, \eqn{\theta} is the threshold and  \eqn{F_{i}(x)} for \eqn{i=1,2} are the qfs correspond to head and tail parent distributions, respectively.
}
\value{
An object of the same length as \code{p}, giving the qf values computed at \code{p}.
}
\references{
S.A. Abu Bakar, S. Nadarajah, Z.A. ABSL Kamarul Adzhar, I. Mohamed. gendist: An R package for generated probability distribution models, submitted.\cr
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
y=qcomposite(x, spec1="lnorm", arg1=list(meanlog=0.1,sdlog=0.2), spec2="exp", 
             arg2=list(rate=0.5) )
}
