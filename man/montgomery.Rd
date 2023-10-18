\name{montgomery}
\alias{montgomery}
\alias{montgomery.eset}

\docType{data}
\title{
RNA-seq count data from Montgomery et al. (2010)
}
\description{
\code{ExpressionSet} object containing RNA-seq count data from lymphoblastoid
cell lines from 60 unrelated Caucasian individuals of European descent. These
count data are employed in the vignette of the package \code{tweeDEseq} Esnaola
et al. (submitted). The original experimental data was published by Montgomery
et al. (2010) and the table of counts in this \code{ExpressionSet} object
corresponds to the one in the ReCount repository available at
\url{http://bowtie-bio.sourceforge.net/recount}. Details on the pre-processing
steps to obtain this table of counts from the raw reads of Montgomery et al.
(2010) are provided on that website and in the publication by Frazee et al. (2011).
}
\usage{
data(montgomery)
}
\value{
montgomery dataset
}
\format{
  
  \code{montgomery.eset}: \code{ExpressionSet} object containing read counts
                          for 52,580 Ensembl genes for each of the 60 Caucasian
                          individuals of European descent.
}

\details{
The table of counts is stored in the \code{AssayData} slot of an
\code{ExpressionSet} object called \code{montgomery.eset} whose phenotypic
data contains the gender of each individual, among other bits of information.
}

\source{
S.B. Montgomery, M. Sammeth, M. Gutierrez-Arcelus, R.P. Lach, C. Ingle,
J. Nisbett, R. Guigo and E.T. Dermitzakis. Transcriptome genetics using
second generation sequencing in a Caucasian population.
\emph{Nature}, 464:773-777, 2010.

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
data(montgomery)
montgomery.eset
table(montgomery.eset$gender)
}
\keyword{datasets}
