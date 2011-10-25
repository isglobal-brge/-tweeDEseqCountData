\name{tweeDEseqCountData-package}
\alias{tweeDEseqCountData-package}
\docType{data}
\title{RNA-seq count data employed in the vignette of the tweeDEseq package
}
\description{
Initial and normalized count data from the RNA-seq experiment by Pickrell et al. (2010) on lymphoblastoid cell lines derived from 69 unrelated Nigerian individuals. These two count data tables are employed in the vignette of the \code{tweeDEseq} package and its assessment as a method for detecting differential expression (Esnaola et al., \emph{submitted}).
}

%\format{
%}
%\details{
  
%}
\source{
  J.K. Pickrell, J.C. Marioni, A.A Pai, J.F. Degner, B.E. Engelhardt,
  E. Nkadori, J.B Veyrieras, M. Stephens, Y. Gilad, and J.K. Pritchard.
  \emph{Nature}, 464:768-772, 2010.
}

\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication, \emph{submitted}.
}
\seealso{
  \code{\link{annotNigerian}}
  \code{\link{countsNigerian}}
  \code{\link{countsNigerianNorm}}
  \code{\link{genderGenesNigerian}}
  \code{\link{hkGenesNigerian}}
 }
\examples{
data(countsNigerian)
dim(countsNigerian)
data(countsNigerianNorm)
dim(countsNigerianNorm)
data(genderNigerian)
table(genderNigerian)
}
\keyword{datasets}
