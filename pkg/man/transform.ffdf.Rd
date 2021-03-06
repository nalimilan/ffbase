\name{transform.ffdf}
\alias{transform.ffdf}
\title{Transform a ffdf data.frame}
\usage{
  \method{transform}{ffdf}(`_data`, \dots)
}
\arguments{
  \item{_data}{\code{\link{ffdf}} data object to be
  transformed.}

  \item{...}{named arguments that will be added to the
  \code{ffdf} data.frame}
}
\value{
  a modified clone of \code{`_data`}.
}
\description{
  Same functionality as \code{\link{transform}}, but on a
  \code{ffdf} object. Please note that you should write
  your expression as if it is a normal \code{data.frame}.
  The resulting data.frame however will be a \code{ffdf}
  data.frame.
}
\examples{

transform(as.ffdf(airquality), Ozone = -Ozone)
transform(as.ffdf(airquality), new = -Ozone, Temp = (Temp-32)/1.8)
}

