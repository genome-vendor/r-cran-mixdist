\name{testpar} 
\alias{testpar}
\title{Check Parameters}
\description{
 Check if the values of parameters are valid.  
 See the reference for details.
}
\usage{
testpar(mixpar, dist, constr)
}
\arguments{
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
 logical. If \code{TRUE}, the parameters are valid. If \code{FALSE}, 
 some of the parameters are invalid. Since this function is for 
 internal use, it doesn't give error messages.
}
\details{
 Any of the parameter values can not be missing value (\code{NA} 
 or \code{NaN}) or infinity (\code{Inf}), and the proportions 
 can only take the values between 0 and 1. Besides, the 
 standard deviations can not be negative. The components 
 must be indexed so that the means are in non-decreasing 
 order. If any two consecutive means are equal, then the 
 corresponding standard deviations must be in strictly 
 ascending order. Furthermore, the parameter values should 
 be consistent with the constraints and the distribution
 of components. For example, if one wants to constrain
 the means to lie along a growth curve, then (\eqn{\mu_3} - \eqn{\mu_2}) < 
 (\eqn{\mu_2} - \eqn{\mu_1}) is required. Also, negative means are not permitted by 
 the constraints \code{"FCV"}, \code{"CCV"}, \code{"BINOM"}, \code{"NBINOM"}, 
 \code{"POIS"} and all the distributions but Normal. If the 
 Binomial distribution components with the constraint \code{"BINOM"}
 are fitted, then the relation \eqn{\mu_i} > \eqn{(\sigma_i)^2} need to be
 satisfied. And the Negative Binomial components with the 
 constraint \code{"NBINOM"} require \eqn{\mu_i} < \eqn{(\sigma_i)^2}.
}
\references{
  Macdonald, P.D.M. and Green, P.E.J. (1988) \emph{User's Guide to Program MIX: 
  An Interactive Program for Fitting Mixtures of Distributions.} ICHTHUS DATA
  SYSTEMS.
}
\seealso{
 \code{\link{mixparam}} for organizing the parameter values,
 \code{\link{mixconstr}} for constructing constraints, \code{\link{testconstr}}
 for checking constraints.
}
\keyword{internal}
