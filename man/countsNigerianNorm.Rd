\name{countsNigerianNorm}
\alias{countsNigerianNorm}
\docType{data}
\title{
  Nigerian RNA-seq normalized count data.
}
\description{
  Dataset containing the normalization of the 'countsNigerian'
  dataset. Count data was normalized using the function \code{\link[tweeDEseq]{normalizeCounts}} from the \code{tweeDEseq} package which employs the
  functionality provided for that purpose by the \code{edgeR}
  package and it applies, among other steps, TMM library size
  adjustment (Robinson and Oshlack, 2010).
}
\usage{data(countsNigerianNorm)}
\format{
  'countsNigerianNorm': data frame of normalized counts.
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
  
  M.D. Robinson, A. Oshlack (2010). A scaling normalization method for
  differential expression analysis of RNA-seq data. Genome Biology,
  pages 11-R25.
}

\seealso{
  \code{\link{countsNigerian}}
}

\examples{
data(countsNigerianNorm)
dim(countsNigerianNorm)

## The normalization was done using the function 'normalizeCounts()'
\dontrun{
library(tweeDEseq)
data(countsNigerian)
data(genderNigerian)
countsNigerianNorm <- normalizeCounts(countsNigerian, genderNigerian)
}
}
\keyword{datasets}
