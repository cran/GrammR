\name{MakeServPlots}
\alias{Make2DPlots}
\alias{Make3DPlots}
\alias{Make4DPlots}

\title{
Construct plots for  multidimensional scaling models.
}

\description{
Given the coordinates and estimated cluster membership of samples for a multidimensional scaling model, graphical visualizations of the estimated models are constructed. The graphical models are stored in a subdirectory within the current working directory for reuse. This function is used in \code{\link{GrammRServ}} for constructing graphical representations.
}

\usage{
    Make2DPlots(GraphQuant)
    Make3DPlots(GraphQuant)
    Make4DPlots(GraphQuant)
}

\arguments{
\item{GraphQuant}{A list containing the estimated coordinates, cluster membership and average silhouette widths. The list is obtained as an outcome of \code{\link{GraphMetagen}}}
}

\value{
This function creates a directory within the current working directory to save the graphical representations. The name of the directory created will reflect the model constructed. 

For two dimensional models, plots constructed and saved in the directory are the silhouette plot, estimated model, model showing the estimated optimal clusters and (optional) the estimated model showing true clusters. 

Three and four dimensional models create further subdirectories within the created model directory to save HTML files which display the models in the default web browser.
}

\author{
Deepak Nag Ayyala <ayyala.1@osu.edu>
}

\seealso{
    \code{\link{MakePlots2D}, \link{MakePlots3D}, \link{MakePlots4D}}
}