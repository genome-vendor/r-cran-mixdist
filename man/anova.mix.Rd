\name{anova.mix} 
\alias{anova.mix}
\title{ANOVA Tables for Mixture Model Objects}
\description{
     Compute analysis of variance tables for one or two mixture model objects.
}
\usage{
\method{anova}{mix}(object, mixobj2, \dots)
}
\arguments{
\item{object}{an object of class \code{"mix"}, usually, a result of a call to
 the mixture model fitting function \code{\link{mix}}.}
\item{mixobj2}{an object of the same type to be compared with \code{object}, 
 which contains the results of fitting another model with more or fewer 
 parameters fitted.}
\item{\dots}{additional objects of the same type.}
}
\value{
An object of class \code{"anova"} inheriting from class
\code{"data.frame"}. When given a single argument this
function produces a table which tests whether the model
is significant. The table contains the residual
degrees of freedom, Chi-square statistic and P value.
If the class of the argument is not \code{"mix"}, this function
returns \code{NULL}. When given two objects, it tests the
models against one another and lists them in the order
of number of parameters fitted. For the model with
fewer parameters fitted, the change in degrees of
freedom is given. This only make statistical sense if
the models are nested. If one of arguments does not
belong to the class \code{"mix"}, the function will give
the anova table for the other argument; if both of
them do not, it returns \code{NULL}.
}
\section{Warning}{
     The comparison between two models will only be valid if
     they are fitted to the same dataset. And the two models should
     be nested. 
}
\seealso{
  The model fitting function \code{\link{mix}}, the generic function
  \code{\link{anova}}.
}
\examples{
data(pike65) # load the grouped data `pike65'
data(pikepar) # load the initial values of parameters for the data `pike65'
fitpike3 <- mix(pike65, pikepar, "lnorm", mixconstr(conmu = "MFX", 
                fixmu = c(FALSE, FALSE, FALSE, FALSE, TRUE), consigma = "CCV"), emstep = 3)
anova(fitpike3)
fitpike4 <- mix(pike65, pikepar, "lnorm", mixconstr(consigma = "CCV"), emsteps = 3)
anova(fitpike4)
anova(fitpike3, fitpike4)
anova(fitpike4, fitpike3)
}
\keyword{models}
