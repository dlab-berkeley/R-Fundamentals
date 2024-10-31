# D-Lab's R Fundamentals Workshop

[![Datahub](https://img.shields.io/badge/launch-datahub-blue)](https://dlab.datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fdlab-berkeley%2FR-Fundamentals&urlpath=rstudio%2F&branch=main) [![Binder](http://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/dlab-berkeley/R-Fundamentals/HEAD?urlpath=rstudio)

This repository contains the materials for D-Lab's R Fundamentals workshop. 

### Prerequisites
No prior experience with R is required.

Check D-Lab's [Learning Pathways](https://dlab-berkeley.github.io/dlab-workshops/python_path.html) to figure out which of our workshops to take!

## Workshop Goals

This interactive workshop series is your complete introduction to programming in R for people with little or no previous programming experience. It covers the basics of using RStudio, creating variables, working with data frames, and starting to analyse your data using summary statistics and data visualization.

## Learning Objectives

After completing this workshop series you will be able to:
-   Navigate R Studio
-   Open data in R and work with it in data frames using **tidyverse**
-   Distinguish between different variable types
-   Visualize data using **ggplot**
-   Inspect documentation to deal with error messages

This workshop does **not** cover the following:
-   Advanced data manipulation and cleaning - this is covered in [R Data Wrangling](https://github.com/dlab-berkeley/R-Data-Wrangling)
-   Extensive data visualization - this is covered in [R Data Visualization](https://github.com/dlab-berkeley/R-Data-Visualization)

## Workshop Structure

R Fundamentals has 4 parts. Each of the parts takes 2 hours, and is delivered in a lecture-style coding walk through interrupted by challenge problems and a break. Instructors and TAs are dedicated to engaging you in the classroom and answering questions in plain language.

1.  Part 1: Introduction to R and R Studio
2.  Part 2: Data frames and variable types
3.  Part 3: Manipulating data frames
4.  Part 4: Data visualizations and custom functions

## Installation Instructions

**NOTE:** We will spend the first part of Workshop 1 installing R and downloading materials for the workshop series. You do not need to install R beforehand. 

RStudio is a software commonly used by R practitioners to develop code in R. We will use RStudio to go through the workshop materials, which requires the installation of both the R language and the RStudio software. If you would like to run R on your own computer, complete the following steps prior to the workshop:

1.  [Download R](https://cloud.r-project.org/): Follow the links according to the operating system you are running. You will first need to click on a link corresponding to your operating system, and then an additional link to select a specific version of R. Download the package, and install R onto your computer. You should install the most recent version (at least version 4.1).

    -   If you are using a Mac, click "Download R for macOS" and then select the right version of R. You will need to select the version corresponding to your specific version of macOS, as well as whether you have an Intel or Apple Silicon Mac.
    -   If you are using Windows, click "Download R for Windows", then click "base", and click the download link.
    -   If you are using Linux, click on the link corresponding to your Linux distribution, and then follow the instructions.

2.  [Download RStudio](https://rstudio.com/products/rstudio/download/#download): Install RStudio Desktop. This should be free. Do this after you have already installed R. The D-Lab strongly recommends an RStudio edition of 2022.02.0+443 "Prairie Trillium" or higher.

    -   Some individuals with older operating systems may run into odd issues. If you are running into issues with the installation of RStudio, you may need to install a specific version of RStudio. Please check [this link](https://www.rstudio.com/products/rstudio/older-versions/) if this applies to you.

3.  Download these R Fundamentals [workshop materials](https://github.com/dlab-berkeley/R-Fundamentals):

    -   Click the green "Code" button in the top right of the repository information.
    -   Click "Download Zip".
    -   Extract this file to a folder on your computer where you can easily access it (we recommend Desktop).

4.  Optional: if you're familiar with `git`, you can instead clone this repository by opening a terminal and entering `git clone git@github.com:dlab-berkeley/R-Fundamentals.git`.

## Is R not working on your laptop?

If you do not have R installed and the materials loaded on your workshop by the time it starts, we *strongly* recommend using the UC Berkeley DataHub to run the materials for these lessons. You can access the DataHub by clicking the following button:

[![DataHub](https://img.shields.io/badge/launch-datahub-blue)](https://dlab.datahub.berkeley.edu/hub/user-redirect/git-pull?repo=https%3A%2F%2Fgithub.com%2Fdlab-berkeley%2FR-Fundamentals&urlpath=rstudio%2F&branch=main)

Some users may have to click the link twice if the materials do not load initially.

The DataHub downloads this repository, along with any necessary packages, and allows you to run the materials in an RStudio instance on UC Berkeley's servers. No installation is needed from your end - you only need an internet browser and a CalNet ID to log in. By using the DataHub, you can save your work and come back to it at any time. When you want to return to your saved work, go straight to [DataHub](https://dlab.datahub.berkeley.edu), sign in, and click on the `R-Fundamentals` folder.

If you don't have a Berkeley CalNet ID, you can still run these lessons in the cloud, by clicking this button:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/dlab-berkeley/R-Fundamentals/HEAD?urlpath=rstudio)

If you are loading Binder with this repository for the first time, it may take a few minutes to set up. Binder operates similarly to the D-Lab DataHub, but on a different set of servers. By using Binder, however, you cannot save your work.

## Run the Code

Now that you have all the required software and materials, you need to run the code.

1.  Launch the RStudio software.

2.  Use the file navigator to find the R-Fundamentals folder you downloaded from Github. Open `R-Fundamentals.Rproj` by double clicking on the file.

3.  Open up the file corresponding to the part of the workshop you're attending (`Part1.Rmd`, `Part2.Rmd`, `Part3.Rmd`, `Part4.Rmd`) via the Files panel in RStudio.

4.  Place your cursor on a given line and press `Command + Enter` (Mac) or `Control + Enter` (PC) to run an individual line of code.

5.  The `solutions` folder contains the solutions to the challenge problems.

# Additional Resources

Check out the following online resources to learn more about R:

-   [Software Carpentry](https://swcarpentry.github.io/)
-   [Quick-R](http://statmethods.net/)
-   [UCLA Institute for Digital Research and Education](https://stats.idre.ucla.edu/r/)
-   [R-bloggers](https://www.r-bloggers.com/)
-   [R Markdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/)
-   [The tidyverse style guide](http://style.tidyverse.org/)

as well as the following books:

-   [Bookdown Featured Books](https://bookdown.org/)
-   [Introduction to Probability and Statistics in R](http://www.atmos.albany.edu/facstaff/timm/ATM315spring14/R/IPSUR.pdf) by G. Jay Kearns.
-   [Advanced R](http://adv-r.had.co.nz/) by Hadley Wickham.
-   [R for Data Science](http://r4ds.had.co.nz/) by Hadley Wickham and Garrett Grolemund.
-   [R for Everyone](http://www.jaredlander.com/r-for-everyone/) by Jared Lander.
-   [Art of R Programming](https://www.nostarch.com/artofr.htm) by Norman Matloff.

# About the UC Berkeley D-Lab

D-Lab works with Berkeley faculty, research staff, and students to advance data-intensive social science and humanities research. Our goal at D-Lab is to provide practical training, staff support, resources, and space to enable you to use R for your own research applications. Our services cater to all skill levels and no programming, statistical, or computer science backgrounds are necessary. We offer these services in the form of workshops, one-to-one consulting, and working groups that cover a variety of research topics, digital tools, and programming languages.

Visit the [D-Lab homepage](https://dlab.berkeley.edu/) to learn more about us. You can view our [calendar](https://dlab.berkeley.edu/events/calendar) for upcoming events, learn about how to utilize our [consulting](https://dlab.berkeley.edu/consulting) and [data](https://dlab.berkeley.edu/data) services, and check out upcoming [workshops](https://dlab.berkeley.edu/events/workshops).

# Other D-Lab R Workshops

D-Lab offers a variety of R workshops, catered toward different levels of expertise.

## Basic Competency

-   [R Data Wrangling](https://github.com/dlab-berkeley/R-Data-Wrangling)
-   [R Data Visualization](https://github.com/dlab-berkeley/R-Data-Visualization)
-   [R Census Data](https://github.com/dlab-berkeley/Census-Data-in-R)

## Intermediate/Advanced Competency

-   [R Geospatial Fundamentals](https://github.com/dlab-berkeley/R-Geospatial-Fundamentals)
-   [R Machine Learning](https://github.com/dlab-berkeley/R-Machine-Learning)
-   [R Deep Learning](https://github.com/dlab-berkeley/R-Deep-Learning)

# Contributors

- Hero Ashman
- Tom van Nuenen
