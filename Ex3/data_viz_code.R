library(readxl)
library(ggplot2)

countries <- c("Italy", "Lithuania", "IEA Total")

electricity_data <- read_xlsx("electricity.xlsx")
selected_data <- subset(electricity_data, PRODUCT == "Renewables" & YEAR >= 2015 & COUNTRY %in% countries)
selected_data$share_percentage <- as.numeric(selected_data$share) * 100
selected_data$DATE <- as.Date(paste(selected_data$YEAR, selected_data$MONTH, "01", sep = "-"))

ggplot() +
  labs(x = "Date", y = "Renewables (%)", title = "Monthly Evolution of Renewable Energy Proportion") +
  geom_line(data=selected_data, aes(DATE, share_percentage, color=COUNTRY)) +
  ylim(0, 100)
