n <- 150
seed <- 2255
p <- 1:10 / 55

alarm_sig <- 2
shutdown_sig <- 1

set.seed(seed)
no_shutdown_alarm_count <- 0
for (i in 1:n) {
  alarm <- FALSE
  shutdown <- FALSE
  for (j in 1:10) {
    p_gen <- sample(55, 1)
    for (signal in 1:10) {
      p_gen <- p_gen - signal
      if (p_gen <= 0) {
        break
      }
    }
    if (signal == alarm_sig) {
      alarm <- TRUE
    }
    if (signal == shutdown_sig) {
      shutdown <- TRUE
    }
  }
  if (alarm & !shutdown) {
    no_shutdown_alarm_count <- no_shutdown_alarm_count + 1
  }
}
no_shutdown_alarm_count / n

