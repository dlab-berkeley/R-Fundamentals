## Solutions to R Fundamentals Pilot - Part 3 of 4

# set working directory to project home 
# uncomment the following line if you haven't installed these packages already 
#install.packages("here", "tidyverse")
library(tidyverse)
library(here)
setwd(here())

## Challenge 1: Reading in data ----
#In Part 2 we learned to read in a csv file and assign it to a data frame called `gap`. 
# Lets do that again. How can you find out what variables we have in our data?

gap <- read.csv("./data/gapminder.csv")

head(gap)
names(gap)

## Challenge 2: Select columns using tidyverse ----
# Use the select() function from tidyverse to select three variables from the gap data frame. 
# Assign those three variables to a new data frame. Check the dimensions of your new data frame using the dim() function.

# make sure tidyverse is loaded
library(tidyverse)

gap_subset_v2 <- gap %>%
  select(year, country, lifeExp)

dim(gap_subset_v2)


## Challenge 3: Combining filter and select ----
# Start with the gap data frame. Use the `%>%` operator and the functions `select()` and `filter`. 
# Subset the data to countries in Asia or Oceania that have a life expectancy above 60, 
# and select the country, year, life expectancy, and GDP per capita variables. 
# Assign your subsetted data to a new data frame called **gap_subset**.

# make sure tidyverse is loaded
library(tidyverse)

gap_subset <- gap %>%
  # filter to countries in Asia or Oceania
  filter(continent == "Asia" | continent == "Oceania") %>%
  # filter to contries with life expectancy above 60 
  filter(lifeExp > 60) %>%
  # select specific variables
  select(country, year, lifeExp, gdpPercap)

head(gap_subset)
dim(gap_subset)

## Challenge 4: Filtering missing values
# We might want to drop the missing values from our data entirely. 
# We can combine `filter()` and `is.na()` to remove rows that contain missing values. 
# Edit the code below to drop all rows for which gdpPercapita is missing.

# Reminder: `filter()` takes a conditional statement, checks if it's true, and then **keeps** all rows that the statement is true for. We want to keep all rows where there are **no** missing values for `gdpPercap`. You can check for missing with `is.na()`.

# fill in a conditional statement in filter to keep only rows with non-missing values of gdpPercap
gap_nomissing <- gap %>%
  filter(!is.na(gdpPercap))

# the code below subtracts the number of rows in gap_nonmiss from number of rows in gap - this is how many rows filter() dropped
nrow(gap)-nrow(gap_nomissing)
