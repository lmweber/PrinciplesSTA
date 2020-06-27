# Orchestrating Spatial Transcriptomics Analysis with Bioconductor

Repository containing RMarkdown and other source files for OSTA online book.

The book can be compiled locally by cloning this repository and running `render_book`, as shown below.


## How to compile the book locally

First clone the repository.

```
git clone https://github.com/lmweber/OSTA-base.git
```

Then open the project file `OSTA-base.Rproj` in RStudio. (Note that compiling seems to work best using RStudio, due to `pandoc` and other requirements.)

Within the RStudio session, render the book as follows.

```r
bookdown::render_book("index.Rmd", "bookdown::gitbook")
```


## Prerequisites

To compile the book locally, several required R packages need to be installed first. (In the future, once we move the project to Bioconductor, these requirements will be handled automatically. If any packages are missing, they should also show up as errors during compilation.)

```
install.packages("bookdown")
install.packages("BiocManager")
install.packages("pheatmap")
BiocManager::install("scater")
BiocManager::install("scran")
BiocManager::install("ExperimentHub")
remotes::install_github("LTLA/rebook")
remotes::install_github("drighelli/SpatialExperiment")
remotes::install_github("lmweber/STdata")
remotes::install_github("lmweber/spatzli")
```


## Repository contents and structure

The main content of the book is structured as a set of RMarkdown `.Rmd` files, one file per chapter. These files are stored in this repository, along with some additional `.yml` and other source files for `bookdown`.

Image files and compiled `.html` files are (or will be) stored in the separate [OSTA-release](https://github.com/lmweber/OSTA-release) repository. This structure -- i.e. separate repositories for source files and compiled files -- makes it easier to maintain the project, and for contributors to add material by forking the source repository.

We also use the [rebook](https://github.com/LTLA/rebook) package to link objects between chapters within the book.

This structure and setup are similar to the [OSCA book](https://github.com/Bioconductor/OrchestratingSingleCellAnalysis-base).

(2020/6/27: Note that currently, the [OSTA-release](https://github.com/lmweber/OSTA-release) repository does not contain any `.html` files yet, since we are still in the initial stages of setting up the project.)


