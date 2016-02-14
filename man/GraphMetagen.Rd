\name{GraphMetagen}
\alias{GraphMetagen}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Graphical model construction for metagenomic data
}
\description{
Given the matrix consisting of metagenomic counts or measure of dissimilarity between samples, multidimensional scaling models are constructed to visualize the samples in the Euclidean space. Clustering methods such as PAM are used to classify the samples into various clusters to study similarity amongst samples.
}
\usage{
GraphMetagen(MDSdata)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{MDSdata}{
A list containing the following items

\itemize{
\item Contents - A matrix consisting of the metagenomic counts or dissimilarity matrix.
\item Clust - (Optional) Vector comprising the cluster memberships of samples determined using other data attributes.
\item DataType - Determines whether the values in \code{Contents} are counts or distances. Takes values in c(\dQuote{Counts}, \dQuote{Distance}).
\item DistType - Determines the measure of dissimilarity to be used when \code{Contents} contains counts. Takes values in c(\dQuote{Kendall's tau-distance}, \dQuote{UniFrac}). 
\item PhyTree - A phylogenetic tree of class \code{phylo}. To be provided when \code{DistType} is set equal to \dQuote{UniFrac}.
\item GUnifType - Type of generalized UniFrac distance to be calculated. Takes values in c(\dQuote{Unweighted}, \dQuote{Variance Adjusted}, \dQuote{Generalized})
\item GUnifWeight - The weight parameter used in calculation of Generalized UniFrac distance. The parameter takes values between 0 and 1. For more details, see Chen et.al.(2012).
\item Dimensions - Integer valued variable which determines the dimensions for which multidimensional scaling models should be constructed.
\item Norms - The norm to be used for construction of metric multidimensional scaling models. Takes positive integer values.
\item Penalty - A positive number between zero and one which determines the penalty for ties when calculating Kendall's \eqn{\tau}-distance.
\item MinClust - Minimum number of clusters to be used for estimating the optimal number of clusters. Takes values greater than 2(default value).
  }
}
}
\value{
\item{Name}{Name of the model constructed.}
\item{Coords}{A \eqn{N \times p} matrix containing the coordinates of the samples obtained by MDS methods, where \eqn{N} is the number of samples and \eqn{p} is the dimension of the model.}
\item{ClusMem}{A vector which gives the cluster membership of the samples determined using PAM.}
\item{TrueMem}{The vector of true cluster membership provided to the function through \code{Clust}. If true cluster membership is not provided, it returns a value \code{NULL}.}
\item{OptimClust}{A integer value giving the optimal number of clusters determined by \code{\link{OptimClusts}}.}
\item{SilPlot}{A vector of length \eqn{2 \sqrt{N} - 1}, where \eqn{N} is the number of samples. It contains the average silhouette width when the number of clusters is between 2 and \eqn{2 \sqrt{N}}.}
}

\references{
Chen, J., et.al. (2012) Associating microbiome composition with environmental covariates using generalized UniFrac distance, Bioinformatics, 28(16). 
}
\author{
Deepak Nag Ayyala <deepaknagayyala@gmail.com>
}
\seealso{
\code{\link{GrammRServ}}
}

\examples{
\dontrun{data(metagencounts)
X <- list(Contents = metagencounts$Counts, Clust = metagencounts$CommMemshp, 
DataType = "Counts", DistType = "Kendall's tau-distance", 
Dimensions = c(2,3,4), Norms = c(1,2), Penalty = 0.5, MinClust = 2);
GraphMetagen(X);}
}
