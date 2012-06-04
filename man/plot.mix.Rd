\name{plot.mix}
\alias{plot.mix}
\title{Mix Object Plotting}
\description{
 A function for plotting of Mix objects. It is called
 via the generic function \code{plot}.
}
\usage{
\method{plot}{mix}(x, mixpar = NULL, dist = "norm", root = FALSE, ytop = NULL, 
     clwd = 1, main, sub, xlab, ylab, bty, BW = FALSE, \dots)
}
\arguments{
\item{x}{an object of class \code{"mix"}, usually, the results
 returned by the model fitting function \code{\link{mix}}.}
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
\item{BW}{logical; if TRUE the plot will be drawn in black and white.}  
\item{\dots}{additional arguments to the function \code{\link{plot.default}}.}
}
\details{
 If the argument \code{x} gives an object of class
 \code{"mix"}, the plot will be a histogram for the grouped
 data which come from the element \code{mixdata} of \code{x}.
 Although the leftmost (first) and rightmost (mth) intervals are 
 always open-ended, on the histogram the first interval is shown 
 as being twice the width of the second interval and the mth is 
 shown as being twice the width of the m - 1st interval. When the 
 fitted distribution is one of \code{"lnorm"}, \code{"gamma"} and 
 \code{"weibull"}, the left boundary of the first interval will be 
 taken zero since negative values and zeroes are not allowed for 
 these distribution. For the distributions \code{"binom"}, \code{"nbinom"} 
 and \code{"pois"} negative data are not permitted, so the left 
 boundary of the first interval is taken -0.5. The component 
 distributions weighted by their respect proportions and the 
 mixture distribution are computed by the estimated parameter
 values from the element \code{parameters} of \code{x}, and 
 superimposed on the histogram. The distribution of components 
 will be taken the value of the element \code{distribution}. If \code{sub}, 
 \code{xlab}, \code{ylab} and \code{bty} are not specified, the default 
 values will be used. The positions of the means are indicated with
 triangles. When the argument \code{root} is \code{TRUE}, a hanging
 rootogram will be displayed, that is, if only grouped data are 
 given, this option plots the histogram with the square root of 
 relative frequency on the y-axis. If there is a model as well as 
 data, not only is the y-axis the square root of relative frequency,
 also the bars of the histogram, instead of rising from 0, are 
 shifted up or down so that the mid-point of the top of the bar 
 is exactly on the curve indicating the mixture distribution 
 and the bottom of the bar may therefore be above or below the 
 x-axis. If the bar goes below the x-axis, the portion below is 
 shown as a blue rectangle. If the bar does not reach the x-axis,
 the space between the bottom of the bar and the x-axis is shown 
 as a blue rectangle. If the blue rectangles are almost above or 
 below in an area of the x-axis, we may say that the mixture 
 curve around that area is not fitting well.
}
\seealso{
\code{\link{mixparam}} for organizing the parameter values, \code{\link{mix}}
for fitting mixture model, \code{\link{plot.mixdata}} for plotting
Mixdata objects, \code{\link{plot.default}} for additional arguments.
}
\examples{
data(pike65)
data(pikepar)
fit1 <- mix(pike65, pikepar, "lnorm", constr = mixconstr(consigma = "CCV"), emsteps = 3)
plot(fit1)
plot(fit1, root = TRUE)
data(bindat)
data(binpar)
fit2 <- mix(bindat, binpar, "binom", constr = mixconstr(consigma = "BINOM", size = c(20, 20, 20, 20)))
plot(fit2)
plot(fit2, root = TRUE)
}
\keyword{dplot}
