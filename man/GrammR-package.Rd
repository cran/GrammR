\name{GrammR-package}
\alias{GrammR-package}
\alias{GrammR}
\docType{package}
\title{
Graphical Representation and Modeling of Metagenomic Reads
}
\description{
An important exploratory step when analyzing metagenomic count data is visualization of the data. Researchers often restrict graphical representations of metagenomic data sets to two dimensional models for ease of presentation. However higher dimensional visualizations are known to better represent the data, providing valuable information which are otherwise not observed in two dimensional models. These graphical representations are determined by two factors: the measure of dissimilarity between samples and multidimensional scaling model used to estimate the coordinates.

UniFrac is one such measure of dissimilarity which is very popular in the metagenomic research community. The UniFrac distance between two individuals is calculated by placing the samples on a phylogenetic tree and counting the number of unshared branches between the two samples. Several extensions to the UniFrac distance have been proposed to better address the issue. However, calculation of UniFrac distances requires the phylogenetic tree information in addition to the counts. Alternatively, Kendall's \eqn{\tau}-distance is one such measure of dissimilarity which is applicable to counts as well as relative frequencies, without the need to specify a phylogenetic tree.

A commonly used multidimensional scaling model for estimating the coordinates of the samples on a Euclidean space is Principal Coordinate Analysis (PCoA). This method is very similar to Principal Component Analysis (PCA), used for dimension reduction in multivariate statistical analysis. Goodness-of-fit of the PCoA model is measured by the percentage of variation explained using the dimensions selected. Several studies in the past reported the percent variation explained to be less than \eqn{30 \%}. As an alternative to PCoA, metric multidimensional scaling (MDS) models can be constructed. MDS models estimate the coordinates by minimizing a stress function, providing researchers the freedom to choose the metric to be used.

\code{GrammR} provides a user-friendly interface to construct graphical representations, giving the user an option to choose the measure of dissimilarity and multidimensional scaling model to be constructed. In addition to constructing graphical models, the package also estimates the optimal number of clusters into which the data should be divided. Given prior clustering of the data constructed using attributes of the samples, the package can compare the constructed clusters to those provided apriori by calculating a misclassification error.
}

\details{
The package provides two options to users for construction of graphical models
\enumerate{
\item \code{GrammRGUI} provides a Graphical User Interface (GUI) for analyzing the count data sets. The user-friendly interface is recommended for beginners.
\item \code{GrammRServ} can be used as a function for analyzing data sets through the R interface without a GUI. This is recommended for large data sets which require larger run times.
}
}

\author{
Deepak Nag Ayyala, Shili Lin.
}

\references{
Ayyala, D. N., Lin, S., (2015) GrammR: graphical representation and modeling of count data with application in metagenomics, \emph{Bioinformatics}, \bold{31(10)}.

Lozupone, Catherine and Knight, Rob (2005) UniFrac: a New Phylogenetic Method for Comparing Microbial Communities, Applied and Environmental Microbiology, 8228-8235.

Kendall, M. G. (1938) A new measure of rank correlation,  Biometrika, 30, 81-93.
}

\keyword{ package }
