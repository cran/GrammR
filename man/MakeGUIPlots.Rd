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
\item{GraphQuant}{A list containing the estimated coordinates, cluster membership and average silhouette widths. The list is obtained as an outcome of \code{\link{GraphMetagen}}}. The list depends on the values of \code{Norms} and \code{Dimensions} specified in \code{\link{GraphMetagen}}. To plot the 3D PCoA model, GraphQuant is to be replaced by GraphQuant$mds3d. See Details.
}

\value{
\item{PlotTabs}{An object of type \code{gnotebook} which contains tabs for different graphical models constructed. The constructed notebook consists of separate tabs for the average silhouette plot, estimated model, model showing estimated clusters and (optional)model showing true clusters. Plots are also saved in a directory created within the current working directory for future use.

The model tabs for two dimensional models display the graphical model, whereas for higher dimensional models, the models tabs contain buttons to display the models in the default web browser. 
}
}

\details{
When \code{\link{GraphMetagen}} is used with \code{Norms = c(2,3)} and \code{Dimensions = c(2,3,4)}, the resulting quantity contains MDS and PCoA models of dimensions 2, 3 and 4. If GraphQuant is the output of \code{\link{GraphMetagen}}, \code{MakeGUIPlots} is used to construct and save graphical models as following:

    \code{MakePlots2D(GraphQuant$mds2d)}
    
    \code{MakePlots3D(GraphQuant$mds3d)}
    
    \code{MakePlots4D(GraphQuant$mds4d)}
    
    \code{MakePlots2D(GraphQuant$pcoa2d)}
    
    \code{MakePlots3D(GraphQuant$pcoa3d)}
    
    \code{MakePlots4D(GraphQuant$pcoa4d)}    
}
\author{
Deepak Nag Ayyala <deepaknagayyala@gmail.com>
}

\seealso{
    \code{\link{Make2DPlots}, \link{Make3DPlots}, \link{Make4DPlots}}
}