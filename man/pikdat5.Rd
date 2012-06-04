\name{pikdat5}
\alias{pikdat5}
\title{Heming Lake Pike Data}
\usage{data(pikdat5)}
\description{
The raw data \code{pikeraw} give the lengths of 523 pike (Esox lucius), and there are known to 
be five age-groups in the sample. We grouped the lengths over 25 intervals to obtain the grouped 
data given as separate samples for each age group determined by scale reading.

The \code{pikdat5} data frame has 25 rows and 6 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{length}{the boundaries of grouping intervals.}
    \item{age1}{the numbers of observation from each interval belonging to the first age group.}
    \item{age2}{the numbers of observation from each interval belonging to the second age group.}
    \item{age3}{the numbers of observation from each interval belonging to the third age group.}
    \item{age4}{the numbers of observation from each interval belonging to the fourth age group.}
    \item{age5}{the numbers of observation from each interval belonging to the fifth age group.}
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
data(pikdat5)
}
\keyword{datasets}
