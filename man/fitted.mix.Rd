\name{fitted.mix} 
\alias{fitted.mix}
\title{Compute Mixture Model Fitted Values}
\description{
 \code{fitted.mix} is a function which computes fitted
 values from objects returned by the modeling function
 \code{\link{mix}}. It is called via the generic function
 \code{\link{fitted}}.
}
\usage{
\method{fitted}{mix}(object, digits = NULL, \dots)
}
\arguments{
\item{object}{an object of class \code{"mix"}, usually, the results
 returned by the model fitting function \code{\link{mix}}.}
\item{digits}{a specified number of decimal places to be reserved.}
\item{\dots}{other arguments.}
}
\value{
List with the following components:
\item{mixed}{the estimated mixed data, that is, the
fitted numbers of observations falling into
each interval.}
\item{joint}{the estimated joint data, that is, the
fitted numbers of observations from each
component falling into every interval.}
\item{conditional}{the estimated conditional data to be
returned if \code{usecondit} of \code{object} is
\code{TRUE}, which are the fitted numbers of
observations from given intervals belonging
to each component.}
\item{conditprob}{the estimated conditional probabilities of
observations from given interval belonging
to each component.}
}
\seealso{
\code{\link{mix}} for fitting mixture distributions.
}
\examples{
data(pike65)
data(pikepar)
fit1 <- mix(pike65, pikepar, "lnorm", mixconstr(consigma = "CCV"), emsteps = 3)
fitted(fit1)
data(pike65sg)
fit2 <- mix(pike65sg, pikepar, "gamma", mixconstr(consigma = "CCV"), usecondit = TRUE)
fitted(fit2, digits = 2)
}
\keyword{models}
