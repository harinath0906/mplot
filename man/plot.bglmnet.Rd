% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bglmnet.R
\name{plot.bglmnet}
\alias{plot.bglmnet}
\title{Plot diagnostics for a bglmnet object}
\usage{
\method{plot}{bglmnet}(
  x,
  highlight,
  interactive = FALSE,
  classic = NULL,
  tag = NULL,
  shiny = FALSE,
  which = c("vip", "boot", "boot_size"),
  width = 800,
  height = 400,
  fontSize = 12,
  left = 50,
  top = 30,
  chartWidth = "60\%",
  chartHeight = "80\%",
  axisTitlesPosition = "out",
  dataOpacity = 0.5,
  options = NULL,
  hAxis.logScale = TRUE,
  ylim,
  text = FALSE,
  backgroundColor = "transparent",
  legend.position = "right",
  jitterk = 0.1,
  srt = 45,
  max.circle = 15,
  min.prob = 0.1,
  ...
)
}
\arguments{
\item{x}{\code{bglmnet} object, the result of \code{\link{bglmnet}}}

\item{highlight}{the name of a variable that will be highlighted.}

\item{interactive}{logical.  If \code{interactive=TRUE} a
googleVis plot is provided instead of the base graphics plot.
Default is \code{interactive=FALSE}.}

\item{classic}{logical.  Depricated. If \code{classic=TRUE} a
base graphics plot is provided instead of a googleVis plot.
For now specifying \code{classic} will overwrite the
default \code{interactive} behaviour, though this is
likely to be removed in the future.}

\item{tag}{Default NULL. Name tag of the objects to be extracted
from a gvis (googleVis) object.

The default tag for is NULL, which will
result in R opening a browser window.  Setting \code{tag='chart'}
or setting \code{options(gvis.plot.tag='chart')} is useful when
googleVis is used in scripts, like knitr or rmarkdown.}

\item{shiny}{Default FALSE. Set to TRUE when using in a shiny interface.}

\item{which}{a vector specifying the plots to be output. Variable
inclusion type plots \code{which = "vip"} or plots where the size
of the point representing each model is proportional to selection
probabilities by model size \code{which = "boot_size"}
or by penalty paramter \code{which = "boot"}.}

\item{width}{Width of the googleVis chart canvas area, in pixels.
Default: 800.}

\item{height}{Height of the googleVis chart canvas area, in pixels.
Default: 400.}

\item{fontSize}{font size used in googleVis chart.  Default: 12.}

\item{left}{space at left of chart (pixels?).  Default: "50".}

\item{top}{space at top of chart (pixels?).  Default: "30".}

\item{chartWidth}{googleVis chart area width.
A simple number is a value in pixels;
a string containing a number followed by \code{\%} is a percentage.
Default: \code{"60\%"}}

\item{chartHeight}{googleVis chart area height.
A simple number is a value in pixels;
a string containing a number followed by \code{\%} is a percentage.
Default: \code{"80\%"}}

\item{axisTitlesPosition}{Where to place the googleVis axis titles,
compared to the chart area. Supported values:
"in" - Draw the axis titles inside the the chart area.
"out" - Draw the axis titles outside the chart area.
"none" - Omit the axis titles.}

\item{dataOpacity}{The transparency of googleVis data points,
with 1.0 being completely opaque and 0.0 fully transparent.}

\item{options}{a list to be passed to the googleVis function giving
complete control over the output.  Specifying a value for
\code{options} overwrites all other plotting variables.}

\item{hAxis.logScale}{logical, whether or not to use a log scale on
the horizontal axis. Default = TRUE.}

\item{ylim}{the y limits of the \code{which="boot"} plots.}

\item{text}{logical, whether or not to add text labels to classic
boot plot. Default = \code{FALSE}.}

\item{backgroundColor}{The background colour for the main area
of the chart. A simple HTML color string,
for example: 'red' or '#00cc00'.  Default: 'transparent'}

\item{legend.position}{the postion of the legend for classic plots.
Default \code{legend.position="right"} alternatives include
\code{legend.position="top"} and \code{legend.position="bottom"}}

\item{jitterk}{amount of jittering of the model size in the lvk and boot plots.
Default = 0.1.}

\item{srt}{when \code{text=TRUE}, the angle of rotation for the text labels.
Default = 45.}

\item{max.circle}{determines the maximum circle size.
Default = 15.}

\item{min.prob}{lower bound on the probability of a model being selected. If
a model has a selection probability lower than \code{min.prob} it will not be
plotted.}

\item{...}{further arguments (currently unused)}
}
\description{
A plot method to visualise the results of a \code{bglmnet} object.
}
\seealso{
\code{\link{bglmnet}}
}
