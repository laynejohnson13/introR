###Chapter 1
##1.1
##R & RStudio downloaded 

##1.2 
3+5

##1.3
x <- 12 ##assigning 12 to variable x

##creating vector 
some_numbers <- c(0,1,2,3,4,5,6,7,8,9)
#OR
some_numbers <- c(0:9)
some_numbers

##finding the mean
mean(some_numbers)

##1.4

##installing packages 
install.packages('ggplot2')
install.packages('dplyr')
install.packages('stats')
install.packages('tidyverse')
install.packages('tibble')
install.packages('readr')

library(tidyverse)

##1.5
##markdown file created

##Chapter 2

#2.1
library(tidyverse)

##2.2
paygap <- read.csv('~/Desktop/Intro-to-R/pay_gap.csv', header = TRUE)

head(paygap, n = 5)

colnames(paygap)

dim(paygap)

#2.3
class(paygap)

class(paygap$DiffMeanHourlyPercent)
