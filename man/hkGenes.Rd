\name{hkGenes}
\alias{hkGenes}

\docType{data}
\title{
Housekeeping Genes from Eisenberg and Levanon (2003)
}
\description{
Housekeeping genes reported by Eisenberg and Levanon (2003) and occurring within
the set of genes that form the tables of counts in \code{\link{pickrell.eset}},
\code{\link{montgomery.eset}} and \code{\link{cheung.eset}} in this experimental data
package.
}
\usage{data(hkGenes)}
\value{
hkGenes dataset
}
\format{
  
  \code{hkGenes}: Ensembl gene identifiers from the list of housekeeping genes
                  occuring within the set of genes that form the tables of counts
                  in \code{\link{pickrell.eset}}, \code{\link{montgomery.eset}}
                  and \code{\link{cheung.eset}} in this experimental data
                  package.
}

\details{
This list of genes has been derived from mapping the original list in
\url{http://www.cgen.com/supp_info/Housekeeping_genes.html} to Ensemble
Gene identifiers using the \code{\link[org.Hs.eg.db]{org.Hs.eg.db}} package.
This list of housekeeping genes has been employed to compare count data distributions
from genes with different expression dynamics in (Esnaola et al., \emph{submitted})
and is restricted to genes occuring within the set of genes that form the tables
of counts in \code{\link{pickrell.eset}}, \code{\link{montgomery.eset}} and
\code{\link{cheung.eset}} in this experimental data package.
}

\source{
  E. Eisenberg, and E.Y. Levanon. Human housekeeping genes are compact.
  \emph{Trends Genet}, 19(7):362--365, 2003.
}
\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, and J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication. Submitted.

}

\seealso{
  \code{\link{annotEnsembl63}}    
  \code{\link{pickrell}}    
  \code{\link{pickrellNorm}}    
  \code{\link{montgomery}}    
  \code{\link{genderGenes}}
  }

\examples{
data(hkGenes)
length(hkGenes)
head(hkGenes)
}
\keyword{datasets}
