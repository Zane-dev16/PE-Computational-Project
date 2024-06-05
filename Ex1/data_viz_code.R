library(ggplot2)

continents = c("Europe", "Americas")
labeled_countries = c("Lithuania", "Iceland", "United States", "Saint Lucia")

gdp_hci_data <- read.csv("Paises_PIB_ICH.csv")
selected_data = subset(gdp_hci_data, Continent %in% continents)
labeled_countries_data = subset(selected_data, Country %in% labeled_countries)

ggplot(selected_data) +
  labs(title="GDP per Capita vs. HCI", x="GDP per capita adjusted for the cost of living", y="Human Capital Index") +
  geom_point(size = 3, alpha=0.7, aes(GDP, HCI, color = Continent)) +
  geom_text(data = labeled_countries_data, aes(GDP, HCI, label = Country), vjust = 2.7) +
  geom_segment(data = labeled_countries_data, aes(x = GDP, y = HCI - 0.02, xend = GDP, yend = HCI),  
               arrow = arrow(length = unit(0.3, "cm")), color = "black") +
  scale_x_log10()
