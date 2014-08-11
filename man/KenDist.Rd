\name{KenDist}
\alias{KenDist}

\title{
Wrapper for the C program which calculates the Kendall's \eqn{\tau}-distance.
}
\description{
This function calculates the Kendall's \eqn{\tau}-distance from the metagenomic count matrix.
}
\usage{
KenDist(Data, Penalty)
}

\arguments{
  \item{Data}{
    A \eqn{N \times k} matrix comprising the metagenomic count data. If the rows correspond to the samples and the columns correspond to taxa/OTUs, elements of the resulting distance matrix measure dissimilarity between samples.
}
  \item{Penalty}{
  A number between 0 and 1 which determines the penalty for ties.
}
}

\value{
A \eqn{N \times N} symmetric dissimilarity matrix, where \eqn{N} is the number of samples. If 
}
\references{
Fagin, Ronald et.al. (2004) Comparing partial rankings, SIAM Journal on Discrete Mathematics, 20, 47-58.
}
\author{
Deepak Nag Ayyala <ayyala.1@osu.edu>
}

\seealso{
\code{\link{Count2Distance}}
}

\examples{
data(metagencounts)
Distance <- KenDist(Data = metagencounts$Counts, Penalty = 0.5)

## The result obtained in the above example is the same as
\dontrun{Distance <- Count2Distance(Data = metagencounts$Counts, 
Distance = "Kendall's tau-distance", Penalty = 0.5);}
}
