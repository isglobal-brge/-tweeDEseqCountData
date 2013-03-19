\name{commonPickrell1Huang}
\alias{commonPickrell1Huang}
\alias{huangArrayRMAnoBatchCommonSamples.eset}
\alias{pickrell1countsCommonSamples.eset}
\alias{pickrell1countsCQNcommonSamples.eset}
\alias{cqnNormCommonSamples}
\alias{huangArrayRMAnoBatchCommon.eset}
\alias{pickrell1countsCommon.eset}
\alias{pickrell1countsCQNcommon.eset}
\alias{cqnNormCommon}

\docType{data}
\title{
Matching microarray and RNA-seq data from human lymphoblastoid cell lines
}
\description{
\code{ExpressionSet} objects containing microarray and RNA-seq count data for
36 matching samples of lymphoblastoid cell lines derived from unrelated Nigerian
HapMap individuals. These microarray and count data are employed in the vignette
of the package \code{tweeDEseq} and supporting analysis scripts of the article by
Esnaola et al. (submitted). The original experimental data was published by Huang
et al. (2007) and Pickrell et al. (2010).

The loaded objects can be divided into two classes of data. One corresponding to
gene expression data from microarray and RNA-seq with matching samples, and the other
where not only samples, but also genes match between the two gene expression data
matrices, thus being a subset of the former.
}
\usage{
data(commonPickrell1Huang)
}
\format{
  
  \code{huangArrayRMAnoBatchCommonSamples.eset}: \code{ExpressionSet} object containing filtered,
                                                 normalized and batch-removed microarray expression (RMA) values for 16,323 
                                                 Ensembl Gene identifiers from 36 unrelated Nigerian individuals.

  \code{huangArrayRMAnoBatchCommon.eset}: \code{ExpressionSet} object containing filtered,
                                          normalized and batch-removed microarray expression (RMA) values for 15,194
                                          Ensembl Gene identifiers from 36 unrelated Nigerian individuals.

  \code{pickrell1countsCommonSamples.eset}: \code{ExpressionSet} object containing filtered
                                            RNA-seq read counts for 27,438 Ensembl Gene
                                            identifiers from 36 unrelated Nigerian individuals. This table of
                                            counts corresponds to RNA-seq data published by Pickrell et al. (2010)
                                            and processed by the pipeline described by Esnaola et al. (submitted).

  \code{pickrell1countsCommon.eset}: \code{ExpressionSet} object containing filtered
                                     RNA-seq read counts for 15,194 Ensembl Gene
                                     identifiers from 36 unrelated Nigerian individuals. This table of
                                     counts corresponds to RNA-seq data published by Pickrell et al. (2010)
                                     and processed by the pipeline described by Esnaola et al. (submitted).

  \code{pickrell1countsCQNcommonSamples.eset}: \code{ExpressionSet} object containing the table of read counts in
                                               \code{pickrell1countsCommonSamples.eset} normalized using the package \code{cqn}. The
                                               transformation from log CPM values and their offsets, as produced by \code{cqn},
                                               into this table of normalized counts was done with the function \code{normalizeCounts()}
                                               of the \code{tweeDEseq} package.

  \code{pickrell1countsCQNcommon.eset}: \code{ExpressionSet} object containing the table of read counts in
                            \code{pickrell1countsCommon.eset} normalized using the package \code{cqn}. The
                            transformation from log CPM values and their offsets, as produced by \code{cqn},
                            into this table of normalized counts was done with the function \code{normalizeCounts()}
                            of the \code{tweeDEseq} package.

  \code{cqnNormCommonSamples}: \code{list} object output by the \code{cqn()} function from the
                               \code{cqn} package when normalizing the RNA-seq data in \code{pickrell1countsCommonSamples.eset}
                               and used by the function \code{normalizeCounts()} from the \code{tweeDEseq} package
                               to obtain the normalized count expression data matrix in the \code{ExpressionSet} object
                               \code{pickrell1countsCQNcommonSamples.eset}. This object is necessary when
                               using DE detection methods, such as \code{edgeR}, that employ the offsets
                               given by \code{cqn} and the raw counts in \code{pickrell1countsCommonSamples.eset}
                               instead of the transformed normalized counts in \code{pickrell1countsCQNcommonSamples.eset}.

  \code{cqnNormCommon}: \code{list} object output by the \code{cqn()} function from the
                        \code{cqn} package when normalizing the RNA-seq data in \code{pickrell1countsCommon.eset}
                        and used by the function \code{normalizeCounts()} from the \code{tweeDEseq} package
                        to obtain the normalized count expression data matrix in the \code{ExpressionSet} object
                        \code{pickrell1countsCQNcommon.eset}. This object is necessary when
                        using DE detection methods, such as \code{edgeR}, that employ the offsets
                        given by \code{cqn} and the raw counts in \code{pickrell1countsCommon.eset}
                        instead of the transformed normalized counts in \code{pickrell1countsCQNcommon.eset}.
}

