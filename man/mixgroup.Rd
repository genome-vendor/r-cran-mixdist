\name{mixgroup} 
\alias{mixgroup}
\title{Construct Grouped Data from Raw Data}
\description{
  Group raw data in the form of numbers of observations
  over successive intervals.
}
\usage{
mixgroup(x, breaks = NULL, xname = NULL, k = NULL, usecondit = FALSE)
}
\arguments{
\item{x}{a data frame or matrix containing raw data, whose
 first column should be the measurements to be grouped, and
 second column, if available, includes the numbers indicating
 which component each individual belongs to.}
\item{breaks}{one of:
             *  a vector giving the boundaries of intervals
                which raw data are grouped into,
             *  a single number giving the number of intervals,
             *  a character string naming an algorithm to
                compute the number of intervals,
             *  a function to compute the number of intervals.
          In the last three cases the number is a suggestion only.
}
\item{xname}{the name of measurement.}
\item{k}{the number of components.}
\item{usecondit}{if \code{usecondit} is \code{TRUE} and \code{x} has two
 columns, then conditional data will be displayed with grouped data.}
}
\value{
 A data frame containing grouped data derived from raw data, 
 whose first column includes the right boundaries of grouping 
 intervals, where the first and last intervals are open-ended; 
 whose second column consists of the frequencies which are 
 the numbers of observations falling into each interval. If
 \code{usecondit} is \code{TRUE} and the numbers indicating which 
 component the individual comes from are available, conditional 
 data which can be regarded as a table, whose element in row j 
 and column i is the number of observations from the jth 
 interval belonging to the ith component, will be displayed 
 with grouped data.
}
\seealso{
\code{\link{hist}} for more information about the argument
\code{breaks}, \code{\link{is.mixdata}} for checking the class of 
data sets, \code{\link{mixparam}} for organizing the parameter
values, \code{\link{mixconstr}} for constructing constraints.
}
\examples{
data(pikeraw) # load raw data `pikeraw'
pikeraw # display the data set `pikeraw'
mixgroup(pikeraw) # group raw data
pikemd <- mixgroup(pikeraw, breaks = c(0, seq(19.75, 65.75, 2), 80))
plot(pikemd)
mixgroup(pikeraw, breaks = c(0, seq(19.75, 65.75, 2), 80), usecondit = TRUE, k = 5)
# construct grouped data associated with conditional data
mixgroup(pikeraw, usecondit = TRUE)
mixgroup(pikeraw, usecondit = TRUE, k = 3) # grouping data with a warning message
mixgroup(pikeraw, usecondit = TRUE, k = 8)
}
\keyword{misc}
\keyword{utilities}
