% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scan_genomic_bedpe.R
\name{scan_genomic_bedpe}
\alias{scan_genomic_bedpe}
\title{Scan genomic BEDPE}
\usage{
scan_genomic_bedpe(
  bedpe,
  bin = TRUE,
  binwidth = 300L,
  bins = NULL,
  standard = TRUE,
  genome = "hg38"
)
}
\arguments{
\item{bedpe}{the BEDPE file path, or output from read_bedpe()}

\item{bin}{Bin reads? (TRUE)}

\item{binwidth}{width of the bins for chromosomal tiling (300)}

\item{bins}{a pre-tiled GRanges for binning coverage (NULL)}

\item{standard}{restrict non-spike contigs to "standard" chromosomes? (TRUE)}

\item{genome}{Name of genome (default hg38)}
}
\value{
\if{html}{\out{<div class="sourceCode">}}\preformatted{     a GRanges with coverage
}\if{html}{\out{</div>}}
}
\description{
Scan genomic BEDPE
}
\examples{

fl <- system.file("extdata", "example_chr21_bedpe.bed.gz", package="spiky",mustWork=TRUE)
scan_genomic_bedpe(fl) # will warn user about spike contigs


}
