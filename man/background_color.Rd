% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/attributes.R
\name{background_color}
\alias{background_color}
\alias{background_color<-}
\alias{set_background_color}
\alias{background_color.huxtable}
\alias{background_color<-.huxtable}
\title{Background color}
\usage{
background_color(ht)
background_color(ht) <- value
set_background_color(ht, row, col, value, byrow = FALSE)
}
\arguments{
\item{ht}{A huxtable.}

\item{value}{A character vector or matrix of valid R color names. Set to \code{NA} to reset to the default.}

\item{row}{A row specifier. See \code{\link{rowspecs}} for details.}

\item{col}{An optional column specifier.}

\item{byrow}{If \code{TRUE}, fill in values by row rather than by column.}
}
\value{
For \code{background_color}, the \code{background_color} attribute.
For \code{set_background_color}, the \code{ht} object.
}
\description{
Functions to get or set the background color property of huxtable table cells.
}
\examples{

ht <- huxtable(a = 1:3, b = 1:3)
background_color(ht) <-  grey(.95)
background_color(ht)


ht <- huxtable(a = 1:3, b = 3:1)
set_background_color(ht, grey(.95))
set_background_color(ht, 1:2, 1, grey(.95))
set_background_color(ht, 1:2, 1:2, c(grey(.95), 'yellow'), byrow = TRUE)
set_background_color(ht, where(ht == 1), grey(.95))
}
\seealso{
Other formatting functions: \code{\link{bold}},
  \code{\link{font_size}}, \code{\link{font}},
  \code{\link{na_string}}, \code{\link{number_format}},
  \code{\link{text_color}}
}
