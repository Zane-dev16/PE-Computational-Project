library(ggplot2)

master_data <- read.csv("master.csv")

selected_data <- subset(master_data, year == 1986 & age == "25-34 years")

ggplot(data=selected_data, aes(x=suicides.100k.pop, y=sex, color=sex)) +
  labs(title="Suicides per 100k population by sex") +
  geom_boxplot()
