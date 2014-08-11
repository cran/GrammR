\name{MakeGUIPlots}
\alias{MakePlots2D}
\alias{MakePlots3D}
\alias{MakePlots4D}

\title{
Construct plots for  multidimensional scaling models.
}

\description{
Given the coordinates and estimated cluster membership of samples for a multidimensional scaling model, graphical visualizations of the estimated models are constructed. The graphical models are stored in a subdirectory within the current working directory for reuse. This function is used in \code{\link{GrammRGUI}} for constructing graphical representations and displaying them as \code{gWidgets} notebooks.
}

\usage{
    MakePlots2D(GraphQuant)
    MakePlots3D(GraphQuant)
    MakePlots4D(GraphQuant)
}

\arguments{
\item{GraphQuant}{A list containing the estimated coordinates, cluster membership and average silhouette widths. The list is obtained as an outcome of \code{\link{GraphMetagen}}}
}

\value{
\item{PlotTabs}{An object of type \code{gnotebook} which contains tabs for different graphical models constructed. The constructed notebook consists of separate tabs for the average silhouette plot, estimated model, model showing estimated clusters and (optional)model showing true clusters. Plots are also saved in a directory created within the current working directory for future use.

The model tabs for two dimensional models display the graphical model, whereas for higher dimensional models, the models tabs contain buttons to display the models in the default web browser. 
}
}
\author{
Deepak Nag Ayyala <ayyala.1@osu.edu>
}

\seealso{
    \code{\link{Make2DPlots}, \link{Make3DPlots}, \link{Make4DPlots}}
}