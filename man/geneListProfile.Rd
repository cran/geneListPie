\name{geneListProfile}
\alias{geneListProfile}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Profling a gene list against gene sets }
\description{
  number is the number of overlapping genes between the gene list and the gene set.
}
\usage{
geneListProfile(gs, glist, threshold = 10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gs}{ gene sets, use prepackaged or user loaded }
  \item{glist}{ gene list loaded by user }
  \item{threshold}{ specify the mininum number of overlapping genes in a gene set to output. This is to avoid displaying gene sets with very few overlapping genes. For each gene set, if the number of overlapping genes is smaller than the threshold, the set of overlapping genes will be combined to a gene set labeled "Others" }
}

\value{
  \item{labels }{the labels of the gene sets}
  \item{sizes }{the number of overlapping genes of gene sets against gene list}
  \item{symbols }{the gene symbols of overlapping genes}
}

\author{ Xutao Deng}

\examples{
data(goslim.human.BP)
glist<-c("ABCB7","ABCF1","ABHD2","ACAD9","ACIN1","AMOTL1","ANLN","ANXA4","APBA2","APBA3","BAI3","BCLAF1","BEST1")
r<-geneListProfile(goslim.human.BP, glist, threshold=1)
labels<-sub("_", "__", r$labels) #remove the GO id labels for display, optional
labels<-sub(".*__", "", labels)
pie(r$sizes,labels=labels, main="GO Slim Biological Process Mapping")
}

