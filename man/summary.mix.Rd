\name{summary.mix} 
\alias{summary.mix}
\title{Summarizing Mixture Model Fits}
\description{
 \code{summary} method for class \code{"mix"}. It is called via
 the generic function \code{\link{summary}}.
}
\usage{
\method{summary}{mix}(object, digits = 4, \dots)
}
\arguments{
\item{object}{an object of class \code{"mix"}, usually, the results
 returned by the model fitting function \code{\link{mix}}.}
\item{digits}{how many significant digits are to be used.}
\item{\dots}{additional arguments affecting the summary produced.}
}
\value{
A list containing the following items:
\item{parameters}{a data frame containing the values for
 parameters of component distributions, which are, in order, 
 the proportions, means, and standard deviations.}
\item{standard errors}{a data frame giving the standard errors
 of estimated parameters.}
\item{anova table}{analysis of variance table for the
 \code{mixobj}, that is, the results from the function \code{anova.mix}.}
}
\seealso{
 \code{\link{mix}} for model fitting, \code{\link{summary}} for
 summarizing other kinds of object. \code{\link{anova.mix}} for
 information about \code{anova table}.
}
\examples{
data(pike65)
data(pikepar)
fit <- mix(pike65, pikepar, "lnorm", mixconstr(consigma = "CCV"), emsteps = 3)
fit
summary(fit)
}
\keyword{models}
