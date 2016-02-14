\name{MCError}
\alias{MCError}
\title{
Misclassification Error
}
\description{
Given the true cluster classification of the samples based on some pre-determined criterion and an estimated cluster membership determined using a clustering algorithm, this function calculates the misclassification error of the algorithm. This measure of dissimilarity between two clustering methods is equivalent to one minus the Rand Index. 
}
\usage{
MCError(True, Est)
}
\arguments{
  \item{True}{
A \eqn{N \times 1} vector consisting integer values ranging between 1 and \eqn{M}, where \eqn{N} is the number of samples and \eqn{M} is the number of clusters in the true cluster membership .
  }
  \item{Est}{
  A vector whose length is the same as True, whose values range between 1 and \eqn{K}, where \eqn{K} is the estimated number of clusters.
}
}

\value{
A numeric between 0 and 1. If the vectors are of unequal lengths, the function returns NA.
}

\references{
L. Hubert and P. Arabie (1985) Comparing Partitions, Journal of the Classification 2:193-218.
}

\author{
Deepak Nag Ayyala <deepaknagayyala@gmail.com>
}

\examples{
True <- rep(seq(1,6), rep(5,6))
Est <- rep( seq(1,6), 5);
MCError(True, Est);

## Following is an example of complete mismatch, where the misclassification error is equal to 1.
True <- rep(1,10);
Est <- seq(1,10);
MCError(True, Est)

}
