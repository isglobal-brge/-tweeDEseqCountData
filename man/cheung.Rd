\name{cheung}
\alias{cheung}
\alias{cheung.eset}

\docType{data}
\title{
RNA-seq count data from Cheung et al. (2010)
}
\description{
\code{ExpressionSet} object containing RNA-seq count data from lymphoblastoid
cell lines from 41 unrelated Caucasian individuals of European descent. These
count data are employed in the vignette of the package \code{tweeDEseq} Esnaola
et al. (submitted). The original experimental data was published by Cheung
et al. (2010) and the table of counts in this \code{ExpressionSet} object
corresponds to the one in the ReCount repository available at
\url{http://bowtie-bio.sourceforge.net/recount}. Details on the pre-processing
steps to obtain this table of counts from the raw reads of Cheung et al.
(2010) are provided on that website and in the publication by Frazee et al. (2011).
}
\usage{
data(cheung)
}
\format{
  
  \code{cheung.eset}: \code{ExpressionSet} object containing read counts
                      for 52,580 Ensembl genes for each of the 41 Caucasian
                      individuals of European descent.
}

\details{
The table of counts is stored in the \code{AssayData} slot of an
\code{ExpressionSet} object called \code{cheung.eset} whose phenotypic
data contains the gender of each individual, among other bits of information.
}

\source{
V.G. Cheung, R.R. Nayak, I.X. Wang, S. Elwyn, S.M. Cousins, M. Morley
and R.S. Spielman. \emph{Plos Biology}, 8(9), pii:e1000480, 2010.

A.C. Frazee, B. Langmead and J.T. Leek. ReCount: a multi-experiment
resource of analysis-ready RNA-seq gene count datasets.
\emph{BMC Bioinformatics}, 12:449, 2011.
}
\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication. Submitted.
}
\seealso{
  \code{\link{annotEnsembl63}}    
  \code{\link{pickrell}}    
  \code{\link{cheung}}    
  \code{\link{genderGenes}}
  \code{\link{hkGenes}}
  }

\examples{
suppressMessages(library(Biobase))
data(cheung)
cheung.eset
table(cheung.eset$gender)
}
\keyword{datasets}
