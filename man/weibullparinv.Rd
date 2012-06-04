\name{weibullparinv} 
\alias{weibullparinv}
\title{Compute the Mean and Standard Deviation of Weibull Distribution}
\description{
 Compute mean and standard deviation of weibull distribution 
 given the values of shape, scale and location.
}
\usage{
weibullparinv(shape, scale, loc = 0)
}
\arguments{
\item{shape}{the shape parameter of weibull distribution.}
\item{scale}{the scale parameter of weibull distribution.}
\item{loc}{the location parameter of weibull distribution defaulting to 0.}
}
\value{
 A data frame containing three parameters, which are, in order, 
 mean, standard deviation and location.
}
\seealso{
 \code{\link{weibullpar}} for computing the parameters shape and scale
 from mean and standard deviation.
}
\examples{
weibullparinv(weibullpar(2, 1.2)$shape, weibullpar(2, 1.2)$scale)
}
\keyword{misc}
\keyword{utilities}
