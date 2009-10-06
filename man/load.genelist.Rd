\name{load.genelist}
\alias{load.genelist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ load a gene list into workspace }
\description{
  load a gene list consiting of a set of symbols; return a character vector
}
\usage{
load.genelist(file = "genelist.txt", format = "column", sep = "\t")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{ file name }
  \item{format}{ "row" or "column" }
  \item{sep}{ default separator is tab }
}
\details{
  The list can be either in a row or a column. If in a row format, seperator needs to be specified
}
\value{
  return a character vector consisting of the gene symbols in the list
}

\author{ Xutao Deng  }
