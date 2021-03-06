\name{byMean}
\alias{byMean}
\title{Fast conditional mean}
\usage{
  byMean(x, by, na.rm = FALSE, weight = NULL, ...)
}
\arguments{
  \item{x}{\code{numeric} vector to be averaged}

  \item{by}{(list of) \code{factor(s)} for which the mean
  will be calculated}

  \item{na.rm}{\code{logical} If \code{TRUE} \code{NA}
  values will be removed}

  \item{weight}{\code{numeric} with of same length as
  \code{x}}

  \item{...}{not used}
}
\value{
  \code{array} with dimensions of \code{by}
}
\description{
  \code{byMean} works like a very fast version of tapply
  with (weighted) \code{FUN=mean} or
  \code{FUN=weighted.mean}.
}

