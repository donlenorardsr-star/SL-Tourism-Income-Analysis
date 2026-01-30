library(tidyverse)
library(dplyr)
library(readxl)
install.packages("tsibble")
install.packages("patchwork")
install.packages("data.table")
library(tsibble)
library(patchwork)
library(data.table)
library(car)

head(dataset_of_independent_study)
tail(dataset_of_independent_study)

ggplot(dataset_of_independent_study,aes(y=Arrivals)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Boxplot of Arrivals", y = "Number of Arrivals") + 
  theme_classic()
getwd()

ggsave(
  "C:/Users/USER/Downloads/arrivals boxplot.png",
  width = 6,
  height = 4,
  dpi = 300
)

Income <- dataset_of_independent_study$`Income ($/Million)`
arrivals<- dataset_of_independent_study$Arrivals  
exchange_rate <- dataset_of_independent_study$`Exchange rate`
war <- dataset_of_independent_study$`War shock`
economy <- dataset_of_independent_study$`Healthc and economyshock`

model <- lm(log(Income)~log(arrivals)+log(exchange_rate)+war+economy, data = dataset_of_independent_study)
summary(model)
library(car)
vif(model)

par(mfrow = c(2,2))
plot(model)
install.packages("ggfortify")
library(ggfortify)
autoplot(model,which = 1:4,ncol = 2,label.size = 3, colour = "darkred") +
  theme_classic()
ggsave("C:/Users/USER/Downloads/residual plots.png",
       width = 6,
       height = 4,
       dpi = 300)
  
  