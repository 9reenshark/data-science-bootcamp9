#using SQL in R
install.packages("sqldf")
library(sqldf)

sqldf("select mpg, hp from mtcars
      where hp >= 200")

sqldf("select avg(hp), max(hp),
      count(*) from mtcars")
