\name{coef.mix} 
\alias{coef.mix}
\title{Extract Mixture Model Coefficients}
\description{
  \code{coef.mix} is a function which extracts mixture model coefficients
  from objects returned by the model fitting function \code{\link{mix}}. It is 
  called via the generic function \code{\link{coef}}.
}
\usage{
\method{coef}{mix}(object, natpar = FALSE, \dots)
}
\arguments{
\item{object}{an object of class \code{"mix"}, usually, the results
  returned by the model fitting function \code{\link{mix}}.}
\item{natpar}{a logical scalar specifying whether the natural
  parameters should be given.}
\item{\dots}{other arguments.}
}
\value{
A data frame containing three variables, which are,
in order, the proportions, means, and standard
deviations, respectively. If \code{natpar} is \code{TRUE},
then the natural parameters of component
distributions are also displayed.
}
\seealso{
\code{\link{mix}} for model fitting.
}
\examples{
data(pike65) # load the grouped data `pike65'
data(pikepar) # load the initial values of parameters for the data `pike65'
fit <- mix(pike65, pikepar, "lnorm", mixconstr(consigma = "CCV"), emsteps = 3)
coef(fit)
coef(fit, natpar = TRUE)
}
\keyword{models}
