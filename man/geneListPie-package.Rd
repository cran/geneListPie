\name{geneListPie-package}
\alias{geneListPie-package}
\alias{geneListPie}
\docType{package}
\title{
Profiling a gene list into GOslim or KEGG function pie
}
\description{
\code{geneListPie} package is for mapping a gene list to function categories defined in GOSlim or Kegg. The results can be plotted as a pie chart to provide a quick view of the genes distribution of the gene list among the function categories. The gene list must contain a list of gene symbols. The package contains a set of pre-processed gene sets obtained from Gene Ontology and MSigDB including human, mouse, rat and yeast. To provide a high level concise view, only GO slim and kegg are provided. The gene sets are regulared updated. User can also use customized gene sets. User can use the R Pie() or Pie3D() function for plotting the pie chart. Users can also choose to output the gene function mapping results and use external software such as Excel(R) for ploting.
}
\details{
\tabular{ll}{
Package: \tab geneListPie\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-10-06\cr
License: \tab GPL-3\cr
LazyLoad: \tab yes\cr
}
load.genelist() to load a list of gene symbols from a text file. \cr
load.genesets() to load customized gene sets from a file. Otherwise use pre-packaged gene sets including gene sets from Human, Mouse, Rat, and Yeast for Biological Processes, Molecular Functions, and Cellular Components. \cr

goslim.human.all \cr
goslim.human.BP \cr
goslim.human.CC \cr
goslim.human.MF \cr
goslim.mouse.all \cr
goslim.mouse.BP \cr
goslim.mouse.CC \cr
goslim.mouse.MF \cr
goslim.rat.all \cr
goslim.rat.BP \cr
goslim.rat.CC \cr
goslim.rat.MF \cr
goslim.yeast.all \cr
goslim.yeast.BP \cr
goslim.yeast.CC \cr
goslim.yeast.MF \cr
kegg2.5.generic \cr

geneListProfile() will then generates the results for plotting function distribution or pie.\cr
printGeneListProfile() can be used for generating mapping results in text format \cr

}
\author{
Xutao Deng

Maintainer: Xutao Deng <xutaodeng@gmail.com>
}
\references{
Gene Ontology \url{http://www.geneontology.org/}
MSigDB \url{http://www.broadinstitute.org/gsea/msigdb/}
}

\keyword{ misc}

\examples{
data(goslim.human.BP)
glist<-c("ABCB7","ABCF1","ABHD2","ACAD9","ACIN1","AMOTL1","ANLN","ANXA4","APBA2","APBA3","BAI3","BCLAF1","BEST1")
r<-geneListProfile(goslim.human.BP, glist, threshold=1)
labels<-sub("_", "__", r$labels) #remove the GO id labels for display, optional
labels<-sub(".*__", "", labels)
pie(r$sizes,labels=labels, main="GO Slim Biological Process Mapping")

##prepare a gene list in a single column or row
#glist<-load.genelist("genelist.txt", format="column")
##this is how to load a customize gene set in a file
#gs<-load.genesets("customized-genesets.txt")
#r<-geneListProfile(gs, glist, threshold=5)
#library(plotrix)
#pie3D(r$sizes,labels=r$labels, main="customized Mapping")
#printGeneListProfile(r)
}
