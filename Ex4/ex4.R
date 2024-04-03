n <- 150
seed <- 2255
p <- 1:10 / 55

alarm_sig <- 2
shutdown_sig <- 1

set.seed(seed)
no_shutdown_alarm_count <- 0
for (i in 1:n) {
  signals <- sample(10, 9, replace = TRUE, prob = p)
  alarm <- any(signals == alarm_sig) 
  shutdown <- any(signals == shutdown_sig) 
  if (!alarm & !shutdown) {
    no_shutdown_alarm_count <- no_shutdown_alarm_count + 1
  }
}
no_shutdown_alarm_count / n

