\name{weibullpar} 
\alias{weibullpar}
\title{Compute Shape and Scale Parameters for Weibull Distribution}
\description{
 Compute the parameters shape and scale for Weibull distribution 
 given the mean, standard deviation and location.
}
\usage{
weibullpar(mu, sigma, loc = 0)
}
\arguments{
\item{mu}{the mean of weibull distribution.}
\item{sigma}{the standard deviation of weibull distribution.}
\item{loc}{the location parameter of weibull distribution defaulting to \code{0}.}
}
\value{
 A data frame containing three parameters, which are, in
 order, shape, scale, and location.
}
\seealso{
\code{\link{weibullparinv}} for computing mean and standard
deviation from the parameters shape, scale and location.
}
\examples{
weibullpar(2, 1.2)
weibullpar(2, 1.2, 1)
}
\keyword{misc}
\keyword{utilities}
