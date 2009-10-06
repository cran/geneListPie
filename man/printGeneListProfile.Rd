\name{printGeneListProfile}
\alias{printGeneListProfile}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Print the profiling results}
\description{
  Print the results from geneListProfile(). The printing format can be MSigDB or 2 column (Gene_Set, number) format, where Gene_Set is the name of a gene set and number is the number of overlapping genes between the gene list and the gene set. In the MSigDB format the output contains all the overlapping gene symbols. The output can be stdin or directed to a file. 
}
\usage{
printGeneListProfile(r, file = "", format = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{r}{ profiling mapping results from geneListProfile }
  \item{file}{ filename, default to stdin }
  \item{format}{ "MSigDB" format or NULL }
}

\author{ Xutao Deng}
