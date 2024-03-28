library(readr)
library(ggplot2)

continents = c("Europe", "Americas")
labeled_countries = c("Lithuania", "Iceland", "United States", "Saint Lucia")

gdp_hci_data <- read_csv("Paises_PIB_ICH.csv")
data_subset = subset(gdp_hci_data, Continent %in% continents)
labeled_countries_data = subset(data_subset, Country %in% labeled_countries)

ggplot(data_subset) +
  geom_point(size = 3, alpha=0.7, aes(GDP, HCI, color = Continent)) +
  geom_text(data = labeled_countries_data, aes(GDP, HCI, label = Country), vjust = 2.7) +
  geom_segment(data = labeled_countries_data, aes(x = GDP, y = HCI - 0.02, xend = GDP, yend = HCI),  # Adding leader lines
               arrow = arrow(length = unit(0.3, "cm")), color = "black")
