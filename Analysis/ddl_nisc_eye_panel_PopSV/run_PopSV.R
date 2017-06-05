# run in interactive node with R/3.4.0_gcc-6.2.0

## Load package and wrapper
setwd('/data/mcgaugheyd/projects/nei/hufnagel/ddl_nisc_custom_capture/recalibrated_bams/')
library(BatchJobs)
library(PopSV)
source("~/git/CNV_analysis/PopSV/automatedPipeline.R")
## Set-up files and bins
bam.files = read.table("~/git/CNV_analysis/Analysis/ddl_nisc_eye_panel_PopSV/bams.tsv", as.is=TRUE, header=TRUE)
files.df = init.filenames(bam.files, code="example")
save(files.df, file="files.RData")
bin.size = 1e3
bins.df = fragment.genome.hg19(bin.size)
save(bins.df, file="bins.RData")
## Run PopSV
res.GCcounts = autoGCcounts("files.RData", "bins.RData",redo=1)
cnvs.df = autoNormTest("files.RData", "bins.RData")
print('Done?')




