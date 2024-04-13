n <- 150
seed <- 2255
p <- 1:10 / 55

alarm_sig <- 2
shutdown_sig <- 1

set.seed(seed)
no_shutdown_count <- 0
no_shutdown_alarm_count <- 0
for (i in 1:n) {
  signals = sample(1:10, 9, replace = TRUE, prob = p)
  alarm <- any(signals == 2)
  shutdown <- any(signals == 1)
  if (alarm & !shutdown) {
    no_shutdown_alarm_count <- no_shutdown_alarm_count + 1
  }
  if (!shutdown) {
    no_shutdown_count <- no_shutdown_count + 1
  }
}
proportion <- no_shutdown_alarm_count / no_shutdown_count
proportion
