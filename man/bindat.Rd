\name{bindat}
\alias{bindat}
\title{Grouped Binomial Data}
\usage{data(bindat)}
\description{
We randomly generate four groups of binomial distribution data with
means 4, 8, 12, 16, and corresponding variances 3.2, 4.8, 4.8 and 3.2.
Then we mix the four data groups with 100 observations for each group,
i.e., with equal proportions. After grouping the mixture data, we obtain 
the grouped data \code{bindat}.

The \code{bindat} data frame has 21 rows and 2 columns.
}
\format{
  This data frame contains the following columns:
  \describe{
    \item{x}{the boundaries of grouping intervals.}
    \item{freq}{the frequencies of observation falling into each interval.}
  }
}
\examples{
data(bindat)
data(binpar)
plot.mixdata(bindat)
fit <- mix(bindat, binpar, "binom", mixconstr(conpi = "PFX",
           fixpi = c(TRUE, TRUE, TRUE, TRUE), consigma = "BINOM", size = c(20, 20, 20, 20)))
fit
plot(fit)
}
\keyword{datasets}
