##  Solutions to R Fundamentals Pilot - Part 4 of 4

# set working directory to project home 
# uncomment the following line if you haven't installed these packages already 
#install.packages("here", "tidyverse")
library(tidyverse)
library(here)
setwd(here())

## Challenge 1: Reading in data ----
# Load in data/gapminder.csv using the read.csv() function from earlier workshops and assign it to the object gap.
gap <- read.csv("./data/gapminder.csv")


## Challenge 2:  Summary statistics ----
# What is the average life expectancy in our data? How much does life expectancy range?

# average life expectancy 
mean(gap$lifeExp)

# range of life expectancy 
summary(gap$lifeExp)


## Challenge 3: Write a custom function ----
# Write a function that filters the gap data set to a specific year. Then estimate the average GDP per capita in that year. Make your function so you can input a different year and the functions outputs the average GDP per capita for that year. Use the code above as a template.

GDP_byyear <- function(yr){
  
  # function to return average GDP per capita in year yr
  # yr = year, number
  
  # limit to specific year
  gap_subset <- gap %>%
    filter(year == yr)
  
  # save the mean GDP per capita for that year
  # b/c gdpPercap has some missing values in, make sure to remove missing from mean()
  gdp_mean <- mean(gap_subset$gdpPercap, na.rm = T)
  
  # return the life expectancy
  return(paste0("The average GDP per capita in ", yr, " is ", gdp_mean))
  
}

# what years do we have?
unique(gap$year)

# call the function for some years
GDP_byyear(2007)
GDP_byyear(1982)
GDP_byyear(1957)

## Challenge 4: Plots ----
# answer in the chat 


## Challenge 5: Create a scatter plot ----
# Create a scatter plot that shows the relationship between lifeExp and gdpPercap. 
# Start with a "simple" plot using geom_point(). 
# Then think about edits you could make to the plot that might make it easier to read. 
# For example, changing the x and y axis, adding a title, coloring the points by a certain grouping etc.

# make sure tidyverse is loaded in 
library(tidyverse)

# simple plot
gap %>%
  # set the x and y axis
  ggplot(aes(x = lifeExp, y = gdpPercap)) +
  # make a scatter plot
  geom_point() +
  # add a y axis and x axis title
  xlab("Life Expectancy (years)") +
  ylab("GDP per capita (dollars)") +
  # add a title
  ggtitle("Life Expectancy vs. GDP per Capita") +
  # add a theme
  theme_bw() 


# more detailed plot 
# - limit to 2007
# - color points by continent 
# - log the GDP per capita to make the scale easier to read - Logging a variable is helpful if it has a 
# wide-range or is right-skewed (where most of the data points are clustered towards the left and a few 
# large values stretch the tail to the right). Logging a variable compresses the scale of the data, 
# bringing the larger values closer together and stretching out the smaller values. In our case, there are 
# lots of countries with very low GDP per capita (\<5K) and fewer as GDP per capita gets higher (\>30K).

gap %>%
  filter(year == 2007) %>%
  # set the x and y axis
  ggplot(aes(x = lifeExp, y = log(gdpPercap), color = continent)) +
  # make a scatter plot
  geom_point() +
  # add a y axis and x axis title
  xlab("Life Expectancy (years)") +
  ylab("Log GDP per capita (dollars)") +
  # add a title
  ggtitle("Life Expectancy vs. GDP per Capita in 2007") +
  # add a theme
  theme_bw() 




