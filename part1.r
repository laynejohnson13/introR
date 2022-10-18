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