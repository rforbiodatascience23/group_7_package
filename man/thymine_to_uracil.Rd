% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/thymine_to_uracil.R
\name{thymine_to_uracil}
\alias{thymine_to_uracil}
\title{From DNA to RNA by substituting thymine with uracil.}
\usage{
thymine_to_uracil(DNA)
}
\arguments{
\item{DNA}{String of nucleotides: "A", "T", "G", "C".}
}
\value{
String of nucleotides: "A", "U", "G", "C".
}
\description{
From DNA to RNA by substituting thymine with uracil.
}
\examples{
DNA <- sample(c("A", "T", "G", "C"), size=10, replace=TRUE)
}
