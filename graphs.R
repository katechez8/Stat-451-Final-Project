## Import statements 
library(dplyr)
library(ggplot2)

## Read in SOC data cleaned 
soc_data <- read_csv(file = "cleaned_data.csv")



## home price by region 
FSLPR_REGION <- ggplot(data = soc_data, aes(y = FSLPR, 
                                            x = as.factor(DIV), 
                                            color = as.factor(DIV))) + 
  geom_boxplot() +
  labs(y = "Sale Price of Home",
       x = "Region of Home",
       color = "Region of Home") +
  scale_color_manual(values = c(1:9), labels = c("New England",
                                                 "Middle Atlantic",
                                                 "East North Central",
                                                 "West North Central",
                                                 "South Atlantic",
                                                 "East South Central",
                                                 "West South Central",
                                                 "Mountain",
                                                 "Pacific"))

FSLPR_REGION
