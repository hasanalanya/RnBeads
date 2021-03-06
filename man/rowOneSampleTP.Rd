% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/differentialMethylation.R
\name{rowOneSampleTP}
\alias{rowOneSampleTP}
\title{rowOneSampleTP}
\usage{
rowOneSampleTP(X, mu = 0, alternative = "two.sided")
}
\arguments{
\item{X}{Matrix on which the test is performed for every row}

\item{mu}{The mean that is tested against}

\item{alternative}{Testing alternative. Must be one of "two.sided" (default),"less","greater" or "all".
in case of "all" a data frome with corresping alternative variables is returned. 
Otherwise the result is a vector.}
}
\value{
vector (or data.frame if alternative=="all") of p-values from a paired t-test
}
\description{
performs a two-sided t-test for paired samples on each row of a matrix X with the indices inds.1 vs indices inds.g2 as group assignments.
}
\note{
Requires \code{matrixStats} package
}
\examples{
\donttest{
library(RnBeads.hg19)
data(small.example.object)
logger.start(fname=NA)
meth.mat <- meth(rnb.set.example)
p.vals <- rowOneSampleTP(meth.mat,mu=0,alternative="greater")
}
}
\author{
Fabian Mueller
}

