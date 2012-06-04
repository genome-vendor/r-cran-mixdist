\name{mixpar2theta} 
\alias{mixpar2theta}
\title{Find the Parameters to be Estimated}
\description{
 When there are constraints on parameters, we only
 estimate some parameters in terms of the constraints.
 This function is to find the parameters to be estimated.
 See the reference for details.
}
\usage{
mixpar2theta(mixpar, constr, mixprop = TRUE) 
}
\arguments{
\item{mixpar}{A data frame containing the values for
 parameters of component distributions, which are, in 
 order, the proportions, means, and standard deviations.}
\item{constr}{a list of constraints on parameters of
 component distributions.}
\item{mixprop}{if \code{TRUE}, the proportions will be estimated.}
}
\value{
 A vector containing the values for the parameters to
 be estimated.
}
\references{
  Macdonald, P.D.M. and Green, P.E.J. (1988) \emph{User's Guide to Program MIX: 
  An Interactive Program for Fitting Mixtures of Distributions.} ICHTHUS DATA
  SYSTEMS.
}
\seealso{
\code{\link{mix}} for fitting mixture model, \code{\link{mixtheta2par}} for
computing all the parameters from the estimated
parameters.
}
\keyword{internal}
