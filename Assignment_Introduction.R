###Change this code so it computes 2+2
1+1

2+2

###installing packages and calling libraries

install.packages("datasauRus")
library(datasauRus)
install.packages("rtools")

###version check

version

###installing packages

install.packages("datasauRus")
install.packages("gganimate")
install.packages("ggplot2")
install.packages("gifski")
install.packages("purrr")
install.packages("rmarkdown")
install.packages("tidyverse")
install.packages("dplyr")
install.packages("magrittr")

###section1####
###section2 ----

###calling libraries####

library("datasauRus")
library("gganimate")
library("ggplot2")
library("gifski")
library("purrr")
library("rmarkdown")
library("tidyverse")
library("dplyr")
library("magrittr")
library(dplyr)
library(purrr)

###important_arguments_notes####

##select: return a subset of the columns
##filter: extract a subset of rows
##rename: rename variables
##mutate: add new variables and columns or transform
##group_by: split data into groups
##summarize: generate tables of summary statistics

###importing_csv_files####
participants_data <- read.csv("E:/Decision Analysis/teaching_R-master/teaching_R-master/Data_Wrangling_Rpres/participants_data.csv")
  View(participants_data)
 participants_data <- read.csv("E:/Decision Analysis/teaching_R-master/teaching_R-master/Data_Wrangling_Rpres/participants_data.csv")

###looking_at_the_data####
 participants_data

###change the number of display rows to 7####
 head(participants_data,
      n=4)
 
 ###checking names of the variables####
 names(participants_data)
 
 ###looking at the structure of the datat####
 str(participants_data)
 
 ###calling a particular variable + plotting it####
 participants_data$batch
 plot(participants_data$batch)
 
 ###loading dplyr, tidyr, and magrittr library####
 library(dplyr)
 library(tidyr)
 library(magrittr)
 
 ###creating subset with the select function####
 select(participants_data,
        academic_parents,
        working_hours_per_day)
 
 ###creating subset with the filter function####
 # Change the filter to those who 
 # work more than 5 hours a day and 
 # names are longer than three letters
 filter(participants_data,
        working_hours_per_day >5,
        letters_in_first_name >3)
 
 ###renaming variables using rename function####
 # Rename the variable km_home_to_office as commute
 names(participants_data)
 rename(participants_data,
        commute = km_home_to_office)
 
 ###mutate function####
 # Mutate a new column named age_mean that is a
#function of the age multiplied by the mean of all ages in the group####
 mutate(participants_data,
        age_mean = age*
          mean(age))
 
###creating a new category using mutate function####
 ##Create a commute category with the mutate function
 install.packages("installr")
 library(installr)
 install.packages("stringr")
library(stringr)
 install.packages("dplyr")
 library(dplyr)
 mutate(participants_data, 
        response_speed = 
          ifelse(days_to_email_response > 1, 
                 "slow", "fast"))
 
names(participants_data)
 # Mutate new column named response_speed 
 # populated by 'slow' if it took you 
 # more than a day to answer my email and 
 # 'fast' for others

 
 