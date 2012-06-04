\name{pike65sg}
\alias{pike65sg}
\title{Length-Frequency Data with Subsamples for Heming Lake Pike}
\usage{data(pike65sg)}
\description{
The raw data \code{pikeraw} give the lengths of 523 pike (Esox lucius), and there are known to 
be five age-groups in the sample. After grouping the data, we take subsamples from some
intervals to determine the age group, and then obtain this data set.

The \code{pike65sg} data frame has 25 rows and 7 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{length}{the boundaries of grouping intervals.}
    \item{freq}{the frequencies of observation falling into each interval.}
    \item{age1}{the numbers of observation in the subsamples belonging to the first age group.}
    \item{age2}{the numbers of observation in the subsamples belonging to the second age group.}
    \item{age3}{the numbers of observation in the subsamples belonging to the third age group.}
    \item{age4}{the numbers of observation in the subsamples belonging to the fourth age group.}
    \item{age5}{the numbers of observation in the subsamples belonging to the fifth age group.}
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
data(pike65sg)
data(pikepar)
fit1 <- mix(pike65sg, pikepar, "gamma", mixconstr(consigma = "CCV"), usecondit = TRUE)
plot(fit1)
fit2 <- mix(pike65sg, pikepar, "gamma", usecondit = TRUE)
plot(fit2)
}
\keyword{datasets}
