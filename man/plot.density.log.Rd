% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_density_log.r
\name{plot.density.log}
\alias{plot.density.log}
\title{Plot Density of Log Values Segregated by Sign}
\usage{
\method{plot}{density.log}(x.data, x.label, plot.file.path, asp)
}
\arguments{
\item{x.data}{Matrix containing the data to be plotted.}

\item{x.label}{Character string representing the label for the x-axis.}

\item{plot.file.path}{Character string representing the file path to save the plot.}

\item{asp}{List containing aesthetic parameters for the plot.}
}
\value{
A ggplot object representing the density plot of log values.
}
\description{
This function plots the density of log values, segregated by sign,
while ignoring diagonal coefficients and zeroes.
}
