% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enrichment_analysis.R
\name{parseMsigdb}
\alias{parseMsigdb}
\title{parseMsigdb}
\usage{
parseMsigdb(filePath)
}
\arguments{
\item{filePath}{Path to a file containing gene sets from MSIGDB. The gene ids
must be in Entrez format.}
}
\value{
A list of vectors where each vector consists of a set of Entrez gene
  ids
}
\description{
A function to import gene sets downloaded from the Molecular Signatures
Database (MSIGDB)
}
\examples{
#First Download gene sets (with Entrez Ids) from MSIGDB database
#from \\url{http://software.broadinstitute.org/gsea/msigdb/collections.jsp#C2}

input <- system.file('extdata', 'msigdb_test.gmt', package='RCAS')
msigDB <- parseMsigdb (filePath = input)

}
