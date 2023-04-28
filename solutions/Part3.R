## Solutions to R Fundamentals Pilot - Part 3 of 4

## Challenge 1: Reading in data ----
#In Part 2 we learned to read in a csv file and assign it to a data frame called `gap`. Lets do that again. How can you find out what variables we have in our data?

gap <- read.csv("./data/gapminder.csv")

head(gap)
names(gap)

## Challenge 2: Combining filter and select ----
# Start with the gap data frame. Use the `%>%` operator and the functions `select()` and `filter`. Subset the data to countries in Asia or Oceania that have a life expectancy above 60, and select the country, year, life expectancy, and GDP per capita variables. Assign your subsetted data to a new data frame called **gap_subset**.

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

## Challenge 3: Missing values and functions ----
# What do you notice when you use the `mean()` and `summary()` functions on `gap$gdpPercap` ?

mean(gap$gdpPercap)
# shows mean as NA

summary(gap$gdpPercap)
# shows mean as a value


## Challenge 4: Looking up function arguments in documentation ----
# Look up the documentation for `mean`. Which argument will let us ignore `NA` values? What value should we set this argument to? Test it out below.

# look up the documentation for mean
?mean

# calculate the mean of gdpPercap ignoring missing values 
mean(gap$gdpPercap, na.rm = T) 

# is this the same as using summary?
summary(gap$gdpPercap)
# yes!


## Challenge 5: Ordering factors ----
# Create a new variable that is a factor version of `continent` ordered by the population of the continent from smallest to largest. To help you, this code displays the total population for each continent in our data in 2007.

# total population by continent
gap %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(total_pop = sum(pop)) %>%
  arrange(total_pop)

# factor version of continent ordered by population
continent_pop <- factor(gap$continent, levels = c("Oceania", "Europe", "Americas", "Africa", "Asia"), ordered = T)

# check that it shows up in the order we specified
table(continent_pop)

# compare this to how the non-factor version shows up - alphabetical 
table(gap$continent)



