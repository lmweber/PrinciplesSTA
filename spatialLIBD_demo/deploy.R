library('rsconnect')

## Or you can go to your shinyapps.io account and copy this
## Here we do this to keep our information hidden.
load(".deploy_info.Rdata")
rsconnect::setAccountInfo(
    name = deploy_info$name,
    token = deploy_info$token,
    secret = deploy_info$secret
)

## You need this to enable shinyapps to install Bioconductor packages
options(repos = BiocManager::repositories())

## Deploy the app, that is, upload it to shinyapps.io
rsconnect::deployApp(
    appFiles = c(
        "app.R",
        "spe_workflow_Visium_spatialLIBD.rds",
        dir("www", full.names = TRUE)
    ),
    appName = 'OSTA_spatialLIBD_demo',
    account = 'libd',
    server = 'shinyapps.io'
)
