\name{genderGenes}
\alias{genderGenes}
\alias{msYgenes}
\alias{XiEgenes}

\docType{data}
\title{
Genes with documented sex-specific expression
}
\description{
Genes with documented sex-specific expression and occurring within the set of
genes that form the tables of counts in \code{\link{pickrell.eset}},
\code{\link{montgomery.eset}} and \code{\link{cheung.eset}}.
}
\usage{data(genderGenes)}
\value{
genderGenes dataset
}
\format{
  
  \code{msYgenes}: Ensembl gene identifiers from genes belonging to the
                    male-specific region of chromosome Y (Skaletsky et al., 2003).

  \code{XiEgenes}: Ensembl gene identifiers from genes located in the X chromosome
                   and which have been reported to escape X-inactivation.
}

\details{
These two lists of genes form a gold-standard set of genes with documented sex-specific
expression which have been employed in the assessment of the method for differential
expression analysis implemented in the \code{tweeDEseq} package
(Esnaola et al., \emph{submitted}). Both gene lists are restricted to genes occuring
within the set of genes that form the tables of counts in \code{\link{pickrell.eset}},
\code{\link{montgomery.eset}} and \code{\link{cheung.eset}}.
}

\source{
H.S. Skaletsky, T. Kuroda-Kawaguchi, P.J. Minx, H.S. Cordum, L. Hillier,
L.G. Brown, S. Repping, T. Pyntikova, J. Ali, T. Bieri, A. Chinwalla,
A. Delehaunty, K. Delehaunty, H. Du, G. Fewell, L. Fulton, T. Graves,
S.F. Hou, P. Latrielle, S. Leonard, E. Mardis, R. Maupin, J. McPherson,
T. Miner, W. Nash, C. Nguyen, P. Ozersky, K. Pepin, S. Rock, T. Rohlfing,
K. Scott, B. Schultz, C. Strong, A. Tin-Wollam, S.P. Yang, R.H. Waterston,
R.K. Wilson, S. Rozen, and D.C. Page. The male-specific region of the
human Y chromosome is a mosaic of discrete sequence classes.
\emph{Nature}, 423:825--837, 2003.

L. Carrel and H.F. Willard. X-inactivation profile reveals extensive
variability in X-linked gene expression in females.
\emph{Nature}, 434:400--404, 2005.
}
\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication. Submitted.
}
\seealso{
  \code{\link{annotEnsembl63}}    
  \code{\link{pickrell}}    
  \code{\link{pickrellNorm}}    
  \code{\link{montgomery}}    
  \code{\link{hkGenes}}
  }

\examples{
data(genderGenes)
length(msYgenes)
length(XiEgenes)
}
\keyword{datasets}
