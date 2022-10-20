##Part2 
#Example2.1
age <- c(15, 22, 45, 52, 73, 81)

age[5]

age[-5]

age[c(3,5,6)]   ## nested

# OR

## create a vector first then select
idx <- c(3,5,6) # create vector of the elements of interest
age[idx]

age[1:4]

##Exercise 1
alphabets <- c('C','D','X','L','F')
alphabets[-3:-4]
alphabets[-3]
alphabets[5:1]


age
age > 50

age > 50 | age < 18

age

age[age > 50 | age < 18]  ## nested

# OR

## create a vector first then select
idx <- age > 50 | age < 18
age[idx]


which(age > 50 | age < 18)

age[which(age > 50 | age < 18)]  ## nested

# OR

## create a vector first then select
idx_num <- which(age > 50 | age < 18)
age[idx_num]

expression[expression == "high"]    ## This will only return those elements in the factor equal to "high"

###Exercise 
idx <- samplegroup != "KO"
samplegroup[idx]

expression

str(expression)
#Factor w/ 3 levels "high","low","medium": 2 1 3 1 2 3 1

expression <- factor(expression, levels=c("low", "medium", "high"))     # you can re-factor a factor 

str(expression)
#Factor w/ 3 levels "low","medium",..: 1 3 2 3 1 2 3

##Exercise
factor(samplegroup, levels = c("KO", "CTL", "OE"))




###Example 2.2
library(ggplot2)
install.packages("tidyverse")
library(tidyverse)
sessionInfo()

##Example 2.3


metadata[1, 1]

metadata[1, 3] 

metadata[3, ] 

metadata[ , 3]   

metadata[ , 3, drop = FALSE] 

metadata[ , 1:2] 

metadata[c(1,3,6), ] 

metadata[c("sample1", "sample2", "sample3") , "celltype"] 

# Check column names of metadata data frame
colnames(metadata)

# Check row names of metadata data frame
rownames(metadata)

metadata$genotype 

metadata$genotype[1:5]

##Exercises

metadata[c(2,8), c(1,3)]
metadata[c(4, 9), "replicate"]
metadata[, "replicate", drop = FALSE]


metadata$celltype == "typeA"

logical_idx <- metadata$celltype == "typeA"

metadata[logical_idx, ]

which(metadata$celltype == "typeA")

idx <- which(metadata$celltype == "typeA")

metadata[idx, ]

which(metadata$replicate > 1)

idx <- which(metadata$replicate > 1)

metadata[idx, ]

metadata[which(metadata$replicate > 1), ]

sub_meta <- metadata[which(metadata$replicate > 1), ]

##Exercises
idx <- which(metadata$genotype=="KO")
metadata[idx, ]


list1[[2]]

comp2 <- list1[[2]]
class(comp2)

list1[[1]]

list1[[1]][1]

##Exercises
random <- list(metadata, age, list1, samplegroup, number)
random[[4]]


names(list1) 

names(list1) <- c("species", "df", "number")

names(list1)

list1$df


##Exercise
names(random) <- c("metadata", "age", "list1", "samplegroup", "number")
random$age


##Example 2.4 
rpkm_data <- read.csv("data/counts.rpkm.txt")

head(rpkm_data)

ncol(rpkm_data)
nrow(metadata)

##vector1 %in% vector2

A <- c(1,3,5,7,9,11)  
B <- c(2,4,6,8,10,12)

A %in% B

A <- c(1,3,5,7,9,11)   
B <- c(2,4,6,8,1,5)

A %in% B

any(A %in% B)

all(A %in% B)


##Exercises
B %in% A

B[B %in% A]



A <- c(10,20,30,40,50)
B <- c(50,40,30,20,10)  # same numbers but backwards 

# test to see if each element of A is in B
A %in% B

# test to see if each element of A is in the same position in B
A == B

# use all() to check if they are a perfect match

x <- rownames(metadata)
y <- colnames(rpkm_data)

all(x %in% y)

all(rownames(metadata) %in% colnames(rpkm_data))


x == y
all(x == y)


##Exercises
important_genes <- c("ENSMUSG00000083700", "ENSMUSG00000080990", "ENSMUSG00000065619", "ENSMUSG00000047945", "ENSMUSG00000081010", "ENSMUSG00000030970")

important_genes %in% rownames(rpkm_data)

idx <- rownames(rpkm_data) %in% important_genes
ans <- rpkm_data[idx, ]
idx2 <- which(rownames(rpkm_data) %in% important_genes)
ans2 <- rpkm_data[idx2, ]


##Bonus

ans3 <- rpkm_data[important_genes, ]