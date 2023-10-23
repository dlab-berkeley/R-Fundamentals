## Solutions to R Fundamentals Pilot - Part 2 of 4

## Challenge 1: Manipulating vectors ----
#The code above didn't permanently change the values in our population vector. 
# Re-write the code above so that the population vector is an additional 2 million people in each year.

pop_mexico <- c(123, 124, 125, 126, 127)

# adds 2 without permanently changing pop_mexico
pop_mexico + 2
pop_mexico

# adds 2 and re-assigns to the pop_mexico variable
pop_mexico <- pop_mexico + 2
pop_mexico

## Challenge 2 - answer in the chat ----

## Challenge 3 - Import a csv file and explore the data ----
#Clear the global environment (hint: if you can't remember the function to do this, you can use the broom icon). Read in the Gapminder data saved in the Data directory and save it to an object called gap.

# clear the environment
rm(list = ls())

# read in the gapminder data
gap <- read.csv("./data/gapminder.csv")

#Then use the functions head(), dim(), and View() (note the capital V) to answer the following questions:
# (1) How many variables are there?
dim(gap)
# 6 variables

# (2) How many observations are there?
dim(gap)
# 1706 observations 
# each observation is a year X country 

# (3) What information is in this data?
head(gap)
# information on countries across years - population, GDP, and life expectancy 

## Challenge 4: Subsetting columns ----

#Extract three variables of your choice from the gap data frame. 
# Thinking back to Part 1 when we learned the assignment operator <-. 
# See if you can assign these three extracted variables to a new data frame called gap_subset.

gap_subset <- gap[ , c("year", "country", "pop")]
head(gap_subset)
dim(gap_subset)

