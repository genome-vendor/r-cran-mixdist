\name{mixtheta2par}
\alias{mixtheta2par}
\title{Compute All of Parameters from the Estimated Parameters}
\description{
 When there are constraints on parameters, we only
 estimate some parameters in terms of the
 constraints. This function is to compute all of
 parameters from the estimated ones.
}
\usage{
 mixtheta2par(mixtheta, mixpar, constr, mixprop = TRUE)
}
\arguments{
\item{mixtheta}{a vector containing the values for the estimated
 parameters, usually, a result of the function \code{mixpar2theta}.}
\item{mixpar}{A data frame containing the values for
 parameters of component distributions, which are, 
 in order, the proportions, means, and standard deviations.}
\item{constr}{a list of constraints on parameters of component
 distributions. See function \code{mixconstr}.}
\item{mixprop}{if \code{TRUE}, the proportions will be estimated.}
}
\value{
A data frame containing three variables, which are,
in order, the proportions, means, and standard
deviations, respectively.
}
\references{
  Macdonald, P.D.M. and Green, P.E.J. (1988) \emph{User's Guide to Program MIX: 
  An Interactive Program for Fitting Mixtures of Distributions.} ICHTHUS DATA
  SYSTEMS.
}
\seealso{
 \code{\link{mixpar2theta}} for finding the parameters to be estimated.
}
\keyword{internal}
