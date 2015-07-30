\name{qskew}
\alias{qskew}
\title{ 
Quantile function of skewed symmetric model.
}
\description{
Computes qf of the skewed symmetric model.
}
\usage{
qskew(p, spec1, arg1, spec2, arg2, interval = c(1, 10), lower.tail = TRUE, log.p = FALSE)
}
\arguments{
  \item{p}{scalar or vector of probabilities to compute the qf.
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
Azzalini, A. (1985). A class of distributions which includes the normal ones. Scandinavian journal of statistics, 171-178.
}
\author{
Shaiful Anuar Abu Bakar
}
\examples{
x=runif(10, min=0, max=1)
y=qskew(x, spec1="norm", arg1=list(mean=0,sd=0.1), spec2="logis", 
        arg2=list(location=0,scale=0.2))
}