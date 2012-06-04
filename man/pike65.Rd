\name{pike65}
\alias{pike65}
\title{Length-Frequency Data for Heming Lake Pike}
\usage{data(pike65)}
\description{
The raw data \code{pikeraw} give the lengths of 523 pike (Esox lucius). We 
grouped the lengths over 25 intervals to obtain this length-frequency data.

The \code{pike65} data frame has 25 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{length}{the boundaries of grouping intervals.}
    \item{freq}{the frequencies of observation falling into each interval.}
  }
}
\source{
    Macdonald, P.D.M. and T.J. Pitcher (1979). 
    \emph{Age-groups from size-frequency data: a versatile and efficient method of analysing distribution mixtures.}
    Journal of the Fisheries Research Board of Canada 36, 987-1001.
}
\references{
    Macdonald, P.D.M. (1987). \emph{Analysis of length-frequency distributions.} 
    In R.C. Summerfelt and G.E. Hall [editors], Age and Growth of Fish, Iowa State University Press, Ames, Iowa. pp 371-384.

    \url{http://www.math.mcmaster.ca/peter/mix/demex/expike.html}
}
\examples{
data(pike65)
data(pikepar)
plot.mixdata(pike65)
fit <- mix(pike65, pikepar, "lnorm", constr = mixconstr(consigma = "CCV"), emsteps = 3)
plot(fit)
}
\keyword{datasets}
