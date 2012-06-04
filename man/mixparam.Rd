\name{mixparam} 
\alias{mixparam}
\title{Construct Starting Values for Parameters}
\description{
  Construct starting values for parameters of a mixture model.
}
\usage{
mixparam(mu, sigma, pi = NULL)
}
\arguments{
\item{mu}{a vector of means of component distributions, which
 should be in ascending order.}
\item{sigma}{a vector of standard deviations of component
 distributions, which are corresponding to the means. \code{sigmas} 
 must be in ascending order when means are equal.}
\item{pi}{the corresponding mixing proportions of components.
 If \code{NULL}, the proportions will be taken as \code{1/k},
 where k is the number of elements of \code{mu}.}
}
\value{
 A data frame containing three variables, which are,
 in order, the proportions, means, and standard deviations.
}
\seealso{
\code{\link{mixgroup}} for grouping data, \code{\link{mixconstr}} for constructing constraints.
}
\examples{
mixparam(mu = c(20, 30, 40), sigma = c(2, 3, 4))
mixparam(c(20, 30, 40), c(3), c(0.15, 0.78, 0.07))
}
\keyword{misc}
\keyword{utilities}
