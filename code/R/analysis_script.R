
library(tidyverse)

source("code/scripts/utility_functions.R")

#reading csvfile

data <- read_csv("data/raw/iris.csv")
cleaned_data <- preprocess_data(data)


ggplot(cleaned_data, aes(x = sepal.length, y = sepal.width, color = variety)) +
  geom_point() +
  labs(title = "Scatter Plot of Sepal Length vs. Sepal Width (Filtered)",
       x = "Sepal Length",
       y = "Sepal Width",
       color = "Species") +
  theme_minimal()



ggsave("results/figures/good_example_plot.png", plot = last_plot(), device = "png")
