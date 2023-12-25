library(tidyverse)
library(ggthemes)

## library(ggplot2)   gg = grammar of graphics,  2 = 2D

## how to choose visualization
## 1. number of variables
## 2. data type


## basic syntax

ggplot(data = mtcars, 
       mapping = aes(x = mpg)) +  # put column from dataframe to axis
  geom_histogram(bins=8)


# ordinal factor can be ordered
## create ordinal factor
## factor: nominal vs ordinal

temp <- c("high", "medium", "low", "low")
temp2 <- factor(temp, levels = c("low", "medium", "high"),
                ordered = T)

# one variable + continuous (number)
ggplot(diamonds,
       aes(x=price)) +
  geom_histogram()

ggplot(diamonds,
       aes(x=price)) +
  geom_density()

## DRY: Do not Repeat Yourself
base <- ggplot(diamonds, aes(x=price))
p1 <- base + geom_histogram()
p2 <- base + geom_density()

## Boxplot
ggplot(diamonds, aes(x=price)) +
  geom_boxplot()


# one variable + discrete(factor)
ggplot(diamonds, aes(cut)) +
  geom_bar()  ## for raw data

diamonds %>%
  count(cut) %>%
  ggplot(data = ., mapping=aes(x=cut, y=n)) +
  geom_col()   ## geom_col for aggregate data

# two variables: number x number
## scatter plot
### setting vs mapping
### sample for representation bigger data
set.seed(42) # fix sample_n
ggplot(sample_n(diamonds, 3000),
       #mapping: columns map to axis 
       mapping = aes(x=carat, y=price, color=cut, shape=cut)) +
    #setting 
    geom_point(alpha=0.25, size=3)  +
    theme_minimal() +
    labs(
      title="My first scatter plot",
      subtitle="Cool ggplot2",
      caption="Data: diamonds in Africa",
      y="Price in USD",
      x="Carat Diamonds"
    )

# template theme
set.seed(42) # fix sample_n
ggplot(sample_n(diamonds, 3000),
       #mapping: columns map to axis 
       mapping = aes(x=carat, y=price, color=cut, shape=cut)) +
  #setting 
  geom_point(alpha=0.25, size=3)  +
  labs(
    title="My first scatter plot",
    subtitle="Cool ggplot2",
    caption="Data: diamonds in Africa",
    y="Price in USD",
    x="Carat Diamonds"
  ) +
  theme_economist()

## shortcut qplot()
## quick plot

qplot(x = carat, data = diamonds, geom = "density")
qplot(x = carat, data = diamonds, geom = "histogram")
qplot(x = cut, data = diamonds, geom = "bar")

## layers in ggplot2
base <- ggplot(diamonds %>% 
                 sample_n(1000) %>%
                 filter(carat <= 2.8),
               aes(x=carat, y=price))
p3 <- base + 
  theme_minimal() +
  geom_point(alpha=0.2, color="#55effa") +
  geom_smooth(method="loess", se=T, fill="gold", color="red") +
  geom_rug()

## Bar plot
ggplot(diamonds, aes(cut, fill=clarity)) +
  geom_bar(color="black", position="fill") +
  theme_minimal()

# How to change color?
ggplot(diamonds, aes(cut, fill=cut)) +
  geom_bar() +
  theme_minimal() +
  scale_fill_manual(values = c("red", "green", "blue", "gold", "black"))

ggplot(diamonds, aes(cut, fill=cut)) +
  geom_bar() +
  theme_minimal() +
  scale_fill_brewer(palette = "Accent")

## heat map color scale
ggplot(diamonds %>%
         sample_frac(0.1), aes(carat, price, color=price)) +
  geom_point(alpha=0.3) +
  theme_minimal() +
  scale_color_gradient(low = "gold", high = "purple")

## multiple sub-plots
ggplot(diamonds %>%
         sample_frac(0.2), aes(carat,price)) +
  geom_point(alpha=0.2) +
  geom_smooth() +
  theme_minimal() +
  facet_grid(~cut)

## multiple dataframes
m1 <- mtcars %>% filter(mpg > 30)
m2 <- mtcars %>% filter(mpg <= 20)

ggplot() + 
  theme_minimal() +
  geom_point(data=m1, aes(wt, mpg), color="blue") +
  geom_point(data=m2, aes(wt, mpg), color="red", size=3)  

## bin2D
ggplot(diamonds, aes(carat, price)) +
  geom_bin_2d(bins=10)

## HW
## 1. Create Rmarkdown
## 2. Create 5 charts
## data = mpg

library(patchwork)

p1 <- qplot(hwy, data = mpg, geom = "density")
p2 <- qplot(cty, data = mpg, geom = "histogram")
p3 <- qplot(cty, hwy, data = mpg, geom = "point")
p4 <- qplot(cty, hwy, data = mpg, geom = "smooth")

p1+p2+p3+p4

p1 + p2 + p3 / p4
