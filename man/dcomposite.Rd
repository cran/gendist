\name{dcomposite}
\alias{dcomposite}
\title{ 
Probabilty density function of composite model.
}
\description{
Computes pdf of the composite model.
}
\usage{
dcomposite(x, spec1, arg1, spec2, arg2, initial = 1, log = FALSE)
}
\arguments{
  \item{x}{
scalar or vector of values to compute the pdf.
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
  \item{log}{
logical; if \code{TRUE}, log(pdf) are returned.
}
}
\details{
The pdf of composite model has a general form of:
\deqn{
f(x) = 
\frac{1}{1+\phi} f_{1}^{*}(x),   \mbox{ if} \quad  x \leq \theta,
}
\deqn{
= \frac{\phi}{1+\phi} f_{2}^{*}(x),   \mbox{ if} \quad x > \theta,
}
whereby \eqn{\phi} is the weight component, \eqn{\theta} is the threshold and  \eqn{f_{i}^{*}(x)} for \eqn{i=1,2} are the truncated pdfs correspond to head and tail parent distributions defined by
\deqn{
f_{1}^{*}(x) = \frac{f_{1}(x)}{F_{1}(\theta)}
}
and
\deqn{
f_{2}^{*}(x) = \frac{f_{2}(x)}{1-F_{2}(\theta)}
}
respectively.
}
\value{
An object of the same length as \code{x}, giving the pdf values computed at \code{x}.
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
y=dcomposite(x, spec1="lnorm", arg1=list(meanlog=0.1,sdlog=0.2), spec2="exp", 
             arg2=list(rate=0.5) )
}