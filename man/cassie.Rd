\name{cassie}
\alias{cassie}
\title{Cassie's Length-Frequency Example}
\usage{data(cassie)}
\description{
Data for Cassie's (1954) analysis of size frequency distributions.

The \code{cassie} data frame has 40 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{length}{the boundaries of grouping intervals.}
    \item{freq}{the frequencies of observation falling into each interval.}
  }
}
\source{
    Cassie, R.M. (1954). 
    \emph{Some uses of probability paper in the analysis of size frequency distributions.} 
    Aust. J. Mar. Freshwater Res. 5 , 513-522.
    
    The data, lengths (in) of 256 snapper (Chrysophrys auratus Forster) taken by a trawl 
    with a mesh of about 1.5 in, are given in Table 5 of that paper. Cassie's results are 
    given in his Table 1.
}
\references{
    \url{http://www.math.mcmaster.ca/peter/mix/demex/excass.html}
}
\examples{
data(cassie)
plot.mixdata(cassie)
}
\keyword{datasets}
