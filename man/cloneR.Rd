% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloneR.R
\name{cloneR}
\alias{cloneR}
\title{Entire cloneR functionality}
\usage{
cloneR(
  input.file,
  snps = 1000,
  subsets = 100,
  K,
  CPU = 1,
  alpha = 10,
  percentage = 0.05,
  iterations = 200,
  ploidy = 2,
  plot = TRUE
)
}
\arguments{
\item{input.file}{Unzipped VCF file}

\item{snps}{Number of SNPs sub-sampled for ancestry calculations}

\item{subsets}{Number of ancestry calculations at each K value}

\item{K}{The K value (or range) used to calculate ancestry matrix}

\item{CPU}{A number of CPUs to run the parallel version of the algorithm (LEA)}

\item{alpha}{A numeric value corresponding to the snmf regularization parameter (LEA)}

\item{iterations}{An integer for the maximum number of iterations in SNMF algorithm (LEA)}

\item{ploidy}{1 if haploid, 2 if diploid, n if n-ploid}

\item{plot}{TRUE/FALSE: Plots relationships between isolates visually}

\item{tolerance}{A numeric value for the tolerance error (LEA)}
}
\value{
membership.txt File containing membership assignments at each K value

Kplot.tiff TIFF file containing network plot at specified K value
}
\description{
This function calculates the membership groups from isolates contained within a VCF file
}
\examples{
cloneR("example.vcf", snps = 1000, subsets = 100, K = 2:20)
}
