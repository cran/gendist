\name{qmixt}
\alias{qmixt}
\title{ 
Quantile function of mixture model.
}
\description{
Computes qf of the mixture model.
}
\usage{
qmixt(p, phi, spec1, arg1, spec2, arg2, interval = c(0, 100),
      lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{p}{scalar or vector of probabilities to compute the qf.
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

S.A. Abu Bakar, S. Nadarajah, Z.A. ABSL Kamarul Adzhar, I. Mohamed. gendist: An R package for generated probability distribution models, submitted.
\cr
Pearson, K. (1894). Contributions to the mathematical theory of evolution. Philosophical Transactions of the Royal Society of London. A, 71-110.
}

\examples{
x=runif(10, min=0, max=1)
y=qmixt(x, phi=0.5, spec1="lnorm", arg1=list(meanlog=0.1,sdlog=0.2), spec2="exp", 
        arg2=list(rate=0.5))
}