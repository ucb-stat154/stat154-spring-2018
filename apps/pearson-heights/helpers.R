# compuptes the slope and intercept terms of a line between two points
line_equation <- function(x1, y1, x2, y2) {
  slope <- (y2 - y1) / (x2 - x1)
  intercept <- y1 - slope*x1
  list(intercept = intercept, slope = slope)
}

# computes x,y averages depending on a given number of intervals (x-axis)
# (to be used for showing graph of averages)
averages <- function(x, y, breaks = 5) {
  x_cut<- cut(x, breaks = breaks)
  y_averages <- as.vector(tapply(y, x_cut, mean))
  x_boundaries <- gsub('\\(', '', levels(x_cut))
  x_boundaries <- gsub('\\]', '', x_boundaries)
  x_boundaries <- strsplit(x_boundaries, ',')
  x1 <- as.numeric(sapply(x_boundaries, function(u) u[1]))
  x2 <- as.numeric(sapply(x_boundaries, function(u) u[2]))
  x_midpoints <- x1 + (x2 - x1) / 2
  list(x = x_midpoints, y = y_averages)
}
