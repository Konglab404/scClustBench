% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotSimlrEval.R
\name{plotSimlrEval}
\alias{plotSimlrEval}
\title{plotSimlrEval}
\usage{
plotSimlrEval(simlr.eval, eval.method = c("NMI", "FM", "ARI", "Jaccard"))
}
\arguments{
\item{simlr.eval}{An object returned from \emph{evalScClustBench}}

\item{eval.method}{Evaluation method to be plotted. Available options are: NMI (default), FM, Jaccard and ARI.}
}
\value{
ggplot object
}
\description{
plot evaluations returned from \emph{evalScClustBench}
}
\examples{


}
