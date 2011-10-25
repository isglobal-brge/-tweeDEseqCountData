\name{hkGenesNigerian}

\alias{hkGenesNigerian}

\docType{data}
\title{
Housekeeping Genes from Eisenberg and Levanon (2003)
}
\description{
Housekeeping genes reported by Eisenberg and Levanon (2003) and and occurring within the set of genes that form the initial table of counts \code{\link{countsNigerian}} pre-processed from the RNA-seq experiment by Pickrell et al. (2010) on lymphoblastoid cell lines derived from 69 unrelated Nigerian individuals.
}
\usage{data(hkGenesNigerian)}
\format{
  
  'hkGenesNigerian': Ensembl gene identifiers from the list of housekeeping genes in the initial table of counts \code{\link{countsNigerian}}.
}

\details{
This list of genes has been derived from mapping the original list in
\url{http://www.cgen.com/supp_info/Housekeeping_genes.html} to Ensemble
Gene identifiers using the \code{\link[org.Hs.eg.db]{org.Hs.eg.db}} package.
This list of housekeeping genes has been employed to compare count data distributions
from genes with different expression dynamics in (Esnaola et al., \emph{submitted}) and
is restricted to genes occuring in the initial table of counts obtained after
pre-processing the RNA-seq data from Pickrell et al. (2010), as described in Esnaola et
al., \emph{submitted}.
}

\source{
  E. Eisenberg, and E.Y. Levanon. Human housekeeping genes are compact.
  \emph{Trends Genet}, 19(7):362--365, 2003.
}
\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, and J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication. Submitted.

  J.K. Pickrell, J.C. Marioni, A.A Pai, J.F. Degner, B.E. Engelhardt,
  E. Nkadori, J.B Veyrieras, M. Stephens, Y. Gilad, and J.K. Pritchard.
  \emph{Nature}, 464:768--772, 2010.

}
\seealso{
  \code{\link{countsNigerian}}
  \code{\link{annotNigerian}}
  }
\examples{
data(hkGenesNigerian)
length(hkGenesNigerian)
head(hkGenesNigerian)
}
\keyword{datasets}
