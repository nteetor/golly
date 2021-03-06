% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chart-methods.R
\name{axis}
\alias{axis}
\title{Chart axes}
\usage{
axis(chart, field = NULL, position = c("top", "bottom", "left", "right"),
  line = NULL, label = NULL, title = NULL, tickLine = NULL,
  subTickCount = 0, subTickLine = NULL, grid = NULL)
}
\arguments{
\item{chart}{A chart object.}

\item{field}{A data field.}

\item{position}{One of "top", "bottom", "right", or "left".}

\item{line}{NULL or a line config list.}

\item{label}{NULL or a label config list.}

\item{title}{NULL, TRUE, or a title config list.}

\item{tickLine}{NULL or a tick line config list.}

\item{subTickCount}{A number specifying the number of subticks on the axis.}

\item{subTickLine}{A sub tick config list describing the style of the sub
ticks.}

\item{grid}{NULL or a grid config list.}
}
\description{
Add an axis to a chart. G2 does not display axis titles by default.
}
