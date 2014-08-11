\name{OptimClusts}
\alias{OptimClusts}

\title{
Optimal Cluster Calculator
}
\description{
Given the average silhouette width obtained using partitioning around medoids(PAM) method, this function determines the optimal number of clusters to be used by calculating the maximum average silhouette width. The absolute maximum silhouette width is not a representative of the optimal number of clusters. OptimClusts calculates the optimal number as the smallest value such that the silhouette width at that value is a local maxima, and is within a neighbourhood of the global maxima.
}

\usage{
OptimClusts(P, Eps)
}

\arguments{
  \item{P}{
  Vector of average silhouette widths calculated for a specified number of clusters. 
  }
  \item{Eps}{
  A numerical value between 0 and 1 which determines the neighbourhood of the global maximum within which to search for a local maxima. It is advised to use values smaller than 10 \%.
  }
}

\value{
An integer value between 1 and \eqn{K}, where \eqn{K} is the length of the silhouette vector \eqn{P}. If the minimum and maximum number of clusters specified are \eqn{m} and \eqn{M} respectively, the value represents the index of the optimal number of clusters to be used in the vector \eqn{ (m, M)}. See Details for information on the maximum number of clusters.
}
\details{
The function \code{OptimClusts} uses the mPAM (modified PAM) algorithm described in the first reference below. For a data set with \eqn{N} samples (or taxa/OTUs when clustering taxa/OTUs), the value of \eqn{K} to be used to avoid overestimation of clusters is \eqn{\left[ 2\sqrt{N} \right]}, where \eqn{\left[x \right]} is the largest integer smaller than \eqn{x}.
}
\references{
Ayyala, D. N., Lin, S., (2014) Graphical Representation and Modeling of Metagenomic Reads, \emph{Manuscript}.

Peter J. Rousseeuw (1987) Silhouettes: A graphical aid to the interpretation and validation of cluster analysis, \emph{Journal of Computational and Applied Mathematics}, \bold{20}.
}
\author{
Shili Lin<shili@stat.osu.edu>
}


\examples{
x <- c(0.5, 0.1, 0.6, 0.7, 0.8, 0.75, 0.77, 0.79, 0.81, 0.9)
\dontrun{plot(2:10, x)}
OptimClusts(x, 0.1) ## The optimal number selected is 6.
OptimClusts(x, 0.05) ## The optimal number selected is 10.

}
