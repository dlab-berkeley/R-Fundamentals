## Solutions to R Fundamentals Pilot - Part 2 of 4

## Challenge 1: Another way to create vectors ----

#A third way to create a vector is using the : operator (colon operator). Look up the help page with ?colon or Google how to use it (sometimes help pages are less helpful). Create a vector called years_v3 that is the years 2018 to 2022 using the : operator.

#Check that the three vectors we've created are the same length.

# 1st vector - uses c()
years <- c(2018, 2019, 2020, 2021, 2022)

# 2nd vector - uses seq()
years_v2 <- seq(from = 2018, to = 2022, by = 1)

# 3rd vector - uses : 
?colon # look up documentation 

years_v3 <- 2018:2022

# check all vectors are the same length
length(years)
length(years_v2)
length(years_v3)


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

#Extract three variables of your choice from the gap data frame. Thinking back to Part 1 when we learned the assignment operator <-. See if you can assign these three extracted variables to a new data frame called gap_subset.

gap_subset <- gap[ , c("year", "country", "pop")]
head(gap_subset)
dim(gap_subset)


## Challenge 5: Select columns using tidyverse ----
#Use the select() function from tidyverse to select three variables from the gap data frame. Assign those three variables to a new data frame. Check the dimensions of your new data frame using the dim() function.

# make sure tidyverse is loaded
library(tidyverse)

gap_subset_v2 <- gap %>%
  select(year, country, lifeExp)

dim(gap_subset_v2)
