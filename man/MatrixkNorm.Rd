\name{MatrixkNorm}
\alias{MatrixkNorm}

\title{
Calculate \eqn{l_p}-norm distance between samples
}
\description{
   Given a \eqn{N \times k} matrix X, this function calculates the \eqn{l_p} norm between rows. 
}

\usage{
MatrixkNorm(X, p)
}

\arguments{
  \item{X}{
A \eqn{N \times k} matrix 
  }
  \item{p}{
  A positive integer value which determines the norm to be used. When \eqn{k = \infty}, the maximum norm is calculated.
}
}

\value{
A \eqn{N \times N} symmetric matrix, where \eqn{N} is the number of rows of the argument matrix \eqn{X}. All the diagonal elements are zeroes and the \eqn{(i,j)^{th}} element represents the \eqn{l_p}-norm distance between the \eqn{i^{th}} and \eqn{j^{th}} rows, given by \eqn{\left(\mathop{\sum}_{s=1}^{k} |X_{is} - X_{js}|^p \right)^{1/p}}
}

\author{
Deepak Nag Ayyala <ayyala.1@osu.edu>
}

\examples{
    data(metagencounts)
    Distance <- MatrixkNorm(metagencounts$Counts, p = 2);
}

