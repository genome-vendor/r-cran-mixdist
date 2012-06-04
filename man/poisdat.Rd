\name{poisdat}
\alias{poisdat}
\title{Grouped Poisson Data}
\usage{data(poisdat)}
\description{
The \code{poisdat} data frame has 15 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{X}{the boundaries of grouping intervals.}
    \item{samppois}{the frequencies of observation falling into each interval.}
  }
}
\examples{
data(poisdat)
plot.mixdata(poisdat)
}
\keyword{datasets}
