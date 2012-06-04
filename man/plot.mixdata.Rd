\name{plot.mixdata}
\alias{plot.mixdata}
\title{Mixdata Object Plotting}
\description{
 A function for plotting of Mixdata objects. It is called
 via the generic function \code{plot}.
}
\usage{
\method{plot}{mixdata}(x, mixpar = NULL, dist = "norm", root = FALSE, ytop = NULL, 
     clwd = 1, main, sub, xlab, ylab, bty, \dots)
}
\arguments{
\item{x}{an object of class \code{"mixdata"}, usually, the
 results returned by the function \code{\link{mixgroup}}.}
\item{mixpar}{\code{NULL} or a data frame containing the values for
 parameters of component distributions, which are, in order, the 
 proportions, means, and standard deviations.}
\item{dist}{the distribution of components, it can be
 \code{"norm"}, \code{"lnorm"}, \code{"gamma"}, \code{"weibull"},
 \code{"binom"}, \code{"nbinom"} and \code{"pois"}.}
\item{root}{if \code{TRUE}, a hanging rootogram will be displayed.}
\item{ytop}{a scalar which determines the top of the y-axis.}
\item{clwd}{a positive number denoting line width, defaulting to \code{1}.}
\item{main}{an overall title for the plot.}
\item{sub}{a subtitle for the plot.}
\item{xlab}{a title for the x-axis.}
\item{ylab}{a title for the y-axis.}
\item{bty}{A character string which determined the type of box which is
           drawn about plots.  If \code{bty} is one of \code{"o"},
           \code{"l"}, \code{"7"}, \code{"c"}, \code{"u"}, or \code{"]"}
           the resulting box resembles the corresponding upper case letter. 
           A value of \code{"n"} suppresses the box.}
\item{\dots}{additional arguments to the function \code{\link{plot.default}}.}
}
\details{
 If the argument \code{mixpar} is \code{NULL}, then only the 
 histogram of the data will be displayed; if \code{mixpar} gives 
 the values of parameters, the component distributions and the
 mixture distribution are computed from the parameter values 
 and superimposed on the histogram.
}
\seealso{
\code{\link{plot.mix}} for plotting Mix objects, \code{\link{plot.default}} 
for additional arguments.
}
\examples{
data(cassie)
as.mixdata(cassie) # if the result isn't `NULL', then cassie is mixed data
plot.mixdata(cassie)
data(pikeraw)
data(pikepar)
pikemd <- mixgroup(pikeraw, breaks = c(0, seq(19.75, 65.75, 2), 80))
plot(pikemd)
plot(pikemd, pikepar, "lnorm")
fit <- mix(pikemd, pikepar, "lnorm", constr = mixconstr(consigma = "CCV"), emsteps = 3)
plot(fit)
plot(pikemd, pikepar, "lnorm", root = TRUE)
plot(fit, root = TRUE)
}
\keyword{dplot}
