# TItle: GEO Analysis
# Author: Ajay Perumbeti adapted from https://sbc.shef.ac.uk/geo_tutorial/tutorial.nb.html
# Date: 2023-02-23
# Description: Script for running transcriptome microarray from GEO datasets: 
  # Passive Smoker dataset, GSE18044, 12 smokers, 64 non smokers
  # Active Smoker Dataset, GSE 27272, 20 smokers, 52 non-smokers

#----------------------------------------------------------
#ChatGPT response to R code request
#Here is an example R code for expression analysis pipeline development from microarray data in .soft format using Bioconductor and GEOquery library:

#Install required packages
#if (!require("BiocManager"))
  #install.packages("BiocManager")
#BiocManager::install("GEOquery")

#Load GEOquery library
#library(GEOquery)

#Download and load data in .soft format

#Replace "GSEXXXXX" with actual accession number of dataset
#soft_file <- getGEOSuppFiles("GSEXXXXX", destdir=tempdir(), type="soft")
#gse <- read.GEOsoft(soft_file[1])

#Pre-processing and normalization of data
#gse_normalized <- normalize.quantiles(gse)

#Exploratory data analysis
#Plot distribution of gene expression values
#hist(gse_normalized)

#Differential gene expression analysis
#design <- model.matrix(~0 + sample_info$group)
#fit <- lmFit(gse_normalized, design)
#contrast.matrix <- makeContrasts(groupA-groupB, levels=design)
#fit2 <- contrasts.fit(fit, contrast.matrix)
#results <- topTable(fit2, number=Inf, adjust="BH") (edited) 
#This code downloads and loads the microarray data in .soft format from the GEO database, performs normalization and quality control, and performs differential gene expression analysis. The results are stored in the "results" data frame and can be further processed for downstream analysis.
#----------------------------------------------------------

#Based on https://sbc.shef.ac.uk/geo_tutorial/tutorial.nb.html
# Passive Smoker dataset, GSE18044, 12 smokers, 64 non smokers
# Active Smoker Dataset, GSE 27272, 20 smokers, 52 non-smokers

#install packages
install.packages("BiocManager")
install.packages("forcats")
install.packages("stringr")
install.packages("ggplot2")
install.packages("ggrepel")
install.packages("readr")
install.packages("tidyr")
install.packages("survminer")
BiocManager::install("GEOquery")
BiocManager::install("limma")
BiocManager::install("pheatmap")
BiocManager::install("org.Hs.eg.db")

library(GEOquery)
## change my_id to be the dataset that you want.
#Passive smoker dataset
my_id <- "GSE18044"

#Active Smoker Data set
#my_id <- "GSE27272"

gse <- getGEO(my_id)

## check how many platforms used
length(gse)

gse <- gse[[1]]
gse

## if more than one dataset is present, you can analyse the other dataset by changing the number inside the [[...]]
## e.g. gse <- gse[[2]]

pData(gse) ## print the sample information
fData(gse) ## print the gene annotation
exprs(gse) ## print the expression data


