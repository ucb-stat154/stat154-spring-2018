# Regression Scatterplot for Pearson's Height data

This is a Shiny app that generates a scatter diagram to illustrate the regression method using Pearson's heights data set.


## Data

This app uses the Pearson's Height Data. The data is in the `data/` folder. which contains 1078 rows and 2 columns: 

- `Father`: The father's height, in inches
- `Son`: The height of the son, in inches

The app only uses variables: `Father, Mother, Child`

Original source: [http://www.math.uah.edu/stat/data/Pearson.csv](http://www.math.uah.edu/stat/data/Pearson.csv)


## How to run it?

There are many ways to download the app and run it:

```R
library(shiny)

# Easiest way is to use runGitHub
runGitHub("stat154-spring-2018", "ucb-stat154", subdir = "apps/pearson-heights")
```
