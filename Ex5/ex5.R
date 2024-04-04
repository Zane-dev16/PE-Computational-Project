n <- 23
seed <- 1950
r <- 300
m <- 170
proportions <- numeric(n)

set.seed(seed)

for (i in 1:r) {
  num_lower <- 0
  for (j in 1:m) {
    T = sqrt(n) * rnorm(1) / sqrt(sum(rnorm(n - 1)^2))
    if (T <= 1.5) {
      num_lower = num_lower + 1
    }
  }
  proportions[i] <- num_lower / m
}

result = abs(mean(proportions) - pt(1.5, df=n))
result_percentage = round(result * 100, 5)
result_percentage
