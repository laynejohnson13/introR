
#####Example1.1
# Intro to R Lesson
# Feb 16th, 2016
   
# Interacting with R

## I am adding 3 and 5. R is fun!
3+5

##assigning variables
x <- 3
x

y <- 5
y

x+y

number <- x + y

##changing variables

x <- 5

#####Example 1.2
# Create a numeric vector and store the vector as a variable called 'glengths'
glengths <- c(4.6, 3000, 50000)
glengths


# Create a character vector and store the vector as a variable called 'species'
species <- c("ecoli", "human", "corn")
species

species <- c("ecoli", "human", corn)
###THIS GIVES AN ERROR- CORN CANNOT BE FOUND DUE TO MISSING QUOTATIONS

##Exercise - create vector of numeric and character values by combining the two variables created

combined <- c(species, glengths)
combined 
##returns --> "ecoli" "human" "corn"  "4.6"   "3000"  "50000"

# Create a character vector and store the vector as a variable called 'expression'
expression <- c("low", "high", "medium", "high", "low", "medium", "high")

# Turn 'expression' vector into a factor
expression <- factor(expression)
expression
##this returns --> Levels: high low medium


###Exercise - create vector with 9 elements & turn vector into factor data structure
samplegroup <- c("CTL", "CTL", "KO", "OE","KO","CTL","KO","OE","OE")
samplegroup <- factor(samplegroup)

df <- data.frame(species, glengths)
df


###Exercise
titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)

df_2 <- data.frame(titles,pages)

list1 <- list(species, df, number)
list1


###Exercise - create list
list2 <- list(species, glengths, number)
list2



#####Example 3

glengths <- c(glengths, 90) # adding at the end	
glengths <- c(30, glengths) # adding at the beginning

sqrt(81)

sqrt(glengths)

round(3.14159)

##seeking help for functions

?round

args(round)

example("round")

round(3.14159, digits=2)
##OR
round(3.14159, 2)


###Exercise - calculate mean value of glengths
mean(glengths)

test <- c(1, NA, 2, 3, NA, 4)
test

mean(test, na.rm = TRUE)

##sort in ascending order
sort(glengths)

##sort is descending order
sort(-glengths)


square_it <- function(x) {
  square <- x * x
  return(square)
}

square_it(5)

square_it <- function(x) {
  x * x
}

###Exercise 
multiply_it <- function(x,y) {
  x * y
}



###Example
metadata <- read.csv(file="data/mouse_exp_design.txt")
metadata

proj_summary <- read.table(file= 'data/project-summary.txt') 
proj_summary

##inspecting dataframes
head(metadata)

###Example
class(glengths)
class(metadata)

summary(proj_summary)

colnames(proj_summary)
rownames(proj_summary)

rownames(metadata)

length(proj_summary)