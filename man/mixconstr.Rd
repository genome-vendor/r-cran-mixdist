\name{mixconstr} 
\alias{mixconstr}
\title{Construct Constraints on Parameters}
\description{
  Construct constraints on parameters and check if the constraints are invalid.
  See the reference for details.
}
\usage{
mixconstr(conpi = "NONE", conmu = "NONE", consigma = "NONE", 
          fixpi = NULL, fixmu = NULL, fixsigma = NULL, cov = NULL, 
          size = NULL)
}
\arguments{
\item{conpi}{a constraint on proportions, it can be either
 \code{"NONE"} denoting no constraint on proportions,
 or \code{"PFX"} indicating some proportions being fixed.}
\item{conmu}{a constraint on means, it can be \code{"NONE"},
 \code{"MFX"}, \code{"MEQ"}, \code{"MES"} and \code{"MGC"}, which
 denote no constraint on means, specified means fixed, means equal,
 means with equal spaces and means lying along a growth curve,
 respectively.}
\item{consigma}{a constraint on standard deviations, it can be
 \code{"NONE"}, \code{"SFX"}, \code{"SEQ"}, \code{"FCV"}, \code{"CCV"},
 \code{"BINOM"}, \code{"NBINOM"} and \code{"POIS"}, which
 denote no constraint on standard deviations, specified standard
 deviations fixed, standard deviations equal, fixed coefficient 
 of variation, constant coefficient of variation, the means and 
 standard deviations have the same relation as that of Binomial
 distribution, as that of Negative Binomial distribution and as 
 that of Possion distribution.}
\item{fixpi}{\code{NULL} or a vector with \code{TRUE} and \code{FALSE}
 as its elements, indicating which proportions are fixed when
 \code{conpi} is \code{"PFX"}. If an element is \code{TRUE}, the 
 corresponding proportion is fixed at the starting value.}
\item{fixmu}{similar to \code{fixpi}. \code{NULL} or a vector
 indicating which means are fixed when \code{conmu} is \code{"MFX"}.}
\item{fixsigma}{similar to \code{fixpi}. \code{NULL} or a vector
 indicating which standard deviations are fixed when \code{consigma} is \code{"SFX"}.}
\item{cov}{\code{NULL} or a scalar if \code{consigma} is \code{"FCV"}, then
 the coefficients of variation are fixed at this scalar.}
\item{size}{\code{NULL} or a vector of numbers of trials for each
 component when \code{consigma} is \code{"BINOM"} or \code{"NBINOM"}.}
}
\value{
 A list containing the following components, which are,
 in order, \code{conpi}, \code{conmu}, \code{consigma}, \code{fixpi},
 \code{fixmu}, \code{fixsigma}, \code{cov}, \code{size}.
}
\references{
  Macdonald, P.D.M. and Green, P.E.J. (1988) \emph{User's Guide to Program MIX: 
  An Interactive Program for Fitting Mixtures of Distributions.} ICHTHUS DATA
  SYSTEMS.
}
\seealso{
 \code{\link{mixgroup}} for grouping data, \code{\link{mixparam}} for
 constructing starting values of parameters.
}
\examples{
mixconstr()
mixconstr(conmu = "MEQ", consigma = "SFX", fixsigma = c(TRUE, FALSE, TRUE, TRUE, FALSE))
mixconstr(consigma = "BINOM", size = c(25, 25, 25))
}
\keyword{misc}
\keyword{utilities}
