\name{mix} 
\alias{mix}
\title{Estimate Parameters of Mixture Distributions}
\description{
  Find a set of overlapping component distributions that
  gives the best fit to grouped data and conditional
  data, using a combination of a Newton-type method and
  EM algorithm.
}
\usage{
mix(mixdat, mixpar, dist = "norm", constr = list(conpi = "NONE", 
    conmu = "NONE", consigma = "NONE", fixpi = NULL, fixmu = NULL, 
    fixsigma = NULL, cov = NULL, size = NULL), emsteps = 1, 
    usecondit = FALSE, exptol = 5e-06, print.level = 0, \dots) 
}
\arguments{
\item{mixdat}{A data frame containing grouped data, whose first
 column should be right boundaries of grouping intervals where
 the first and last intervals are open-ended; whose second
 column should consist of the frequencies indicating numbers of
 observations falling into each interval. If conditional data
 are available, this data frame should have \emph{k} + 2 columns, where
 \emph{k} is the number of components, whose element in row \emph{j} and
 column \emph{i} + 2 is the number of observations from the \emph{j}th interval
 belonging to the \emph{i}th component.}
\item{mixpar}{A data frame containing starting values for
 parameters of component distributions, which are, in order, the
 proportions, means, and standard deviations.}
\item{dist}{the distribution of components, it can be one of 
  \code{"norm"}, \code{"lnorm"}, \code{"gamma"}, \code{"weibull"}, 
  \code{"binom"}, \code{"nbinom"} and \code{"pois"}.}
\item{constr}{a list of constraints on parameters of
 component distributions. See function \code{\link{mixconstr}}.}
\item{emsteps}{a non-negative integer specifying the number of EM steps 
  to be performed.}
\item{usecondit}{logical. If \code{usecondit} is \code{TRUE} and \code{mixdat}
 includes conditional data, then conditional data will be used with
 grouped data to estimate parameters of mixtures.}
\item{exptol}{a positive scalar giving the tolerance at which the
  scaled fitted value is considered large enough to be a degree
  of freedom.}
\item{print.level}{this argument determines the level of printing
  which is done during the optimization process.  The default
  value of \code{0} means that no printing occurs, a value of \code{1}
  means that initial and final details are printed and a value
  of \code{2} means that full tracing information is printed.}
\item{\dots}{additional arguments to the optimization function
\code{\link{nlm}}}.
}
\value{
A list containing the following items:
\item{parameters}{A data frame containing estimated values for
 parameters of component distributions, which are, in order, 
 the proportions, means, and standard deviations.}
\item{se}{A data frame containing estimated values for
 standard errors of parameters of component distributions.}
\item{distribution}{the distribution used to fit the data.}
\item{constraint}{the constraints on parameters.}
\item{chisq}{the goodness-of-fit chi-square statistic.}
\item{df}{degrees of freedom of the fitted mixture model.}
\item{P}{a significance level (P-value) for the goodness-of-fit test.}
\item{vmat}{covariance matrix for the estimated parameters.}
\item{mixdata}{the original data, i.e. the argument \code{mixdat}.}
\item{usecondit}{the value of the argument \code{usecondit}.}
}
\references{
  Macdonald, P.D.M. and Green, P.E.J. (1988) \emph{User's Guide to Program MIX: 
  An Interactive Program for Fitting Mixtures of Distributions.} ICHTHUS DATA
  SYSTEMS.
}
\seealso{
 \code{\link{mixgroup}} for grouping data, \code{\link{mixparam}} for
 organizing the parameter values, \code{\link{mixconstr}} for
 constructing constraints. \code{\link{nlm}} for additional
 arguments.
}
\examples{
data(pike65)
data(pikepar)
fitpike1 <- mix(pike65, pikepar, "lnorm", constr = mixconstr(consigma = "CCV"), emsteps = 3)
fitpike1
plot(fitpike1)
data(pike65sg)
fitpike2 <- mix(pike65sg, pikepar, "lnorm", emsteps = 3, usecondit = TRUE)
fitpike2
plot(fitpike2)
data(bindat)
data(binpar)
fitbin1 <- mix(bindat, binpar, "binom", constr = mixconstr(consigma = "BINOM", size = c(20, 20, 20, 20)))
plot(fitbin1)
fitbin2 <- mix(bindat, binpar, "binom", constr = mixconstr(conpi = "PFX",
               fixpi = c(TRUE, TRUE, TRUE, TRUE), consigma = "BINOM", size = c(20, 20, 20, 20)))
plot(fitbin2)
}
\keyword{models}
