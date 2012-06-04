\name{grpintprob} 
\alias{grpintprob}
\title{Compute Probabilities of an Observation Falling into a Grouping Interval}
\description{
 Compute probabilities of an observation falling into a grouping 
 interval when given component distribution which the observation 
 comes from.
}
\usage{
grpintprob(mixdat, mixpar, dist, constr)
}
\arguments{
\item{mixdat}{a data frame containing grouped data, whose first
 column should be right boundaries of grouping intervals where 
 the first and last intervals are open-ended; whose second 
 column should consist of the frequencies indicating numbers of
 observations falling into each interval.}
\item{mixpar}{a data frame containing the parameter values of
 component distributions, which are, in order, the proportions, 
 means, and standard deviations.}
\item{dist}{the distribution of components, it can be one of
 \code{"norm"}, \code{"lnorm"}, \code{"gamma"}, \code{"weibull"},
 \code{"binom"}, \code{"nbinom"} and \code{"pois"}.}
\item{constr}{a list of constraints on parameters of component
 distributions.}
}
\value{
 It produces a matrix, whose each column contains the
 probabilities of the observations from one component
 falling into each grouping interval.
}
\examples{
data(bindat)
data(binpar)
grpintprob(bindat, binpar, "binom", mixconstr(consigma = "BINOM", size = c(20, 20, 20, 20)))
}
\keyword{internal}
