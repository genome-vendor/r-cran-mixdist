\name{testconstr} 
\alias{testconstr}
\title{Check Constraints}
\description{
 Check if constraints on parameters are valid.  
 See the reference for details.
}
\usage{
testconstr(mixdat, mixpar, dist, constr)
}
\arguments{
\item{mixdat}{a data frame containing grouped data, whose first
 column should be right boundaries of grouping intervals, whose 
 second column should consist of the frequencies indicating 
 numbers of observations falling into each interval. If conditional 
 data are available, this data frame should have \eqn{k} + 2 columns, 
 where \eqn{k} is the number of components, whose element in row \eqn{j} 
 and column \eqn{i} + 2 is the number of observations from the jth 
 interval belonging to the ith component.}
\item{mixpar}{a data frame containing the values for parameters
 of component distributions, which are, in order, the proportions, 
 means, and standard deviations.}
\item{dist}{the distribution of components, it can be one of
 \code{"norm"}, \code{"lnorm"}, \code{"gamma"}, \code{"weibull"},
 \code{"binom"}, \code{"nbinom"} and \code{"pois"}.}
\item{constr}{a list of constraints on parameters of component
 distributions. See function \code{\link{mixconstr}}.}
}
\value{
 If the constraints are valid, this function will give a
 logical value \code{TRUE}. If not, it will give an error
 message to illustrate the reason.
}
\references{
  Macdonald, P.D.M. and Green, P.E.J. (1988) \emph{User's Guide to Program MIX: 
  An Interactive Program for Fitting Mixtures of Distributions.} ICHTHUS DATA
  SYSTEMS.
}
\seealso{
 \code{\link{mixgroup}} for grouping data, \code{\link{mixparam}} for 
 organizing the parameter values, \code{\link{mixconstr}} for constructing
 constraints.
}
\examples{
\dontrun{
testconstr(pike65, pikepar, "lnorm", constr = mixconstr(consigma = "CCV"))
testconstr(bindat, binpar, "binom", constr = mixconstr())
testconstr(bindat, binpar, "binom", constr = mixconstr(consigma = "BINOM"))
testconstr(bindat, binpar, "pois", constr = mixconstr(conmu = "MEQ", consigma = "POIS"))
}
}
\keyword{misc}
\keyword{utilities}
