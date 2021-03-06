\name{ffrep.int}
\alias{ffrep.int}
\title{Replicate Elements of \code{ff} vectors.}
\usage{
  ffrep.int(x, times)
}
\arguments{
  \item{x}{an integer \code{ff} vector}

  \item{times}{integer \code{ff} vector giving the
  (non-negative) number of times to repeat each element if
  of length length(x), or an integer of length 1 indicating
  how many times to to repeat the whole vector. Negative or
  NA values are an error.}
}
\value{
  An ff vector of integers where x is recycled
}
\description{
  Similar as \code{rep.int} in the base package but for
  \code{ff} vectors.
}
\examples{
ffrep.int(ff(1:1000), times=20)
ffrep.int(ff(factor(LETTERS)), times=20)
ffrep.int(ff(Sys.time()), times=20)
ffrep.int(ff(seq.Date(Sys.Date(), Sys.Date()+10, by = "day")), times=20)

x <- ff(factor(LETTERS), length=10000)
ffrep.int(x, times=ff(1:10000))

## Or supply an ff vector of the same length as x
x <- seq.Date(Sys.Date(), Sys.Date()+10, by = "day")
x <- as.ff(x)
ffrep.int(x, times=ff(0:10))

x <- ff(factor(LETTERS), length=10)
ffrep.int(x, times=ff(1:10))

}
\seealso{
  \code{\link[base]{rep.int}}
}

