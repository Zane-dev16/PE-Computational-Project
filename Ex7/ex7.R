library(stats4)

a <- 4
x <- c(4.37,4.3,5.15,5.11,5.15,4.66,6.15,5.72, 5.87, 5.64, 4.05)
start_value <- 3.6
p <- 0.75

distrib <- function(theta) theta * (x**(-theta-1)) * (a**theta)

nLL <- function(theta) {
  if(theta > 0)
    -sum(log(distrib(theta)))
  else NA
}
fit <- mle(nLL, start = list(theta = 3.6))
fit

(x**-theta) * a**theta