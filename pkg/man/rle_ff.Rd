\name{rle_ff}
\alias{rle_ff}
\title{Compute the lengths and values of runs of equal values in a vector}
\usage{
  rle_ff(x, ...)
}
\arguments{
  \item{x}{an \code{\link{ff}} vector}

  \item{...}{further arguments are passed on the
  \code{\link{chunk}}}
}
\value{
  An object of class \code{rle} which is a list with
  components \describe{ \item{lengths}{an integer vector
  containing the length of each run.} \item{values}{a
  vector of the same length as `lenghts' with the
  corresponding values.} }
}
\description{
  Similar \code{\link{rle}} in the base package but for
  \code{\link{ff}} vectors.
}
\note{
  The resulting rle object is a memory object and must fit
  into memory.
}
\seealso{
  \code{\link{rle}} for an implementation that runs on
  ordinary vectors.
}

