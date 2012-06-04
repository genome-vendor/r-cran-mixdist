\name{print.mix} 
\alias{print.mix}
\title{Print Mix Object}
\description{
 \code{print.mix} is a function which prints objects of
 class \code{"mix"} and returns it invisibly. It is called
 via the generic function \code{\link{print}}.
}
\usage{
\method{print}{mix}(x, digits = 4, \dots)
}
\arguments{
\item{x}{an object of class \code{"mix"}, usually, the results
 returned by the model fitting function \code{\link{mix}}.}
\item{digits}{how many significant digits are to be used.}
\item{\dots}{further arguments passed to or from other methods.}
}
\details{
 This function only prints information about the mixture 
 model, which are the estimated parameters of the mixture, 
 the distribution of components and the constraints on 
 the parameters. Also, the values for the parameters are 
 rounded to the specified number of decimal places (default 4). 
 The whole object can be printed out using the function 
 \code{\link{print.default}}.
}
\seealso{
 \code{\link{mix}} for model fitting. \code{\link{print.default}} for
 printing the whole object.
}
\examples{
data(pike65)
data(pikepar)
fit <- mix(pike65, pikepar, "gamma", mixconstr(consigma = "CCV"), emsteps = 3)
fit
print(fit)
print.mix(fit)
print.default(fit)
}
\keyword{print}
