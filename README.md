# Data Science Institute Data Science Fellows Template Research Compendium

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## A compendium of code, data, and author's manuscript accompanying the manuscript:

#### TBD


## Overview
This repository is organized as a reproducible research compendium. Future updates to this compendium will include a Dockerfile and Binder Container

## File Organization

    analysis/
    |
    ├── paper/
    │   ├── paper.Rmd       # this is the main document to edit
    │   └── paper.pdf       # this is an elsevier .pdf written from paper.Rmd
    |
    ├── figures/            # location of the figures produced for the manuscript
    |
    ├── data/
    │   └── RawData/        # data obtained from elsewhere
    |   
    └── supplementary-materials/
        ├── Supplementary_Figures/     
        |                   # supplementary figures for the main manuscript
        └── Supplementary_Tables/      
                            # supplementary tables for the main manuscript 
    
    R/Python/etc.           # scripts to run in the following order (also see associated README.md)
        └── Script.R        # hypothetical R script used to wrangle the raw data, produce figures, analyses, and supplementary materials

        

An `Rmd` notebook and associated pdf for the manuscript can be found in [analysis](/paper). This notebook produces a .pdf document in elsevier format.  

README.md files are included in all subdirectories with explanations or contents related to the paper. It should also provide a useful starting point for extending and exploring these materials for other projects.
