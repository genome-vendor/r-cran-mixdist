\name{pearsonpar}
\alias{pearsonpar}
\title{Starting Values of Parameters for the Pearson's Data}
\usage{data(pearsonpar)}
\description{
Starting values of parameters for fitting a mixture distribution to the data set \code{pearson}.

The \code{pearsonpar} data frame has 2 rows and 3 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{pi}{the starting values for proportions.}
    \item{mu}{the starting values for means.}
    \item{sigma}{the starting values for standard deviations.}
  }
}
\source{
   Pearson, K. (1894). \emph{Contributions to the mathematical theory of evolution.} 
   Phil. Trans. Roy. Soc. London A 185, 71-110.
}
\references{
   \url{http://www.math.mcmaster.ca/peter/mix/demex/excrabs.html}
}
\examples{
data(pearsonpar)
}
\keyword{datasets}
