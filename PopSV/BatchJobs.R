source("~/git/CNV_analysis/PopSV/makeClusterFunctionsAdaptive.R")
cluster.functions <- makeClusterFunctionsAdaptive("~/git/CNV_analysis/PopSV/biowulf2.tmpl")
mail.start <- "none"
mail.done <- "none"
mail.error <- "none"
mail.from <- "<mcgaugheyd@mail.nih.gov>"
mail.to <- "<mcgaugheyd@mail.nih.gov>"
db.driver = "SQLite"
db.options = list()
debug = FALSE
