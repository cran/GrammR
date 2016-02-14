\name{Count2Distance}
\alias{Count2Distance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculating the dissimilarity matrix for metagenomic count data
}
\description{
This function quantifies the dissimilarity between samples or taxa. Given a \eqn{N \times k} matrix of metagenomic counts where \eqn{N} equals the number of samples and \eqn{k} is the number of taxa/OTUs, this function returns a \eqn{N \times N} matrix whose \eqn{(i,j)^{th}} element gives a measure of dissimilarity between the \eqn{i^{th}} and \eqn{j^{th}} samples. If Kendall's \eqn{\tau}-distance is specified as the measure of dissimilarity, this function also has the capability to compute dissimilarity between taxa, resulting in a \eqn{k \times k} matrix.
}
\usage{
Count2Distance(Data, Distance, Penalty = NULL, PhyTree = NULL,
 UnifOpts = NULL, Adjust = TRUE)
}
\arguments{
    \item{Data}{
    An \eqn{N \times k} matrix comprising the metagenomic counts, whose rows correspond to the distinct samples.
    }
    \item{Distance}{
    Measure of dissimilarity to be used for calculating distance matrix. Possible values are c(\dQuote{Kendall's tau-distance}, \dQuote{UniFrac}).
    }
    \item{Penalty}{
    Penalty to be used for ties when calculating the Kendall's tau-distance. It takes values between 0 and 1.
    }
    \item{PhyTree}{
    Rooted phylogenetic tree of R class \dQuote{phylo}. To be provided only when the \code{Distance == "UniFrac"}.
    }
    \item{UnifOpts}{
    Options to calculate the generalized UniFrac distance. This is a list containing two items \code{c(Weight, Type)}, where Weight takes values between 0 and 1, and Type takes values in c(\dQuote{Unweighted}, \dQuote{Variance Adjusted}, \dQuote{Generalized}).
    }
    \item{Adjust}{
    A logical variable. When TRUE, an infinitesimal constant (equal to \code{.Machine$double.eps}) to off-diagonal elements which are equal to zero. This is to facilitate construction of metric multidimensional models.
    }
}

\value{
A \eqn{N \times N} symmetric matrix with all zeroes along the diagonal, where \eqn{N} is the number of samples in the data. If the transpose of the counts is provided, the function returns a \eqn{k \times k} symmetric matrix.
}

\author{
Deepak Nag Ayyala <deepaknagayyala@gmail.com>
}

\seealso{
\code{\link{KenDist}}
}
\examples{
data(metagencounts)
Distance <- Count2Distance(Data = metagencounts$Counts, Distance = "Kendall's tau-distance", 
 Penalty = 0.5);
}
