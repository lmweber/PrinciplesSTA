library("spatialLIBD")
library("markdown") # for shinyapps.io

## spatialLIBD uses golem
options("golem.app.prod" = TRUE)

## You need this to enable shinyapps to install Bioconductor packages
options(repos = BiocManager::repositories())

## Load the data
spe <- readRDS("spe_workflow_Visium_spatialLIBD.rds")

## Deploy the website
spatialLIBD::run_app(
    spe,
    sce_layer = NULL,
    modeling_results = NULL,
    sig_genes = NULL,
    title = "OSTA spatialLIBD workflow example",
    spe_discrete_vars = c("ground_truth", "label", "ManualAnnotation"),
    spe_continuous_vars = c(
        "cell_count",
        "sum_umi",
        "sum_gene",
        "expr_chrM",
        "expr_chrM_ratio",
        "sum",
        "detected",
        "subsets_mito_sum",
        "subsets_mito_detected",
        "subsets_mito_percent",
        "total",
        "sizeFactor"
    ),
    default_cluster = "label",
    docs_path = "www"
)
