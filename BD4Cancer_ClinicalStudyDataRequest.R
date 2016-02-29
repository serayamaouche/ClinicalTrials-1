#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Script File: BD4Cancer_ClinicalStudyDataRequest.R  
# Date of creation: 18 Feb 2016
# Date of last modification: 20 Feb 2016
# Author: Seraya Maouche <seraya.maouche@iscb.org>
# Project: Epidemium BD4Cancer (http://www.epidemium.cc)
# Short Description: This script provides functionalities to read and all
#                    PMC dataset provided by Epidemium 
#                    The script will generates a summary file and create a 
#                    corpus from all XML files
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

library(R.utils)
requiredPackages <- c("rlist", "RCurl","XML","tm","SnowballC","RColorBrewer","ggplot2","NLP",
                      "wordcloud","biclust","cluster","igraph","fpc")
                      
#install.packages(requiredPackages,repos="http://cran.r-project.org", dependencies=TRUE)

################ Load required packages
lapply(requiredPackages, require, character.only=TRUE)

DataDir <- "../data/ClinicalStudyDataRequest"
ResDir <- "../BD4Cancer/results/"

setwd(DataDir)
Files <- c(dir(DataDir))
length(Files)
summary(Files)

#Parse XML files
doc = xmlTreeParse(Files, useInternal = TRUE)
top = xmlRoot(doc)
xmlName(top)
names(top)



