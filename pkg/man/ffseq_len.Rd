\name{ffseq_len}
\alias{ffseq_len}
\title{Sequence Generation of \code{ff} vectors.}
\usage{
  ffseq_len(length.out)
}
\arguments{
  \item{length.out}{desired length of the sequence. Only
  non-negative numbers larger than 0 are allowed.}
}
\value{
  An ff vector of integers with range from 1 to length.out
}
\description{
  Similar as \code{seq_len} in the base package, generating
  an \code{ff} vector.
}
\examples{
## ffseq_len
ffseq_len(1000)
ffseq_len(1000000)

## ffseq
ffseq(from = 1, to = 4, by = 1)
ffseq(from = 1, to = 4, by = 0.5)
ffseq(from = 4, to = 1, by = -0.5)
ffseq(from = -100, to = 100, by = 0.3)
ffseq(from = 2, to = -100, length.out = 4)
ffseq(from = 2, to = -100, length.out = 4)
ffseq(from = 2, along.with=1000)
ffseq(to = 2, along.with=1000)
ffseq(along.with=1000)
ffseq(length.out=1000000)

}
\seealso{
  \code{\link[base]{seq_len}}
}

