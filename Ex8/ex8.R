seed <- 1820
distances <- c(34.0,39.5,33.2,38.1,29.9,37.4,32.1,36.5,31.4,34.1,33.1,31.5,33.9,33.9)
n <- 8
gamma <- 0.95

set.seed(seed)

observations <- sample(distances, n)
observations

sample_var <- var(observations)
sample_var

a <- qchisq((1-gamma)/2, n-2)
b <- qchisq((1+gamma)/2, n-2)
a
b
