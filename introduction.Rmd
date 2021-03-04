# (PART) Introduction {-}


# Introduction {#introduction}

This book describes a computational analysis pipeline for spatially resolved transcriptomics (ST) data, using the [Bioconductor](http://bioconductor.org/) framework and R programming language.



## Contents of this book

The chapters are organized into several parts:

- **Introduction:** introductory material, description of spatial transcriptomics technologies and data structure

- **Preprocessing:** preprocessing steps to prepare raw data for loading into R

- **Downstream analyses:** chapters describing each of the main steps within a downstream analysis pipeline using the Bioconductor framework, including R code examples that can be run on your own laptop

- **Workflows:** complete extended workflows for several example datasets



## Who this book is for

This book is intended for readers who have some experience with R, but does not assume any previous familiarity with Bioconductor. The examples and workflows include all R code required to download data, set up data objects, perform analyses, and visualize results.

For readers who are new to R and Bioconductor, additional useful resources include:

- The [Orchestrating Single-Cell Analysis with Bioconductor](https://osca.bioconductor.org/) (OSCA) textbook, which contains additional details on the analysis steps described here in the context of single-cell RNA sequencing instead of ST, as well as additional introductory chapters on R and Bioconductor

- The [R for Data Science](https://r4ds.had.co.nz/) online textbook provides an excellent introduction to R

- [Data Carpentry](https://datacarpentry.org/) and [Software Carpentry](https://software-carpentry.org/) provide both introductory and more advanced online lesson materials on R programming, as well as the Unix shell and Git



## Bioconductor

[Bioconductor](http://bioconductor.org/) is an **open source** and **open development** project, providing a cohesive yet flexible framework for analyzing high-throughput genomics data in R. The Bioconductor project consists of almost 2000 contributed R packages, as well as core infrastructure maintained by the Bioconductor Core Team, providing a rich analysis environment for users.

One of the main advantages of Bioconductor is the modularity and open development philosophy. R packages implementing analysis methods are contributed by numerous research groups, with the Bioconductor Core Team coordinating the overall project and maintaining infrastructure such as data object structures and package testing infrastructure. A key feature is that contributed packages are required to use consistent data structures, such as the [SingleCellExperiment](http://bioconductor.org/packages/release/bioc/vignettes/SingleCellExperiment/inst/doc/intro.html) or [SpatialExperiment](https://github.com/drighelli/SpatialExperiment) object classes, which allows packages to interact nicely (e.g. output from one package can easily be provided as input to another package). In addition, Bioconductor packages are required to have comprehensive documentation, including "vignettes" (long-form examples including R code).

This modular and open-development approach allows end users to readily combine and substitute analysis methods contributed by different research groups, instead of being "locked in" to using methods or packages maintained by a single group. In addition, anyone can contribute new packages implementing new methods to Bioconductor.


