\name{pikepar}
\alias{pikepar}
\title{Starting Values of Parameters for the Pike Data}
\usage{data(pikepar)}
\description{
Starting values of parameters for fitting a mixture distribution to the data set \code{pike65}.

The \code{pikepar} data frame has 5 rows and 3 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{pi}{the starting values for proportions.}
    \item{mu}{the starting values for means.}
    \item{sigma}{the starting values for standard deviations.}
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
data(pikepar)
}
\keyword{datasets}
