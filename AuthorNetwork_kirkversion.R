library("broom", lib.loc="~/R/R-3.3.1/library")
library("tidyr", lib.loc="~/R/R-3.3.1/library")
library("ggplot2", lib.loc="~/R/R-3.3.1/library")
library("gridExtra", lib.loc="~/R/R-3.3.1/library")
library("dplyr", lib.loc="~/R/R-3.3.1/library")
library(stringr)
library(networkD3)

#read in csv file downloaded from project 0 (John added to github)
df_authors_all <- read.csv("C:/Users/Summer Students/Documents/WebScrapedAuthors.csv")

#making a df with just author in (currently unused)
df_justAuthors <- data.frame(df_authors_all$author_list)

#Making a df with each author getting own column. Note currently has a max of ten authors before they get lumped. 
#Need to write something that will find the max number of commas in author list to set it to that instead of 10
authors_split <- str_split_fixed(df_authors_all$author_list, ",", n=Inf)
authors_split <- data.frame(authors_split)

simpleNetwork(authors_split)

