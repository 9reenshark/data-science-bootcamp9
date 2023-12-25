#load library
library(tidyverse)
library(glue)
library(lubridate)

#glue messages
my_name <- "toy"
my_age <- 35

#glue vs paste
glue("Hi! my name is {my_name}. Today I'm {my_age} years old.")
paste0("Hi! my name is ", my_name, ".")

#library tidyverse
#data transformation => dplyr
#1. select
#2. filter
#3. arrange
#4. mutate => create new column
#5. summarise => aggregate function

#ดึง rownames มาเป็น column ใหม่
mtcars <- rownames_to_column(mtcars, "model")

#pipeline %>% |>
select(mtcars, mpg, hp, wt)

m2 <- mtcars %>%
  select(mpg, hp, wt) %>%
  filter(hp > 200)

#ถ้าไม่ใช่ pipe ต้องเขียนยากๆแบบนี้
filter(select(mtcars, mpg, hp, wt), hp > 200)

#filter am==0 ต้อง select am ด้วย
mtcars %>%
  select(model, mpg, hp, wt, am) %>%
  filter(am == 0)

#regular expression in R grep(), grepl()
mtcars %>%
  select(model, mpg, hp, wt, am) %>%
  filter(grepl("^D", model))

#between
mtcars %>%
  select(model, mpg, hp, wt, am) %>%
  filter(hp >= 150 & hp <= 200)

mtcars %>%
  select(model, mpg, hp, wt, am) %>%
  filter(between(hp,150,200))

#arrange => SORT
m3 <- mtcars %>%
  select(model, mpg, hp, wt, am) %>%
  filter(between(hp,100,200)) %>%
  arrange(am, desc(hp))

#write csv file
write_csv(m3, "result.csv")

#mutate => create new column หรือเขียนทับก็ได้
mtcars %>%
  select(model, mpg, hp, wt, am) %>%
  filter(mpg >= 20) %>%
  mutate(model_upper = toupper(model),
         mpg_double = mpg*2,
         mpg_hahaha = mpg_double+10,
         am = if_else(am==0,"auto","manual"))

#summarise => aggregate
m4 <- mtcars %>%
  mutate(am = if_else(am == 0, "auto", "manual")) %>%
  group_by(am) %>%
  summarise(avg_mpg = mean(mpg),
            sum_mpg = sum(mpg),
            min_mpg = min(mpg),
            max_hp  = max(hp),
            n = n(),
            med_mpg = median(mpg),
            var_hp  = var(hp),
            sd_hp   = sd(hp))

write_csv(m4, "datayouask.csv")

#join in R is very easy
left_join(band_members, band_instruments)
left_join(band_members, band_instruments, by = "name")

band_members %>%
  mutate(name_upper = toupper(name)) %>%
  left_join(band_instruments, by = "name")

#random sampling
mtcars %>%
  sample_n(5) %>%
  select(model)

mtcars %>%
  sample_n(5) %>%
  pull(model) #ดึงค่าออกมาเป็น Vector

mtcars %>%
  #sample_frac(0.2) %>%
  summarise(avg_hp = mean(hp))

#summary
##100% => Analytics
##20%  => Statistics

#count
mtcars <- mtcars %>%
  mutate(am = if_else(am==0, "auto", "manual")) 

mtcars %>%
  count(am)
