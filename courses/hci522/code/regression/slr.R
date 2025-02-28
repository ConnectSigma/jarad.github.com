## ---- eval=FALSE---------------------------------------------------------------------------
## install.packages("Sleuth3")


## ------------------------------------------------------------------------------------------
library("tidyverse")
library("Sleuth3")

options(scipen = 100) # eliminate scientific notation


## ------------------------------------------------------------------------------------------
head(case0701)


## ------------------------------------------------------------------------------------------
summary(case0701)


## ------------------------------------------------------------------------------------------
ggplot(case0701, aes(x = Velocity, y = Distance)) + 
  geom_point()


## ------------------------------------------------------------------------------------------
ggplot(case0701, aes(x = Velocity, y = Distance)) + 
  geom_point() + 
  stat_smooth(method = "lm", se = TRUE)


## ------------------------------------------------------------------------------------------
m <- lm(Distance ~ Velocity, data = case0701)


## ------------------------------------------------------------------------------------------
summary(m)


## ------------------------------------------------------------------------------------------
coef(m)


## ------------------------------------------------------------------------------------------
confint(m)


## ------------------------------------------------------------------------------------------
summary(m)$sigma


## ------------------------------------------------------------------------------------------
summary(m)$r.squared


## ------------------------------------------------------------------------------------------
cor(case0701$Velocity, case0701$Distance)

