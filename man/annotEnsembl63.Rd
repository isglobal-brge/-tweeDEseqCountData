\name{annotEnsembl63}

\alias{annotEnsembl63}

\docType{data}
\title{
Annotation data from Ensemble Release 63
}
\description{
Annotation data for the human genes forming the tables of counts in
\code{\link{pickrell.eset}}, \code{\link{montgomery.eset}} and
\code{\link{cheung.eset}}.
}
\usage{data(annotEnsembl63)}
\format{
  
  \code{Symbol}: gene symbol according to the HUGO Gene Nomenclature Committee (HGNC).
  \code{Chr}: chromosome.
  \code{Start}: start chromosomal position (Human genome version GRCh37).
  \code{End}: end chromosomal position (Human genome version GRCh37).
  \code{EntrezID}: Entrez gene identifier.
  \code{Description}: Short description of the gene.
  \code{Length}: Length of the longest cDNA of this gene.
  \code{GCcontent}: G+C content of the longest cDNA of this gene.
}

\details{
Data for all columns except \code{Length} and \code{GCcontent} was retrieved
from Ensembl release 63 using the \code{biomaRt} package. Data in columns
\code{Length} and \code{GCcontent} was obtained by downloading the set of
Ensembl Release 63 human cDNAs at \url{ftp://ftp.ensembl.org/pub/release-63/fasta/homo_sapiens/cdna/Homo_sapiens.GRCh37.63.cdna.all.fa.gz} and selecting the longest
cDNA for each Ensembl Gene from which length and G+C content was calculated.
}

%%\source{
%%}
\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, and J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication. Submitted.
}

\seealso{
  \code{\link{pickrell}}    
  \code{\link{pickrellNorm}}    
  \code{\link{montgomery}}    
  \code{\link{genderGenes}}
  \code{\link{hkGenes}}
  }

\examples{
data(annotEnsembl63)
dim(annotEnsembl63)
head(annotEnsembl63)
}
\keyword{datasets}
