## Solutions to R Fundamentals Pilot - Part 1 of 4

## Challenge 1 - two ways to create code chunks ----

# 1: Click Insert –> Code chunk –> R

# 2: Use the keyboard shortcut Ctrl + Alt + I (windows) or Cmd + Option + I (mac) (I = the letter "i") 

## Challenge 2 - creating variables ----
#Create a variable called continent and assign it the value "Americas". 
# Create variable called pop and assign it the value 4.5.

continent <- "Americas"
continent

pop <- 4.5
pop

## Challenge 3 - Creating variables from other variables ----
#Pick a country. Look up it's population and create a variable which stores the population. 
# Now look up the GDP (Gross Domestic Product) and create another variable which stores the GDP. 
# Can you use these two variables to create a third variable which stores the GDP per capita (GDP divided by population)?

italy_pop <- 59.11*10^6 #59 million 
italy_gdp <- 2.1*10^12 #2.1 trillion 

# use to calculate gdp per capita
italy_gdppercap <- italy_gdp/italy_pop
# google estimates it at $35,657 - close!
