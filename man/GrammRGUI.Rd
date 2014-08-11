\name{GrammRGUI}
\alias{GrammRGUI}
\title{
GrammR GUI for graphical modeling and visualization
}

\description{
A graphical user interface for GrammR, to construct and study graphical representations of metagenomic reads. 
}

\usage{GrammRGUI(Direc)}

\arguments{
\item{Direc}{(Optional) The directory containing the data files and location where the constructed graphical models should be saved. If no directory is specified, the current working directory is used.}
}

\value{
The RGUI creates a window with multiple tabs. The number of tabs is determined by the modelling parameters specified by the user. 
}

\author{
Deepak Nag Ayyala <ayyala.1@osu.edu>
}
\seealso{
\code{\link{GrammRServ}}
}

\examples{
\dontrun{GrammRGUI()}
}
