a <- 4
n <- 30
seed <- 1948
num_samples <- 1000
rate <- 1/a
scale <- 1/4

set.seed(1948)

y_larger_than_90_count <- 0
for (i in 1:num_samples) {
  Xs <- rexp(n, rate=rate)
  Y <- sum(Xs)
  if (Y > 90) {
    y_larger_than_90_count <- y_larger_than_90_count + 1
  }
}
proportion <- y_larger_than_90_count / num_samples
exact <- 1 - pgamma(90, 30, rate=1/4)

diff <- abs(proportion - exact)
diff
result_percentage <- diff * 100
result_percentage
round(result_percentage, 4)
