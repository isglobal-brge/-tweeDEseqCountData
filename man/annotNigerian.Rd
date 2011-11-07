\name{annotNigerian}

\alias{annotNigerian}

\docType{data}
\title{
Annotation data for the genes forming the table of counts in countsNigerian
}
\description{
Annotation data for the genes forming the table of counts in
\code{\link{countsNigerian}}.
}
\usage{data(annotNigerian)}
\format{
  
  'Symbol': gene symbols for the genes in the initial table of counts
  \code{\link{countsNigerian}}.
}

\details{
These data was retrieved from Ensemble release 63 using the \code{biomaRt} package.
}

%\source{
%}
\references{
  M. Esnaola, P. Puig, D. Gonzalez, R. Castelo, and J.R. Gonzalez.
  Gene-specific count data distributions are required in RNA-seq
  experiments with extensive replication. Submitted.
}

\seealso{
  \code{\link{countsNigerian}}    
  \code{\link{genderGenesNigerian}}
  }
  

\examples{
data(annotNigerian)
dim(annotNigerian)
head(annotNigerian)
}
\keyword{datasets}
