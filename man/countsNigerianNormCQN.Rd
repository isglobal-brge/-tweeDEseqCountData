\name{countsNigerianNormCQN}
\alias{countsNigerianNormCQN}
\docType{data}
\title{
  Nigerian RNA-seq normalized count data.
}
\description{
  Dataset containing the normalization of the 'countsNigerian'
  dataset. Count data was normalized using the function 'cqn' from the
  \code{cqn} which implements Conditional Quantile Normalization for
  RNA-seq data.
}
\usage{data(countsNigerianNorm)}
\format{
  'countsNigerianNormCQN': data frame of normalized counts.
}

\references{ Hansen, K.D., Irizarry, R.A. and Wu Z., Removing technical
  variability in RNA-seq data using conditional quantile normalization,
  Johns Hopkins, Dept of Biostatistics Working Papers. Working Paper
  227, \url{http://www.bepress.com/jhubiostat/paper227}
  }

\seealso{
  \code{\link{countsNigerian}}
}

\examples{
data(countsNigerianNormCQN)
dim(countsNigerianNormCQN)
}
\keyword{datasets}
