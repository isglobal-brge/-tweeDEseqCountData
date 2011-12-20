\name{countsNigerianNormCQN}
\alias{countsNigerianNormCQN}
\docType{data}
\title{
  Nigerian RNA-seq normalized count data.
}
\description{
  Dataset containing the normalization of the 'countsNigerian'
  dataset. Data were normalized using the Conditional Quantile
  Normalization, available at package \code{cqn}.
}
\usage{data(countsNigerianNormCQN)}
\format{
  'countsNigerianNormCQN': data frame of normalized counts.
}

\source{
J.K. Pickrell, J.C. Marioni, A.A Pai, J.F. Degner, B.E. Engelhardt,
E. Nkadori, J.B Veyrieras, M. Stephens, Y. Gilad, and J.K. Pritchard
\emph{Nature}, 464:768-772, 2010.
}


\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication. Submitted.
}

\seealso{
  \code{\link{countsNigerian}}
  \code{\link{pickrell}}
  \code{\link{pickrellNorm}}
}

\examples{
data(countsNigerianNormCQN)
dim(countsNigerianNormCQN)
}
\keyword{datasets}
