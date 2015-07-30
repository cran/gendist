\name{dfolded}
\alias{dfolded}
\title{ 
Probabilty density function of folded model.
}
\description{
Computes pdf of the folded model.
}
\usage{
dfolded(x, spec, arg, log = FALSE)
}
\arguments{
  \item{x}{
scale or vector of values to compute the pdf.
}
  \item{spec}{
a character string specifying the parent distribution (for example, "norm" if
the parent disstribution correspond to the normal).
}
  \item{arg}{
list of arguments/parameters of the parent distribution.
}
  \item{log}{
logical; if \code{TRUE}, log(pdf) are returned.
}
}
\details{
The pdf of folded model has a general form of:
\deqn{
f(x) = g(x) + g(-x) \quad x>0
}
where \eqn{G(x)} is the cdf of parent distribution.
}
\value{
An object of the same length as \code{x}, giving the pdf values computed at \code{x}.
}

\references{

S.A. Abu Bakar, S. Nadarajah, Z.A. ABSL Kamarul Adzhar, I. Mohamed. gendist: An R package for generated probability distribution models, submitted.
\cr
Brazauskas, V., & Kleefeld, A. (2011). Folded and log-folded-t distributions as models for insurance loss data. Scandinavian Actuarial Journal, 2011(1), 59-74.
}

\author{

Shaiful Anuar Abu Bakar

}

\examples{

x=runif(10, min=0, max=1)
y=dfolded(x, spec="norm", arg=list(mean=1,sd=2) )

}