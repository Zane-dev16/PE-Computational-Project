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
theta <- coef(fit)[1]

# integral: -(a**theta)x**(-theta) + (a**theta)4**(-theta) = 0.75
# <=> (a**theta)x**(-theta) = 0.25
# <=> x**(-theta) = 0.25 * (a**-theta)
# <=> x = (4**1/theta) * a

quantil_est =  (4**(1/theta)) * a
quantil_real = (4**(1/start_value)) * a

abs(quantil_est - quantil_real)

