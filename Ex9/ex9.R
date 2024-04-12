seed <- 2822
k <- 3.234
m <- 5000
n <- 100
lambda0 <- 2.9
lambda1 <- 3.15

set.seed(2822)

count_error1 <- 0
count_error2 <- 0
for (i in 1:m) {
  sample0 <- rpois(n, lambda0)
  sample1 <- rpois(n, lambda1)
  
  mean0 <- mean(sample0)
  mean1 <- mean(sample1)
  
  if (mean0 > k) {
    count_error1 <- count_error1 + 1
  }
  if (mean1 <= k) {
    count_error2 <- count_error2 + 1
  }
}
error1_proba <- count_error1 / m
error2_proba <- count_error2 / m

error2_proba / error1_proba
