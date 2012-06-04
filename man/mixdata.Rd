\name{mixdata}
\alias{as.mixdata}
\alias{is.mixdata}
\title{Mixed Data}
\description{
\code{as.mixdata} checks if its argument is mixed data, if true, 
it returns the data with class \code{"mixdata"}, if false, it 
returns \code{NULL}.

\code{is.mixdata} returns \code{TRUE} if its argument is of class 
\code{"mixdata"} and \code{FALSE} otherwise.
}
\usage{
as.mixdata(x)
is.mixdata(x)
}
\arguments{
  \item{x}{object to be tested.}
}
\details{
 Mixed data consist of grouped data and conditional data (if available).
 Grouped data is either a data frame or a matrix, whose first
 column should be right boundaries of grouping intervals where
 the first and last intervals are open-ended; whose second
 column should consist of the frequencies indicating numbers of
 observations falling into each interval. If conditional data
 are available, mixed data should have \emph{k} + 2 columns, where
 \emph{k} is the number of components, whose element in row \emph{j} and
 column \emph{i} + 2 is the number of observations from the \emph{j}th interval
 belonging to the \emph{i}th component.
}
\seealso{
 \code{\link{mixgroup}} to construct mixed data.
}
\examples{
data(pike65) # load data set `pike65'
pike65 # display the mixed data `pike65'
data(pike65sg) # load data set `pike65sg'
pike65sg # display the mixed data `pike65sg'
data(pikepar)
as.mixdata(pikepar)
as.mixdata(pike65)
is.mixdata(pike65)
is.mixdata(as.mixdata(pike65))
}
\keyword{manip}
\keyword{attribute}
