\name{load.genesets}
\alias{load.genesets}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Load customized gene sets into work space }
\description{
Load customized gene sets into work space. Pre-packaged genesets can also be used \cr
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
}
\usage{
load.genesets(file = "geneset.gmt.txt")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{ file name of customzied gene sets in MSigDB format. \url{http://www.broadinstitute.org/gsea/msigdb/} }
}

\value{
  A character vector of length the number of lines read. Each line is a gene set.
}

\author{ Xutao Deng }

