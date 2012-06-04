\name{groupstats} 
\alias{groupstats}
\title{Estimate Parameters of One-Component Mixture Distribution}
\description{
 \code{groupstats} is a function which estimates the
 proportion, mean and standard deviation for a mixture
 distribution with one component.
}
\usage{
groupstats(mixdat)
}
\arguments{
\item{mixdat}{A data frame containing grouped data, whose first
column should be right boundaries of grouping
intervals where the first and last intervals are
open-ended; whose second column should consist of
the frequencies indicating numbers of observations
falling into each interval.}
}
\value{
A list containing the following components:
\item{pi}{the value is \code{1} because of only one component.}
\item{mu}{the estimated mean of \code{mixdat}.}
\item{sigma}{the estimated standard deviation of \code{mixdat}.}
}
\seealso{
 \code{\link{mixgroup}} for grouping data, \code{\link{mixparam}} for 
 constructing starting values of parameters.
}
\examples{
data(pike65)
groupstats(pike65)
}
\keyword{misc}
\keyword{utilities}
