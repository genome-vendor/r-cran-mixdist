\name{pearson}
\alias{pearson}
\title{Karl Pearson's Crab Data}
\usage{data(pearson)}
\description{
The data give the ratio of "forehead" breadth to body length 
for 1000 crabs sampled at Naples by Professor W.F.R. Weldon.

The \code{pearson} data frame has 29 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{ratio}{the boundaries of grouping intervals.}
    \item{freq}{the frequencies of observation falling into each interval.}
  }
}
\source{
    Pearson, K. (1894). \emph{Contributions to the mathematical theory of evolution.} 
    Phil. Trans. Roy. Soc. London A 185, 71-110.
}
\references{
   \url{http://www.math.mcmaster.ca/peter/mix/demex/excrabs.html}
}
\examples{
data(pearson)
plot.mixdata(pearson)
}
\keyword{datasets}
