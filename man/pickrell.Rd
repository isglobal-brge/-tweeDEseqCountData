\name{pickrell}
\alias{pickrell}
\alias{pickrellNorm}
\alias{pickrell.eset}
\alias{pickrellNorm.eset}

\docType{data}
\title{
RNA-seq count data from Pickrell et al. (2010)
}
\description{
\code{ExpressionSet} objects containing RNA-seq count data from lymphoblastoid
cell lines from 69 unrelated Nigerian individuals. These count data are employed
in the vignette of the package \code{tweeDEseq} Esnaola et al. (submitted). The
original experimental data was published by Pickrell et al. (2010) and the table
of counts in \code{pickrell.eset} corresponds to the one in the
ReCount repository available at \url{http://bowtie-bio.sourceforge.net/recount}.
Details on the pre-processing steps to obtain this table of counts from the raw
reads of Pickrell et al. (2010) are provided on that website and in the
publication by Frazee et al. (2011). The other object \code{pickrellNorm.eset}
contains the corresponding filtered and normalized table of counts.
}
\usage{
data(pickrell)
}
\format{
  
  \code{pickrell.eset}: \code{ExpressionSet} object containing read counts
                        for 52,580 Ensembl genes for each of the 69 Nigerian
                        individuals.
  \code{pickrellNorm.eset}: \code{ExpressionSet} object containing filtered
                            and normalized read counts for 10,231 Ensembl
                            genes for each of the 69 Nigerian individuals.
}

\details{
These tables of counts are stored in the \code{AssayData} slot of the
\code{ExpressionSet} objects called \code{pickrell.eset} and \code{pickrellNorm.eset}
whose phenotypic data contains the gender of each individual, among other bits
of information. The filtered and normalized table of counts was obtained from
the raw counts in \code{pickrell.eset} by first removing genes with less than
0.5 cpm (counts per million reads) in all samples but one and then applying
the conditinal quantile normalization procedure by Hansen et al. (2011).
}

\source{
J.K. Pickrell, J.C. Marioni, A.A Pai, J.F. Degner, B.E. Engelhardt,
E. Nkadori, J.B Veyrieras, M. Stephens, Y. Gilad, and J.K. Pritchard
\emph{Nature}, 464:768-772, 2010.

A.C. Frazee, B. Langmead and J.T. Leek. ReCount: a multi-experiment
resource of analysis-ready RNA-seq gene count datasets.
\emph{BMC Bioinformatics}, 12:449, 2011.
}
\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication. Submitted.

  K.D. Hansen, R.A. Irizarry and Z. Wu. Removing technical variability
  in RNA-seq data using conditional quantile normalization.
  Johns Hopkins University, Dept. of Biostatistics Working Papers,
  Paper 227. (\url{http://www.bepress/com/jhubiostat/paper227}).
}
\seealso{
  \code{\link{annotEnsembl63}}    
  \code{\link{montgomery}}    
  \code{\link{cheung}}    
  \code{\link{genderGenes}}
  \code{\link{hkGenes}}
  }

\examples{
suppressMessages(library(Biobase))
data(pickrell)
pickrell.eset
table(pickrell.eset$gender)
data(pickrellNorm)
pickrellNorm.eset
}
\keyword{datasets}
