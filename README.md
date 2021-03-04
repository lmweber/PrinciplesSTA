# Orchestrating Spatial Transcriptomics Analysis with Bioconductor

Repository containing source files for OSTA online book.


## How to compile the book

To compile the book locally, clone the repository and run the following within an RStudio session:

```r
bookdown::render_book("index.Rmd", "bookdown::gitbook")
```


## Installation requirements

To compile the book locally, `bookdown` and all other packages loaded with `library()` calls within the chapters need to be installed first, using either `install.packages()` or `BiocManager::install()`.


## Repository contents and structure

The main content of the book is in the RMarkdown `.Rmd` files. There is one `.Rmd` file per chapter.

