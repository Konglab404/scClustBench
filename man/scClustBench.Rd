% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scClustBench.R
\name{scClustBench}
\alias{scClustBench}
\title{scClustBench}
\usage{
scClustBench(mat, method = "simlr", similarity = NULL,
  geneFilter = 0.8, rep = 5, subset_p = 0.8, cores = 1, seed = 1,
  ...)
}
\arguments{
\item{mat}{a (m x n) data matrix of gene expression measurements of individual cells with rows representing genes and columns representing cells. column names of the \emph{mat} must be cell types.}

\item{method}{Clustering method to be performed on the dataset between "\emph{simlr}" from implemented version of \emph{SIMLR} package or "\emph{kmeans}" from \emph{amap} package. It is set to "\emph{simlr}" by default.}

\item{similarity}{A vector of similarity metrics to be used for clustering.}

\item{geneFilter}{A threshold to remove genes. The genes that are not expressed more than the threshold across all the cells in the dataset will be removed. Genes will not be removed if set to 0.}

\item{rep}{A number of subsampling of the matrix}

\item{subset_p}{Sampling percentage per cell types from \emph{mat}}

\item{cores}{Number of cores to be used for parallel processing}

\item{seed}{\emph{seed} for randomisation}

\item{...}{An addtional paramaters for corresponding clustering  method specified from \emph{method}}
}
\value{
A list with length \emph{rep}.
Each item in the list contain a list object indexed by similarity and the true label ("truth").
The object indexed by similarity metric is a clustering result object.
}
\description{
The data given by \emph{mat} is clustered in \emph{method} algorithm with various similarity metrics for benchmark.

The data \emph{mat} must contain label information as column names to subsample the matrix by \emph{subset_p} number of cells per cluster in each \emph{rep}.
}
\details{
Benchmark impact of similarity metric on clustering.
}
\examples{
scClustBench(mat, method = "simlr", similarity = NULL, cores = 1, cores.ratio = 0)
scClustBench(mat, method = "kmeans", similarity = NULL, cores = 1, iter.max = 100, nstart = 25)

}