\details{
The microarray data was processed from the raw CEL files available at
\url{http://www.ncbi.nlm.nih.gov/geo} under accession GSE7792. First, only
Yoruba samples were considered. Second, data was processed using the Bioconductor
oligo package. Quality assessment was performed by calculating NUSE and RLE
diagnostics (Bolstad et al., 2005) and discarding those samples that either of the
two reported diagnostics was considered below a minimum quality threshold. Third, using
the RMA algorithm (Irizarry et al., 2003) implemented in the \code{rma()} function from
the \code{oligo} package with argument \code{target="core"}, expression values were
background corrected, normalized and summarized into Affymetrix transcript clusters.
Fourth, most samples formed part of family trios and only samples belonging to father
or mother were kept. Fifth, using the \code{getNetAffx()} function from the \code{oligo}
package, Ensembl Transcript identifiers well obtained for each Affymetrix transcript
cluster identifier. Sixth, using the bioconductor package \code{biomaRt}, Ensembl Transcript
identifiers were translated into Ensembl Gene identifiers, resolving multiple assignments
by keeping the Ensembl Gene identifier that had a match in the Ensembl Gene identifiers
forming the table of counts of the Pickrell et al. (2010) RNA-seq data, or choosing one
arbitrarily, otherwise. Seven, duplicated assignments of the same Ensembl Gene identifier
to multiple Affymetrix transcript cluster identifiers were resolved by keeping the
transcript cluster with largest expression variability measured by its interquartile range (IQR).

At this point an expression data matrix of 16,323 Ensembl Genes by 74 samples was obtained
and using the scanning date of each CEL file, samples were grouped into 4 balanced batches
stored in the phenotypic variable \code{Batch} within the resulting \code{ExpressionSet}.
Batch effect was removed by using the QR-decomposition method implemented in the
\code{removeBatchEffect()} function from the package \code{limma} while keeping the
sex-specific expression effect by setting the gender sample indicator variable within the
design matrix argument. Finally, samples were further filtered to match those from
the RNA-seq table of counts and this resulted into the gene expression data in
\code{huangArrayRMAnoBatchCommonSamples.eset}, while an additional filtering of genes to
match those from the RNA-seq table of counts resulted into the gene expression data in
\code{huangArrayRMAnoBatchCommon}.

The RNA-seq data was obtained by the pipeline described in Esnaola et al. (submitted) from
the raw reads deposited at \url{http://eqtl.uchicago.edu/RNA_Seq_data/unmapped_reads}.
The resulting table of counts is available in this data package as an \code{ExpressionSet}
object under the name \code{\link{pickrell1.eset}} and consists of 38,415 Ensembl Genes
by 69 samples. This table of counts was first filtered to remove genes with very low
expression levels by keeping only those with a minimum average of 0.1 counts per million.
Second, we further filtered this table of counts in order to match the samples
obtained after processing the LCL microarray data from Huang et al. (2007). At this point
we also generated a second gene expression data set by further filtering genes matching those
from the LCL microarray data from Huang et al. (2007). Third, we normalized both expression
data sets adjusting for gene length and G+C content using the Bioconductor
package \code{cqn} (Hansen et al., 2012). The corresponding gene length and G+C content
information was obtained from the data stored in the \code{\link{annotEnsembl63}}
\code{data.frame} object.

The resulting pair of sample-matching expression data matrices have 16,323 (microarray) and
27,438 (RNA-seq) genes by 36 samples, while the resulting pair of sample
and gene-matching expression data matrices have 15,194 genes by 36 samples.
}

\source{
  R.S. Huang, S. Duan, W.K. Bleibel, E.O. Kistner, W. Zhang, T.A. Clark,
  T.X. Chen, A.C. Schweitzer, J.E. Blume, N.J. Cox and M.E. Dolan,
  \emph{Proc. Natl. Acad. Sci. USA}, 104(23):9758-9763, 2007.

  J.K. Pickrell, J.C. Marioni, A.A Pai, J.F. Degner, B.E. Engelhardt,
  E. Nkadori, J.B Veyrieras, M. Stephens, Y. Gilad, and J.K. Pritchard,
  \emph{Nature}, 464:768-772, 2010.
}
\references{
  B.M. Bolstad, F. Collin, K. Brettschneider, L. Simpson, R.A. Irizarry, and T.P. Speed.
  Quality assessment of Affymetrix GeneChip data. In \emph{Bioinformatics and
  Computational Biology Solutions Using R and Bioconductor}, pg. 33--48, Springer, 2005.

  K.D. Hansen, R.A. Irizarry and Z. Wu. Removing technical variability
  in RNA-seq data using conditional quantile normalization. \emph{Biostatistics}, 2012.

  R.A. Irizarry, B. Hobbs, F. Collin, Y.D. Beazer-Barclay, K.J. Antonellis, U. Scherf and T.P. Speed.
  Exploration, normalization, and summaries of high density oligonucleotide array probe level data.
  \emph{Biostatistics}, 4(2):249--64, 2003.

  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, J.R. Gonzalez.
  A flexible count data model to fit the wide diversity of expression profiles arising from
  extensively replicated RNA-seq experiments, \emph{submitted}.
}
\seealso{
  \code{\link{pickrell1}}
  \code{\link{annotEnsembl63}}
  }

\examples{
suppressMessages(library(Biobase))
data(commonPickrell1Huang)
dim(huangArrayRMAnoBatchCommonSamples.eset)
dim(pickrell1countsCQNcommonSamples.eset)
table(huangArrayRMAnoBatchCommonSamples.eset$Gender)
table(pickrell1countsCQNcommonSamples.eset$Gender)
dim(huangArrayRMAnoBatchCommon.eset)
dim(pickrell1countsCQNcommon.eset)
table(huangArrayRMAnoBatchCommon.eset$Gender)
table(pickrell1countsCQNcommon.eset$Gender)
}
\keyword{datasets}
