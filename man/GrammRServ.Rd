\name{GrammRServ}
\alias{GrammRServ}
\title{
Graphical Representation without a GUI
}
\description{
A non-GUI method to construct graphical representations of metagenomic count data. This function is recommended for large data sets and can be run as a background job when a user-interface is not available.
}
\usage{
GrammRServ(Data = NULL, Cluster = NULL, DataType = "Counts", 
DistType = "Kendall's tau-distance", PhyTree = NULL, 
GunifType = NULL, GunifWeight = 0, Dim = c(2, 3, 4), 
LpNorm = c(1), Penalty = 0.5, MinClust = 2)
}

\arguments{
  \item{Data}{
Data matrix consisting of one of the following two values:
\itemize{
\item (1) metagenomic counts with the rows of the matrix representing attributes to be clustered(can be samples or taxa).
\item (2) measure of dissimilarity between samples or taxa.
  }
}
  \item{Cluster}{
(Optional) The vector whose length is equal to the number of rows of \code{Data}. Values in the vector provide the cluster membership of samples determined using their attributes. 
  }
  \item{DataType}{
A character variable corresponding to the type of values in \code{Data}. It takes values in c(\dQuote{Counts}, \dQuote{Distance})
  }
  \item{DistType}{
Measure of dissimilarity between samples to be used to calculate the distance matrix. It takes values in c(\dQuote{Kendall's tau-distance}, \dQuote{UniFrac}) and is used when the \code{DataType} is equal to Counts. The default value is \dQuote{Kendall's tau-distance}.
  }
  \item{PhyTree}{
  A phylogenetic tree of class \code{phylo} to be used for calculating the UniFrac distance. This is to be provided only when \code{DistType} is set equal to \dQuote{UniFrac}.
  }
  \item{GunifType}{
  The type of UniFrac distance to be specified when calculating the UniFrac distance using \code{GUniFrac} package. It takes values in c(\dQuote{Unweighted}, \dQuote{Variance Adjusted}, \dQuote{Generalized}).
  }
  \item{GunifWeight}{
  The weight parameter used in calculation of Generalized UniFrac distance. The parameter takes values between 0 and 1. For more details, see Chen et.al.(2012).
  }
  \item{Dim}{
Dimension of the multidimensional scaling model to be constructed. Default value is c(2,3,4).   
  }
  \item{LpNorm}{
A vector valued variable which determines the norm to be used in multidimensional scaling model calculation. The default value (equal to 1) corresponds to \eqn{l_1}-MDS model. Principal coordinate analysis (PCoA) is performed when the value is set to two.  
  }
  \item{Penalty}{
A numeric value between 0 and 1 which is used as penalty for ties in calculation of Kendall's \eqn{tau}-distance. Default value is 0.5.   
  }
  \item{MinClust}{
Minimum number of clusters to be used in PAM method for estimating the optimal number of clusters. Default value is 2.
  }
}

\value{

Separate directories are created in the current working directory for each model constructed using all possible combinations of dimension and \eqn{l_p} norm specified.

\enumerate{
\item { Directories for the two dimensional models contain the average silhouette plot, true estimated model, model showing estimated clusters and (optional)model showing true clusters.}

\item { Directories for models of dimension greater than two contain the average silhoutte plot and subdirectories for the true model, estimated clusters model and (optional)model showing true clusters.}
}

For all models, a text file containing the estimated cluster membership is saved in the subdirectory corresponding to the model for future validation.
}

\author{
Deepak Nag Ayyala <ayyala.1@osu.edu>
}
\references{
Chen, J., et.al. (2012) Associating microbiome composition with environmental covariates using generalized UniFrac distance, Bioinformatics, 28(16). 
}

\seealso{
\code{\link{GrammRGUI}}
}
\examples{
data(metagencounts)
GrammRServ(Data = metagencounts$Counts, Cluster = metagencounts$CommMemshp, 
DataType = "Counts", DistType = "Kendall's tau-distance", 
Dim = c(2, 3, 4), LpNorm = c(1,2), Penalty = 0.5, MinClust = 2)
}
